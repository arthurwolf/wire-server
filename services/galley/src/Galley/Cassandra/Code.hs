-- This file is part of the Wire Server implementation.
--
-- Copyright (C) 2021 Wire Swiss GmbH <opensource@wire.com>
--
-- This program is free software: you can redistribute it and/or modify it under
-- the terms of the GNU Affero General Public License as published by the Free
-- Software Foundation, either version 3 of the License, or (at your option) any
-- later version.
--
-- This program is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
-- details.
--
-- You should have received a copy of the GNU Affero General Public License along
-- with this program. If not, see <https://www.gnu.org/licenses/>.

module Galley.Cassandra.Code
  ( interpretCodeStoreToCassandra,
  )
where

import Brig.Types.Code
import Cassandra
import Galley.Cassandra.Store
import qualified Galley.Data.Queries as Cql
import Galley.Data.Types
import Galley.Effects.CodeStore (CodeStore (..))
import Imports
import Polysemy
import qualified Polysemy.Reader as P

interpretCodeStoreToCassandra ::
  Members '[Embed IO, P.Reader ClientState] r =>
  Sem (CodeStore ': r) a ->
  Sem r a
interpretCodeStoreToCassandra = interpret $ \case
  GetCode k s -> embedClient $ lookupCode k s
  CreateCode code -> embedClient $ insertCode code
  DeleteCode k s -> embedClient $ deleteCode k s

-- | Insert a conversation code
insertCode :: Code -> Client ()
insertCode c = do
  let k = codeKey c
  let v = codeValue c
  let cnv = codeConversation c
  let t = round (codeTTL c)
  let s = codeScope c
  retry x5 (write Cql.insertCode (params Quorum (k, v, cnv, s, t)))

-- | Lookup a conversation by code.
lookupCode :: Key -> Scope -> Client (Maybe Code)
lookupCode k s = fmap (toCode k s) <$> retry x1 (query1 Cql.lookupCode (params Quorum (k, s)))

-- | Delete a code associated with the given conversation key
deleteCode :: Key -> Scope -> Client ()
deleteCode k s = retry x5 $ write Cql.deleteCode (params Quorum (k, s))
