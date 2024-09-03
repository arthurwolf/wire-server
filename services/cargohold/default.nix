# WARNING: GENERATED FILE, DO NOT EDIT.
# This file is generated by running hack/bin/generate-local-nix-packages.sh and
# must be regenerated whenever local packages are added or removed, or
# dependencies are added or removed.
{ mkDerivation
, aeson
, amazonka
, amazonka-s3
, attoparsec
, auto-update
, base
, base64-bytestring
, bilge
, bytestring
, bytestring-conversion
, cargohold-types
, case-insensitive
, conduit
, conduit-extra
, containers
, crypton
, data-default
, errors
, exceptions
, extended
, federator
, gitignoreSource
, HsOpenSSL
, http-api-data
, http-client
, http-client-openssl
, http-client-tls
, http-media
, http-types
, http2-manager
, imports
, kan-extensions
, lens
, lib
, metrics-core
, metrics-wai
, mime
, mmorph
, mtl
, optparse-applicative
, prometheus-client
, resourcet
, retry
, servant
, servant-client
, servant-server
, tagged
, tasty
, tasty-ant-xml
, tasty-hunit
, text
, time
, tinylog
, transformers
, transitive-anns
, types-common
, types-common-aws
, unliftio
, unordered-containers
, uri-bytestring
, uuid
, wai
, wai-extra
, wai-utilities
, wire-api
, wire-api-federation
, yaml
}:
mkDerivation {
  pname = "cargohold";
  version = "1.5.0";
  src = gitignoreSource ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson
    amazonka
    amazonka-s3
    attoparsec
    auto-update
    base
    base64-bytestring
    bilge
    bytestring
    bytestring-conversion
    cargohold-types
    case-insensitive
    conduit
    conduit-extra
    containers
    crypton
    errors
    exceptions
    extended
    HsOpenSSL
    http-client
    http-client-openssl
    http-types
    http2-manager
    imports
    kan-extensions
    lens
    metrics-core
    metrics-wai
    mime
    prometheus-client
    resourcet
    retry
    servant
    servant-client
    servant-server
    text
    time
    tinylog
    transformers
    transitive-anns
    types-common
    types-common-aws
    unliftio
    unordered-containers
    uri-bytestring
    uuid
    wai
    wai-extra
    wai-utilities
    wire-api
    wire-api-federation
    yaml
  ];
  executableHaskellDepends = [
    aeson
    base
    bilge
    bytestring
    bytestring-conversion
    cargohold-types
    containers
    data-default
    federator
    HsOpenSSL
    http-api-data
    http-client
    http-client-tls
    http-media
    http-types
    imports
    kan-extensions
    lens
    mmorph
    mtl
    optparse-applicative
    servant-client
    tagged
    tasty
    tasty-ant-xml
    tasty-hunit
    text
    types-common
    uuid
    wai-utilities
    wire-api
    wire-api-federation
    yaml
  ];
  description = "Asset Storage API";
  license = lib.licenses.agpl3Only;
}
