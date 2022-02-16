{-# LANGUAGE OverloadedLists #-}

-- This file is part of the Wire Server implementation.
--
-- Copyright (C) 2022 Wire Swiss GmbH <opensource@wire.com>
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

module Test.Wire.API.Golden.Generated.DeleteUser_user where

import Data.Misc (PlainTextPassword (PlainTextPassword))
import Imports (Maybe (Just, Nothing))
import Wire.API.User (DeleteUser (..))

testObject_DeleteUser_user_1 :: DeleteUser
testObject_DeleteUser_user_1 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              ",{\10918\DC3+N\990428vR@\FS9!\32962\1095967\132743\1031785r\50784\165924\EOTI\"\DC3\5340B\11369\167798c`|\\y\n\ETB\DC3\DEL\SO\49188<\166120/\1083390<\NUL\NULKb\47635|}gR\1104392{Co\EOT\rs\f\n*\1092907Z\36101\46995\t'\ENQ*\1008372#\SO\1081986\&9\97636\1026187}Y\1038579\1003574E\96986\1054955\157626R\157990\1077770\1103915\&2\35474\USPz\989153\62209\100578dJ\28235p$\181726\147587\ACKCK>e\1025093.V\SYNZ\1012000$\991977_\\32\SO\1024367<\1085422\&9\180308\9418\DLE\45088\43788\&0\SOHl\580%\93829R\32321P\1103673\49967\1034072s\1051699\148059\DEL#v'\31252\b.O4+q\1089294\SOH4\\\44923\1057096:\19335\1108450h\1058358\149044j\1069371:\170426S\SO\22009&?|k\f\1022867\110853\1059952?B\63878,\ENQ\60405`\n\28583$A!\DEL\1106269\67412\1015597\1084387hP\995722g.\SUBT%\15767\ENQ\DEL \1049040\1107594\SYN\135063[\b3m\NAKx\1038301R\38226\1092951;o\NAK\GS1/\DC3'\USkJ\aj\EOT\1052888p\EMs0N%\USE\1003193g.\1049874\1070891\SYN\1074653Nh\DC3z@STxV\b\15058\ESC\1081717nn\1084652Jo\166132\1023132\1040173\183342N6W\1103253{O%\aB\1090554\DC4\NUL\SYNU:=Ju6x+c\SUB\990611\SOHq4=\132456\1041804\996777\60658\191155Q\CAN\ETXJPZ\20619\ENQ,yhT\986649O\1014584\97898 aa\1102985]\FSby\43830\RS\SYN\1074854\1091939\&3+fF\178234\EM/\aro.A\1058743\1098278\RS\SOt~\28232\&1\1062085\&6\"\ETX :\DC3\1058912\NAK]\19200/3\180229Eh\986202[^\r\1051464>\39271\EOT\50522:)\DC2(\SI3\ETB &I\EM1\1080871\1064005\1110201}n\1090723\1093617>\DC3I\DLE\DC2T\27705\910\6692OC\\.cO\9674\150822L)`3\149695\54201\13587\&7a\44602\&6IZP\f=xb:{\DC4V\1100330\FS\ETB-\ENQ[\26182#~u\EOT\1063480\SI\SUBy\DLE\43293a@V\DELt\10635\SO\25539H7\1091349\83252\1016899._\136128\EOT\1000253\&2R\fM^\b\96127S\153652\b\SUB)'\SYN\FST\ESC>\EOT\r\DEL!\44242F \166444{I\GSu~\1060284o\1023532\CAN\FSm\1093003\EM\1045923d\1087374\993670\10888p\DC3\NAK#\DLE2\156504H\48798\171349R\1012790\SO\DLE&\r\51683V\54264\DC1\133076bv^\SYN\17875[\FSR\72263\&2)+<U~FX\v2\FSA\a\SIV\STX\1073410\ESCNK\DC4$oT\DEL~l\r\\HH#\92276.>5'|ra=z\18561\1041523It%\SOU\1030747\1899\1023446\n{\DC4\ACK&\DLE\15439\DEL=q\1063403\151712H\69696AcdG\DC3$u\1016581\18473'\fb\ENQ\29426I\1082097#L.\tU\1011873\138795`?0\a\991182\b?\1089514yUi\tF\1050163\1056400\1095998\186269\ESC\166099S\983951ofMG\1031514n\CAN\29054{h-\1097025 Y\\\DC1k5LV/\9229a1\172378hp/.\ENQ=\34753\DEL\DC1#\EM!\1110491\FS4rle\1092960\13860t+DR%bt\33229\a#:\54127<~c\vG\b\1076777\&7\SI\1052277>\SUBO\1036320\1014954\1051971Q2MvZh\1087761e \1021372\1070638@r?\1022986<!\149613=\1066870-\1112324\ayY\ENQF2\1111817\DEL\139338u\1034170\40798\996386._\1069687\CANm\DEL.2[\t\1076294l\1108811#^\143477\&3\1009705\1104884p^tt\997863\20975Mt*r]\43140\993586^00\34974C1\DC2d\174353\ENQaG1\GSd\1034891\1061519\SOHYz\DC2Z\74780\47701V\1058832{Cy\178077\ETB\1069367\ri\USO+Eof\178148.\1046672\DC2{<\USv\DLE\DC2\67872\1052372B\77899\149330u\1091297\DC36\1053141!Ew4\GSTW`\14834\1056060\163266F\DLEnYj\FSW\DC3Gn \fd\1046563t\SUB\STX\1037411\&0A\NUL\1092727\159510\re3Z+e\GS\STX\132430\1056627'q4o\1011062A\"\ACK\SUBL\DC4{\ACK\a\DC1\1078014r9|fG\RS\b\136601\b\vQ{\ETX_=n\1048107v!Zp\ESCPJ\47776l\99198i-\1005416\990468n\FSt\1099638U\65539"
          )
    }

testObject_DeleteUser_user_2 :: DeleteUser
testObject_DeleteUser_user_2 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "8\1090278=\1074916\190655?\ENQ\FSbf\CANMr\EMhFbWGm`\167662\DC4D3\1082291S\ETX1'=+\1038957\STX`\n<\171977\1052614\SUB\1015757W\1071197\1022412\SYN.E`~N#Le\1095547\DEL$,E#@\DLE(Q<\183605\1057128\42630\36029\189234\15498X51ZW\1101236d\1017498\163920v\36488\EM\1003666{zf\1047795r\155296*\"\48710HCbj&\1027627\170650\SUB^8&\ESC\nGG\SYN@\1026429\95311UqM5\r\36842\GS\67648\r\41567\15342$V84)\ESC\1081302Z\SOH-g1\\1C(\bb\SOd\r,A\1101371,eR\DELO\42174\&26$\60435\1099278P\1094038\1079682Vq\ENQ(\n\SI\ACKa\993359\b\US\\Ob\1103659\1086277oV:\ENQyq^\997478N\1076932\60707X\63189\DEL\SO\165356,$/;\RSp#\129125-06\RS4=0h\ETB\GS0\71882\&1\n\154945\SO\t\121350(\DEL\120524\984875\&6kpaL\ETXB0^\135587\30474\97102\SYN\DC3\1013155\1018971\DLE\1054516\GS\6453\SIVN\GS9z\51637\184989I~\DC1\v\DEL\48452\ENQcCO*c0'\n\1049676rV\1005392\a\SUBr8\RS*W\1030364xx\99687\ETXWuI%\177069So@@\ESC\FS\70167< 8\\\1089023\&1\"1?\b\DC4\1086390\142956\ACK\DC3\DC1gz\25718\a>\30038\SOb\ETBD\SOHtz[\171743\1004458\151595\1105567\1049173>\50845\FSdIw\ESCVNNHC\180827\158161\1022859\n\FS\ACKSg\vYl4O\SOH/lh\SO\1008051\187397s}\1094202cBj.6(}I\v\b\1003162\DC2U+*\1094516\74868kN\SUB\bc\DC4u6y/\1103688\SUB5fb@|\FSB$F\tB\ETB\vKT\1024335\nK\n[)I\1088045\1065263\3490N:Q3N\14782\&5\1092440\1042791\12796g\RS0P\1092304\FSeJI\137378\1003363 h\FS\158388\1060823\DC1|:3L<!+\FS\188743\&2B~JS\DLE*\UShwP\152610N$\83016\4025\1016369lJ\95794\GS\1005095\r\SOHq\EOT5??W\1004210z\159740\SOH\18971\1082952E'r\STX\RS\DC4\f\156807\1037219GZpzCu</,\1084221\16690\DC4\NAK\a>=\118968\ACK`t?\SO[\DC4g~\1006662vDt\SUB\27163:\EM\1065374\148984Kb&\DC4\ACK\FSW]K\\4\NULbh\1104358|\NULD\986616b?\SO\CAN\vs\131943%>/\STX[d\987777M\1033221bN6.\1109554m\US\153271|?yp="
          )
    }

testObject_DeleteUser_user_3 :: DeleteUser
testObject_DeleteUser_user_3 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "x\DC1M\EOT*J\316\142802otr\SO=\1040043p\EOT9\CANl,KZV\1067142t\DLE\1012713@X\NAK1mO\DC4\n\31224\EMh~r\529|\99161Rw\EMZ(ox2_r\1049820\f.\1079432\1049985/-m\995255\983683\SYNL\EM\1011184\ACK\1028373A\143399\&8H\1004049J\SYNN.\NAKk$\179892\49480uX \1036176\DC1'\1037726?a\SO8\tHWh=+~\SUB\SOH>\156021(\FS\b\144391%&\ETX:)\121442\n\163728\US8"
          )
    }

testObject_DeleteUser_user_4 :: DeleteUser
testObject_DeleteUser_user_4 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "\28257>\\\EOT\ETB\t\SUBG\SOu\SIRc\SO\1032332\1069664`fx\b\\WS%u\184695\ESCq\SYN\ETB{\1043200u\132227\&2J+\991190wPx^,:@\DC2\1111400; @qtte/\SUB\12658xK-PebR3Z@xm\54615S\1039691\1040385\&15\r\131131\27782\&4|\68779~\NAK\SICdK\72290w\ETXEk\1024874\69726\1021311\DLECe<\a3tJ\")\1023039DFS\ESCVz\DEL\26766RrC\24731>M?&98\t\DLE/sd\44269\t\1113861\1052288T\1082236@$\b(\DC1\1063735nQ\1049015_s\DLE\1095686\&1,\a%cQs\t\vjv\149281!\SOH)\989176ySU5\SUBZ\DC4\51597\&6C\t\1016478\NUL\SUB\143627,:\bn<\23254__%\146727\v~\1003989\EMp\\L-\168147\1042687P,\34232\SI6\r6g\DC1\139418'M\1066187\DLE!\1113788\41035\163185\STXu\SUB\STX1\45563\DC1g\DC1C\128936X\"\DLE\167200\1063332e7\4661\r\16176&ID\992936YiI\172121}X1)\SOH>\1105083\NAKO;-\23857,L\aH\US(46\1044861=\ACKm<\42689{\b\43552\FSj\48581\RSRO\EM|7\DC1z\1032807\1022631MPuVS\1075970Vj\DELHL \99898^\191138\avJV\1009008\f6\ETXq\135703\11910?\NAK\1014331a\SI\1090088C: A\1109438\&7PC\DC2\1029802|\US\152550#B\EM\SOcx\1012392CDbe\SYN\US{\RS\SOH&q\EOTo\SOH\DC4F2\190380!\GS2yw\1097641\\)\tI\1003495(\SYN gC\996904O\t@_8\DC2\1035771\187633C-\SOH1|\1076623\53026\189624*\78577\DLE\1043155u\67731\CAN\15755\100476{r\SUB/O\167439\20396w*\48236s\25454~e\174154\DC1\SUBZ\DC1\tLq\19823\1041916V\DC2xp$C9\DC3o\121009\25470Re@ay\1025116{I|fB\r\DLE\ETXwp.\1088198\&1\ng\43494O\EOT AgX;\292\176868\987367\179002\&4\"\1046707-DCk]>\US\991342\998426=&\ENQ\38601I\rj*h~5}UO\1064900]A\167783\53106v`bG\b\182180'S=\1042350\bs\16914j\162395!%\180962\29997\&0\177524F\1017620\ENQ\127319H\34913\b\163469z\SI\1095125\70736EF\1010473Iwi\47514\US~oyMX\1005192\DLE\172447^`j\120793\65733/\168644\984564+OEOOR\133982\157536\&9\152283\&5\SUBv\61619\37860Hk|\396TPlgJ9\SUB\97181P\\b\168136\US\1107942N4\6767C]g\DC4\1054708\&6gcrJu\1079214z\SYN_\RS[\73457\&8i*D0\DC1g_\83327\&8H\1035462J\FS\1001497DK`\1035153i\1060\&0\14549Ee\ETXI\EOTh\986134\DLED/\1033010BuBXU_\95252\1049573\ENQ3q\SO\SOC/\66673\1004193\DC3j\1047533'o\158072\169750\127292\29164\FSd65\159707\&5@\1073064\NAKY\168362\a\1049190^D\CANBqb\152736qiAn@\SUB\1026419$\t(\"\ENQ\\ )/Ox\v\1040720^@<\152925\DLE\166372Tf\989295B\18798\172322L[\EOT\39991\ESCp\t2wk\28126<\1006625\1072395\18465\\\tIIS1\EM? x\1010946n\r/VH\11847-ss\DC4hJt^\STX$\174465ZW\1042455\94980\NAK\a\141027\ETX)\DC2&5&\175072iR\142955\\\DC3L\166552KQ].\1059101\US\26940\ENQ\156315Xs\14425<\CAN"
          )
    }

testObject_DeleteUser_user_5 :: DeleteUser
testObject_DeleteUser_user_5 = DeleteUser {deleteUserPassword = Nothing}

testObject_DeleteUser_user_6 :: DeleteUser
testObject_DeleteUser_user_6 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "J\164818\v\FS\58220\SOH\184812\v\133910\187607\SI\62253Xs`\132379\"\153527>\SO\188116\STX=\83173\FS\DC2\ESC3=>$o ^\30925w#Z\t\1095929D\155852\1002231'\US\27008\995756\51434$\1078087)X8\r;\DC3\12910\CAN1/\"\1067520\SYNf\US&g\120000\STX92\FS~a|@b$\"\t\3923O:iL'\131552\21103,y,:@\51458\ETXZ:p\157887un\US\rWL{TE\37942\160731\1091064\59155v\b4=\1102393\CAN\ACK7Qt5<DJUNQ\138145dd\SOHA\111067~6\DC2Rz\EOT!7\FSx&\1092308e\r%\999993\1102341\165249\ETB\STXt\136102rn\74911\r:\1095898y*S\1037564\1024288\170909\GS\25359d\1001253\&8SI\tm\21601Q\EM\1023114\1007470\176402x\1077859\1046042\SUBnL\b\128081\&49[\1045801\44457\CANc([qL\ACKU\1027137\1111026fv\1011041\\\RS\1043990\1006349\&5\100823+\1104502\1105534Y]\FSH\SOH~G80\1027566h~s[\120163\1112901\153013\SIE\1065683\SUB\171177\1032788\1811\ETXNW\1043072\&9\DLE\177213V\SOH^\DC2on=\ETX\1006906X[-\au\65500\1028583\aa\1103959\1039608\1100130WQ ;\1013704n$*]\STXm*|\RS\95577\191396\167656ykB\175303Z,\NAKp^~\1031770\1063294V\SUB\t\ESCQ\1001863I\NAK\1041046MIbFc\ENQ|\127392\\M)\"\EMZJ\f\1020807\&9vY\DC4aB=\1031118\3594h\DLEo%\ETXXfN9\129338 \NUL\1003529^\1015741HD#A\SI\13817\1019366\48377~e\149324\1053548\SO\100319R\162095C3.\1011210\ENQj\EM\DC4\45317(\147405\ENQK[(*\SYN\1010230\STXq\181698wZ\1011838kNR'f\26860\111094y\b\59613_\aU~%\NAKI\1018177CF\SUBS\26988C)^\1048431\STX\ESC(\189448\ETX+\1028639*+w\"p\NAK\ETB\164419N\60350\EM\SYN\9540$\DC2\140249\&6qyQwy\988540\DC4v\b@-61\26835?[\ETBm/Y\GS\48071\152973,\EMIP@Q\ae|\SI\v\8677A\178997\&9\1037622Wo\5542\DC1w\DLEg\1090870m`\a\DEL)\110812BO\162926\148447\133333{,bq\32743Hk3\ACK0 Pom)g\148805q($A;\32514\ETB\RS\138516]<|e\1108924$\1063332\36959\v;=;\996839ho\DC4,\CAN}\39466&X\14843>^\17474\DC2\83216>\28812]xX\SOH]\97240,\1032106W\v\1031401\175059\DC3\SI\ryV*S\US0n\ETBa\27904\190942m\1016789$\1072622k\SO2\SOH\168765>\37214\NUL4_KFpk\142656\nW\SUB2\39922\172793-v:<[\24199x\1061848\996738\SI\DC4z\SI\v\29363wG\SOH\GSK,U+'5#};o\13440\10224B\SUBG'\187069W\1104874$I2>\1106768\160795\135857O\1050864\991910\57347\a\CAN\ETX\48757O9/U\47600t\1004486jQci#\DEL\1086435i\1017512\nirLiE>W\1091429=ri![\t\SOdMq\135635Eg\a6\989151\ENQ\6204W\184988~\27197\SYN[\131476\NAK/&A\25479\FSo\tSh}j\98237u]\GS\\%\n\1066402\1001053\97379\fYZ$1'mf\54620J\1023186v\b\1063392D\65349]~\SO9\ESC0\US!G\DC4+\CANn\11315<nI6\97411\a>\1082274>Ap_\95735\59843Zq_v Y\1067992\ENQx|\SI\151387\1091488`G\ACKnA<&K|?z\169630\EOT\4561Gs\1059564\179816\DC45wY\b0^\1044201\NAK\188342f\48790\ETB\ETX^$\SIR\23704|G\DLE*/\1041058%G\983974IEN\1002073YB\USL=\CAN9\1056515\EMk8K9_(IGM\DLE\25558\1088619{r\EOT\152795\185010\997406\&8\EOT\ETX'X\133574\RS\DC1&/:\ft\FS\r\SI\1009729$\6436Ux\DLEB\175019\13871@\1036594/#Y\123184N\191398!\190307\&6\f\SI!_#P*C?\1101946o%T\ENQ\EM\1055906\1022305\&4%.\ETX(66Pl\49159\EOTg\SOb\ESC\1071261;\997978{\FS\RSxz1@KQzs\a36;,\40583fi\45696Z9\99723\NUL"
          )
    }

testObject_DeleteUser_user_7 :: DeleteUser
testObject_DeleteUser_user_7 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "-Y#\ESC\8768\100736\61306\DC1\SYN-\1082323\DEL\ESCF\1088616\DEL2B\DLE\175192S\1017727oHa!\998363 gO\132282\v*{\39036*\144312'\DC1V[wm\RSvcAc\ETBj\a7\999516\1065935\CANr,d/\\8\1005307\&1C\132790\EOT\ACK\194565)\SO)O[f\1057692\&0&r3\178360a\1032155:|diTt5\1108760~\58247[\aO[{\ESCng\1030208\1086820\29646^Z\STX!Beh\1089966p?\a])\US\SUBu\986388\NAK\1009827\1079660v\ETB\1068559a\ACKN_{$\186771\49376F\65033p\191328A\\\1104167F;)e1E<\997253e\1034433K\1042458\996650x\n\v\41580ZS9\CAN\1038191%\1093684\DELi }\169917VJF<\ESC\178204\1097154\&3Y?$|W\1078228>\49906\990375\1065456b\vT\1102903\&40\1084741\10788QA\SOHE\v/\NAK\1039693\156492\USc\156071\ESC-\12890>`\SI+r\92253&\SYNl\aMZU);+\t\1005643\158045<\1077172<e\165926\123618_eS\ETXZJ\1029699TfO\158901\70287`D\984285\1112695W{nQ\121302\EOT\1062309\v_aZGK\SO},0s\DEL@6^\n\nf8\DC1\\\DLEB{~3p^2Ln\169406\20268p\ETXq\63045\44336\\O>y]Q\1019706J\SOhk\8555\SUB\n\DLE\996513\37991\&9\RS0~]\201D\ESCP<\1055077\DEL\135536\EMn\ETB\997253zR\v\1064754.-\US\1045483\ENQ/\SUB\119962\DC3\1008898[\9549+\1080191OS\989349\EM\n\DC4\ETB\123146T*\SYN\1072104\n\15960Yr\DEL\SUB_\FS\RSG{]Rg\24269\152334\32142E\SUB\DLE\996289\1028922\1014150|'\DEL\STX\ENQ-X0\FSqTS),\135645\27548\CAN.2\1016261\986530\195085Rz\DLEtV{\11980\32971J\1007370d_OgT\167641>C(\78522\135941\181939Xr5\aK\SOH\94944\73955,\46440\1110129T\DC4A\1002880\&1\1005136\b\1078353\CAN\188916\1050246U\STX#cz.\SUB\14258\146463\v\1016088\40212\DC2Oc\3604iO\a3B\1052387\1082309\164508\&9\1036725r\SUB<r:pJ$\FS\DC4\1030749Cq\ESC\63577W*`;\v\US\159533\&2\187165\&4\SI2\SIQp1\as)\DC4aQ\SI\r\385\tt\DC1\US\148337R\1089761i\1112506\&6)YhLo\DELpGP\1059100\58247\147702s]/\1028502sv5S#n\RS($\SOHmrI\STX \a\ETBj<'X\US>[\NAK1\DC1{\1036529J7\1050723\ETB\1064669\1023944\DC3\ETX\163427*v\51586\1094918\v\190919&N\1039743\12127\992063B%2/\EM\15189\&7\149005\SOH]\180237Z\1023499IM\63096q\DC3y%\1007697\171535}\SOHds`\FS(\ETB\SIOX3C?\ACK\NUL\15552]\f\1038145LsTu\DLE)\STXU\DC2a\32523\132875/\r |\135613NB\STX|jW\SUB\nAx8/%L\1016547\1041040a\1035331f\NULm\23518\EM\GS'\SI\1082779\&2y|6\ACK;\EM\GSO\b\SIAq\15495\SOH=\1079959\1068730\132485q3_z<m'\1091817\25714&D\131142\181308\2995Q`P\37049dt\1085798=\1004938o+<5c\t*j\DLE.\151655z\n\ACK^v\987046\n,y\ajt_v_Q]\1103730\r\48309&\986770J\1077643\1108052U=nx_\FS'\20046\1083792-VNK\FS\179993l\ETB\43588U \v\DC4\SIK\ETBk\SYNc$\141048\188483Guh-_\ACK\165600\\4\177679\n\1105088\1103706\1085651\&9Lsab\1015744!\27146S\FS\NULqD\1074138\SOHS\DLE\1003772S\1054933\DLE\16125\1104879\61773\rv\62384\ETB3\997306`\ESC\\Z[#\157325?cT\78270\1031612\FS\28181O\SOH[I\9996 1|6\170734\27002dB\173284E[PG-\US\1089301\ACK:->\FS\CANN\1014783\144014z\26644\&7(s\DLE@\1030914epd\160891[\CANU\STX\39913\SYNB\175383/\1092672\DC2l\54264[m!\DLE>U\RS\148494\18469~\1000635\ESC~I\r)\160426\175322W\22908\52144!gS\4928\&7\DC2''\70812fg[]\f9$\1047326\v(\b\b~_\1082662v&\tA(\113719[H\173008!\987785@H(2i=`&Np\137001N\49236u\53359\DC3\1043638\DC1\roGt\134438\DC3P("
          )
    }

testObject_DeleteUser_user_8 :: DeleteUser
testObject_DeleteUser_user_8 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "\"\25995n\nt\ACK36>w-,38BR\CAN\\tApY\38941\EOT#\34073\f\EOTIy1\1092356c\1109760\68848\1040093\1056234\1050372\v\999446\ESCF\19676\1002121x\133776\162378\SOH#\1010744RQ\DC1\10089\ESC;eb\EOT\58983Tk,\154609\"hN\ETB\1020046\15999_\172130s\1034886\GS\1069446$\ACK\996097\&56\1069180\1023110=pFL\996693\EOT1\999027\189450q'\SUBo0\NAKkYJ`oC(j\n\SO\1075770<\ESCCd\1112434K\1081452\33189odp\31545\&4!HblpH|g\1084667$\1013094+#\97343sU\991504J\994858\146926<\994057\1020567\NAKX`=U\1069344;@\SO\CAN::\DC4\ACKH\4586NU\1057487\&0<\\\1008119F^!p|\DEL\7771W\RSh\FS5i\1055567GT\1008019F4\1089491/\171185\fxu\1070423\EM\1079430cHB\DC1yB\CAN%I\1013436<\1108955\1088025y\1068546*p^\ENQi\a\95854\CANs&W<\1050891eTS\1076082\176194S\DC2\1075553\57741\DC3\35842\&6\176750|\179007\DC2\1008082\1036657xUt:\191333\1053992\&6Cf/\FS\SO\ETB\41780{3uu*yU\SI]Ja\r9\992821\a\51100?\133538\&2\STX \aZ\DC2\FS%o=\1080665D\\oK<Nh\ACKH\SYN>R}\63376\19548%l2\FS\1090700\SI$u4T\RS/\DC3\187985\72791~\rI\1037313\996830O\r\EM)\NUL,BBa<\1000190\60458\994383yS/2[\134720\1023984\FSc\SUB+=A \38319\1112593\SUB\ENQ\121427}^\15560c*e4\183382\ESCH\69976|mIqg\1033937\95948ka\1068017\132160\CANdVIb\STX"
          )
    }

testObject_DeleteUser_user_9 :: DeleteUser
testObject_DeleteUser_user_9 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "RWx,BvC\995412RH?\1071958':1:!\tef-Z\1070126&3|\SI\147238J\1002103\ESCn`\SUB+\fk8<2.p\135835B\78427an\ESC\1110170o\152222\&7_\1002074\1034151x\NUL\139716\NAK\FS\DC3S$ \DC3\1026719mv:tA}\SI\v\NAK5Y\65338\r\53917\RS\133773E@N\1070500\188131S\139428\155037r\1046699\1101345O\ETX\r<\ETX \v\GS\DEL\1075054\1018431X\a@Uz\vm\1108256\NUL\2585\1093848\1053685QM\100635\b\1042948f\129607y+\187307f\1082020X\132099N\1024065\&7=(H[\74429#9j\1008273Tx\DEL\r\987200\1075169b\141631c+LT:\DLEpXTce\CAN\1110769h#\DC3\DC2\1040771\t(65\DC2\54640{Gudp:{xrBR\190136Gx\143683hIt=$;nI\STX}eR!\SO-S\ACKUxc0\SYNA\3997g\1007392\5088F\STX\STXrr\1073345\1089585\NULZ\173660\EM\137272?t\190044\1061225\&7\16014Ji\131904\&1\61154\SOH\DLEt\thf4\ESCe(\DC3\RSm4\DC2ji\68181\1025631e\FS96\v7|\186815\162340\1105613!\20207\&2\10079\1025357:s8{\1079566c0\ETX\DC3}\NAKDR\51929sXh\1061611\n(Q\184570y=\FS1cW\153936M)}]rd\STX\10335\&182\DC3\NAK\\wtjm!\1045227\DC1\995589\a\1005862|W\NULp\158697\1055375\SUB\EOTz&\183304ZhHC\\\SO\1053403\r\150308\SIg4\CAN\NULL\1020178\&4\1051594LZjpCm\ENQ\1086359\STX\f\\\22501\&5#\132667.uC\SOH\NULG\38852.*u\27778\EOT\1082062@\t\988230\144605a\40767T\f\STX\134115@\ETXm\1070794\NUL\1001344a\r]\50684\&2\1001759\DC3Y0~bn\42786\GSM\CAN\SI\a\bQ#w\EOTg\147818\NUL \49308\DC4\\.[P\FS\1040392\CANR/\RS\\A5\n+\SYNN\14443\&1\DC3\ESC\136755\135263\fk\15419~M\183377\1057023d|*\155494#\31829&K\SI:3sS/3\EOT\DLE\1065709\ESC\1068641\131772\SI\SOZBX\SOHH\1102066\22169\ESC\155249b\1085981hxn\59233D\ESCh~ql-\14173f\150424#1Cu\1030999\1026708r\NUL\17377\1047000u\1072279\&3\NAKN\ETX\DC1\171981;U9,\43282\24608\FSF\995303D\a\168430\17758v\DC2\13750#\DC1x'\1072246\145863p\EMIh\1034083eu\nM\ENQb\1087842L\ETX1\1014483\US\ACK\SI]\1090316\CAN\152984\RSz\ETX\DEL\blq90L\NAK'\1113186)\v\1096725\16854\121127\29559\1020319\1061557'\1022793\SOH%\121002\1080217\"\1113760e\39611d\DLE\83492}(%H/2\44296A)\187645 er!\DLEf{l\n\97338&\ESC\59000svY\1039978f=\1107506ErdT\984170\&8._\986943\ACK\"h>Z<\\qe6D(\DC4-+\ACK!\147217j,U\ETBRCg\162281J\1049541\ETX>4\184738\NUL1|;\NUL\1094707\1035418\135287\"\1095549E|)=#w<TS\FSI\1007187\1093189Vh>\1057555\ETBF\US\1022792\NUL\1013280T_v|n\DC20\44358a\996521yt_\ACKu!@\111250\1063895\&6\DC4\DC2\147418\&0:\DC1Ltr\ESCVI\1066739\DC4\GSkNtg\1039402q\181066Mp\32815\DC1\US\131636\1042732\&6\SYNZ \60502\DEL;W\1008353\NULW\134502\157983\US\ESCw\FS\US\US$\1079616\ETBBmYR\v\1014879\SI\149886\1101224\SOHwxd\EM\150211(\DC1f\160388)h@)\1068367\1051571r\DC3Y\ETB.\1063944\182476cW4\1020293^'\23551x\ENQ9\34085s8nkWn\1069738!\1091418\1044228\132147\&3M\129413e2h\SI\DC3%lDg\1028671\1076060\1027036M\EM{\1053261-)%f[*\\\DC3\b\151759$\SOY \a\USM'*\1013024\f\t\DC3\SUB\DC4J\97713\1090375V\ESC4\142654e\1038512\SOw|:x\175478\f\th:!\1027351,C\156891Ky\97788\137726\996012]pIy4\1079291\DEL\157756@\DLEr\1088430|\ESCu[\6775\DLEmu)~"
          )
    }

testObject_DeleteUser_user_10 :: DeleteUser
testObject_DeleteUser_user_10 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "DEf\995953\DLEO\1112387IF\1018888W\"\v\\\b;]zM\1071377\23128 3w\14364y\NUL\166060r\17371\159152\ETB[$\29768)(\US\SOH\96988v~6;z%1\183138\EMVDq\DEL2D\r}d\16158b\NAKp\f+\984171 \EOT\DEL1o\ESC\20207@x\EOT\167702!\11015]E\1008380J\ESCEq|^B\129550\61851\1072452\983216.\1086245\&7Dc\129309Z\1056350]U8\151615-,\CANw\22557\EOT|T\SYN\140434Ci\SO\156914\NAK\a;\n\1032235f)9LAZ\155620\96218q\t\27953\92933\168287\1038355J<=x\NAKk3<\1016443=)a\183320o\20799\&7\EM{E\185083V2m\NUL\SI)\74133<\1010040mi\135346e~b\ETX4;d\1096421\95938+l\138421~\1025050)\47887\1081073Kf\t~\US\23339Y@.\1064116/fj\49708\SO\64163u\1018983\&3\1045609c\1054361\48727\ETX\"N\NUL2^\ETB\CAN\\/\100156y93\128261[\CAN\1082771x)\v\ETBB^\120659\16424\&1>x 6\1046680KaR\184097\187114z;\998769tM\50200I\110614\1009560JGg\1089145\187776cV\f\SUB,\58179_\17448}^\t\1015257!.\STX\1052843n\1064280KX\51846\1011892\NAKW\131231B<%\f\1023380iS\1045577\DC4fnxrDb.`~\SUB^O(6uQ+\16635\ACKk`\190906\ACK\1072121O+9h\re\59428\1101905\1009879ctL\ACK2\DELBo<p\ETX\139884\SYN\169192\DLEA\99268\f\nD\DC4/\136580QI\173613:\NAK\SOH\SYN'\8647Q2\EOT\1013047\DC2>\1094964\42112op\1031461\53721\166324\1002985\24412/E|\7040\SYN\110686\97200\985916\1104539'\ESC\185159}\ESC\DLE\99031v5~\1033967I\DC3\DC4b\ETBiP\tqT &\132812\DLEm\14002\CANt)%W\1076667\STX\178617\1035532Fl\GS5#\v\RSj\FS\1092024\DC2B?Wp[G \121082#\n\1084063\NAKaUjX\1087016\1693jj\DC3\1110721M\148439\DC4a\178171\ESC\ETX*\DELtaY\ESC\1027240f\DC4\1006985\1073426\DC2:PE3.\1087786\1052705\ESC\14084\1092444AP\au\173705W#\EMOQQu\NULF|GaQb\66840\51966\ETB&\1006478\150264\SOHHcHY53(Vle\EOT{\26139qCI\1079105$O\STX\131616\75044\119356\96109Z~3\1011926\125020\n5\DC2\144751\156510'N\RS1d\194845\52133\ACK%iK4G\1026970:\1097961!\SYN`(MB\STX\169393-#\1093100\STX\28181VYN`3\USH\45562q0CwG\14050d\111086\ESCY<\176362&\1101927J\GS\24020C\r.^y\1083812B\ACKp\171855|\51383Y\DC4X\24580WJ\"\1102730\59282~\DC2\SO/V\DC4\STXg\GS\45130\74894G\1056487gc^P5\986447\1031127Gm[\\G\CANJ\ETX6~=\ENQjjv<\991743m\1111141|LP\1049188\69405\31149A'C\1342V\1053084\146906\&1x\DC1\GS\DC1J\996270\996444\EMD2\165583\1104454(?a)AQ|@\1101918\STX*\USS\30346)}\128551\&3i#\EOT(%x\28699\5808<\1040802\"\ACKQt\1015182 ~\bkN\190923\ACKv(\DC1\41416\68000\987488\DC4\168029'\1035733q2!\1097279\998967\DC3\FS\128095\1102863j\63443\64552C\rY?{*\155215f\23392\CAN\1005922\&0>\ETX\SYN\SUBT)~I.\1629\185876\&3\1083175\DC4{\1068268%[P\146642|TXL\b\ENQ[\\\ETX9\"\n\t\984727\1021548\6411{C\97205\SUBI\t\16636\GS\29107\171775^c1`prF\31303hQ`e\1049776\SI\NULWB\NUL\STXA\SYN\156568\1103684)\ENQx\DEL[;\FSV\SOH\DC44p@sTVt$2\1067401'IS=Ft?\993905\1110778R\172997~\179596\65912[5\983209\"\b\STXVu\1020553&\47669"
          )
    }

testObject_DeleteUser_user_11 :: DeleteUser
testObject_DeleteUser_user_11 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "\DEL\160093JIT+Rij\94505f\157645\DC1\DC2{\NULH#X3\62524\1072672\26964i\194786)D\1069923Ld;IBx!;c\162434\1046550\&5 y9\ETXj\1042272t\995387J`s}\ETX\DEL<\1074500~I91\EOTY~D@\EM\1012059\45710\186458\171549</\ENQ\178725N\1097755\SUBm\EM\DC42t\98277]\37275\98432nL\ETB\ETX\v|\38766\DC2\ACKq\54493~@\52736$E\ETBO\DC1Z\174868i|U\41040\1050228\129423V\ETB+*\CAN\19765H_rU\1103163\1108380z\bnV:\24896\DC1l\1045763\DELr\181471\&6r\ETXB\134615\47685^Tt\168177TD*\DC4\1037142\1023223\752V\DELc\180903\1073267/\145290\992924@!6z\EM\US\37218a\129093\a\f\1016331\1012601p\1017098C9\EMyl'\995597|<_D\b?n\NUL(\teK\RS\DC24\EOTC\SYNPbdBG3\1068210`^G\160719+RT\t\ETXj3$\SUB?\132670\v6\54441\4455"
          )
    }

testObject_DeleteUser_user_12 :: DeleteUser
testObject_DeleteUser_user_12 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "\159224\141263\SI1jvG\29855\1036503\SI\25854?)\133687T\a\78725\ENQNf5\SYN\173346:\162708#F\172379O?\":iN\1097973\1045870i\1008131+\EMW~F\1010559*9'\94563j3\1009951I\9830,\1057544A\EM[\1027716\171637J\NAK\1010810\ACK'\1040219\EM\32344hs\b \n/\1111836\53462\DC3\33754\1044440\138689/&\US\1010838\135676UxI~\1001756q\132517\145321\157240-\15113\DC1e/\EOTB\57544OS\DEL^\184490HO\187372~\ETBfgu$Y*\1018459\1107181\1098888\128159\DLE*\SUB\np\ACK\ETX\1077413b\DC2U\94874_b\ETBGxuc\1105769\139013\1085639{\1101149\1072694\\_\\\1027671\1109841\n\993400\&2\180990\f)\1041683XN\DC3r;N\1046408Y\a\37336Sp\143102\&8\166929\SIP"
          )
    }

testObject_DeleteUser_user_13 :: DeleteUser
testObject_DeleteUser_user_13 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "\1015600\FS\7546\&7`S\1082483\DLE\RSk8\rtx\NAK\DC3$\143463ET\ENQ\13306\1002980\&2Q$]\1089773_\RS~oL\44186\ENQ\19329\ENQM7\69924)K\1105044\SYNps\EOT\1099301wq\b\CANh\SI`T\SUBi\119936\SO\986856\1090531)kDx7\v.\53470\158743\DC2B\1014407 6H-\ESCg\1083905\168372L\ACK\SOxY\1020615\57610\33593n\1050447T\1097006`J\32780;=\137295>]~\134098\994559:\USe\171722!+\DC3\146161u\SOH\bEsr\1063176o?{1f\1111788Hg9>\1086451C\95010\ESCU4\119588\&6\3761Lma]\NUL*\\\NULrlx\tu\188812r)\34486Z~|\r\168153\RS\"\62554"
          )
    }

testObject_DeleteUser_user_14 :: DeleteUser
testObject_DeleteUser_user_14 = DeleteUser {deleteUserPassword = Nothing}

testObject_DeleteUser_user_15 :: DeleteUser
testObject_DeleteUser_user_15 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "`~\1085300\74381\STX\NAK;6\1110284\144222iG\14576\&1i\1097267\53723\fK\2408\142796t\bU\36160]V\ETX\ACKZL\ESC\43147\993663U;\NUL\1090656\DEL\DELY\1095589 V8Q/\ENQB\ACKW7\3724\1004393Jy\163842'\DLEg\v\1026388FV\DC1\1106448\DEL\168341-\1059077t\DC1o\46938BfB\ESC\t\ESCy\ESC\1003163e\1087305\r!+C3\1025711\1058620\1069646\14425B\174788i\DLE\SI\1113758\1027853\v\UShr\151546\1036074H\DC1\SYNBq\"\165134QV\RS9w\EM\fv%ak\b$1n~Rd\FSZ\999395/grxh*}\59067\1050682J\"\ETBe\30800@E\52868wz\NUL\1024827nB:ul\984780K/\1108795]\ENQc/\1026300\RS*\138552\169061wMe}Vu\ETX\v7j\1090936d\DC3\1091241?\146365\bN#A\FS%=aVy/\ETB\135572\1061670\SOH\1069435\176679V\1110548Z)\140187xz ~ia<<)]\1092774\&8D\SUBmJ1\143318rP\DEL/cxb\DC2\ACKB\vF1\1057079\100791/Dwx\149379\189467~U\1037291.r\155147\SOH\ACKuC'\SI{\1032000W\1023722X \33614\ESC\54105S6\SI\SYN\ETX~\986150\5026\n\1065178-Jq\1038225\tj7rI\59344 AfuG\f\EOT+\984152\&7w\125197\146671O\65737ZsK?\1041859e>|>Q\1011732B\35718LL\986208\&6v\r\23230H\1079873\NAK\SUBS~\ETX%&KH\SUB"
          )
    }

testObject_DeleteUser_user_16 :: DeleteUser
testObject_DeleteUser_user_16 =
  DeleteUser {deleteUserPassword = Just (PlainTextPassword "Dzq\12497s\DC3\176472\nUA\SOu\fO\64025\&4X_")}

testObject_DeleteUser_user_17 :: DeleteUser
testObject_DeleteUser_user_17 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "]\189881\&0;\21905\&8\1102345\ENQ\1072235\EOT\1031047\156181qG]\189335\&75\32161\&5\1076501mtr\SO\997648i\1015251,4\70725#5-q\SUB\1059901m \173612k\1039894S~F}/s`\ACK\DC1^i1R\ACK\984136\NUL&\1107283\SOH\180348\156061\1087810\1084250\137873\&5,n(\1030794`Dl!\1074758\NUL\f-\1088486[\140404zr\"=\"}\14052\b\12832\9758|\DEL\64369\139051{Z)^8\DLE\CAN\SOH\162567\EM\1102003T\72232M\172847k~A@PW\1076896\STX\SOH^2y{\EOT\v\DC23hG\aq\SYNY\FSH1\US\1068326&.\28278W?`6\DC2J}\ACKCv7\14936J\STXE~R\a:\FS\bI\SUBimv\ESC\176638x_-S\164125\";G%\US\1089117\137663\GS\ETB,D\54436\40275\&4\38545\US1F\DC1kgo/\31748#\DC1\64524\73002x\175276\53831o'pxg&d\b\1099762\181122zk\994395-\f\US\SI\f\141843\1013008\21725\&3:\1047905y\154041g\NUL\170529pR|\136104\aoH\ETB\45475#\STXa7\baQZ\1022685\SI\STX>TQQ,z<Q\1062955\b\160358A\49450\DC3=(+cN\SOT\f\45416\161075@\"*3\DC4T\tviU\43681\1031048N\SOq\1011416=_}\149337\&1\"N#\988311}\NUL\DELo\RS?8Jlsx\USFK\173826\SUB\1067664\147610\995844\1104266\DC2\v\STX\1001669a/\1113298C\ESC\38664\1096510+W\183807N\27821\1026939~\146129hQX\133867\35916y\1091767\164162\SOH\ETB\"Q=\92702\174829Cv\1052704\4544\166880\19187}\122884?jk\1065306I\b\EOT\1094092\STX\20875\996685\186991{A\DC1\v\US\NUL\51670PYU\a\1073883T:R&\1008101\1102365`6y\62568\ETX\64545bcosV$\25326\1104250(E\v\1016461\&8\985537\EOT\DC3Vb89\v \17334&\1015769\NUL\1113576\186741XO\SOH\RS0^@\SUBY&\1070797\1066965KN\157930\DC3yB\STX:m#\178722d\1079988\155578!ic\EOT\ETB\9950\1106976z]\1055767\\\STX\1069398Y\1023702\ESCn\1092073T}\75030j+\rs"
          )
    }

testObject_DeleteUser_user_18 :: DeleteUser
testObject_DeleteUser_user_18 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "/~\GS\n\41984o*e6oF}v1%OVn)\13764\DELKZ%\DLE%MPU:Rr\EOT\DC3\154428sq\ETB^3X\1005117<0o\SI&BT\153724_\1075856\174575lx\b\984035z\15270P\SI\DC2'\45831[Z\fSt\61237e\1065949_Y\1042637ex\132471_wt\140376DJ\ETBh\GS\ETB FF!pT\16769\1032186(\SUB\22968\37180hr\1097518z\1030801\&2'd5\SI\a\155116r\SI\139540tv\134169?\"\1065081\65807\\q\"\60696'~\58658\1103771*|.\1089503\RSOA1Y]\1105865x\DC1^\DEL\111037^\170771l\1048229s\EOT\STXd\f\1003670z^\1012217[\143975L\SOVl5\1072703\DC2xW\135783\1004261_\av\aH\134570\&1d\1069938,(61\SOH_iQ\1101993?=j\DC1\1076881\29427\46105\ETXK\163698c\154958\1025487/\a\DELT\1011345\ETX5=\19877\&7x`L\993652\15749+U\175544\1092016\ACKD\17186\DC2VU\SOciU\10942\SUBZ\43891)!\32694\SYNHD\25692\1000018\1019335+\1037222Wla\990266\983172\23728p\GS\US\1085094\RS\1112120\US\CAN2\1069788^C5\r:L|C\96734\r\180604\RSva\1012958C\9319*\1009822Mv\42810wu\148664\1043928/sP5\1057325F@%\1027257Lc~z`|d\983179\ENQ\158778\&6\NUL\16416\&6\174818K\21757A&R3/\50933dS\STX\rZC\NAKVz!\162699;g\FS\SUB)d\119875\169296\1075856\35263#Oc\1081890b\"\49589\ETB#1\1001062\66192r\ACKR\ACKrPJgE\42490\ETB+\1029767CDH>\1107531\&2/\SYN\ENQ#'lS\NUL\f\aC9W\34152\f\t\SYN\ar\35059O7)\FS[E\169287X[\154757[\bumB\SIf\SYNG\t\990961[nkl\DEL\GS\1048567>o\171664\26118\1028464\1043159J\15442x0\1100565\997895\DLE\1038551x\1045803d:Id4\n\ACKJ\11576Y\1030703\96279cR\ESCr\tmv\NAK%h;FZ0\30360>4\SI,\166028\179771+Sa\CAN5\GS\SOG\1004157\1018324kC\n\ETBrV\NAK1:\60993\1005021\188875Q\173038\1102019\STX\166768\7726J\60090\f\EOTDd\1090665i\998643\EMVAv\1067083N\\F\1063488eR\15138kOj\140038e\128981\65029\US-\RS@\DEL\165589\1057690C\"\GS\\\1000607\997545\1079177)Hs<=\1054988O\135934\28549d\NAKY\n=|&Rz^#\DC1\EMY+?E2#\DC4\ENQ5\FS\SYN#\ETX\993389\ACK\rj9%\ESCv.\ESCK6K\NULT\1033898wToLS\40177(\NUL\1044037|\30327\CANJ\35219#\7776~\1000924\STXd-z6\1013014\5996G\171672\DC4J\rQ\171233B^?A.@\987892"
          )
    }

testObject_DeleteUser_user_19 :: DeleteUser
testObject_DeleteUser_user_19 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "\FSHAC#-gZ\CAN)3\ENQ\35169dM\NAKZ\ACKMt\22966%5\1059774l)R_\1021311Z@\137057}\fV\1073183Pvy\US=i\\\1006321\EM\DC1\"pe\39927^:\a\US\EOTh\190319\1097763\GS]Y&\ETBwZW\n!m2S<IXj\57614|Z2Hg\\\40801eBM\1042702\EOTE\"\2004J'\1067997\DC4/z1YWN\68046\NAK8H\NAK\vmk\1075050,\EOT\EM\ACKi\DC2\GS\1015268\DC3\DC3\194747D\1042338\1107477\RS\r[d\b\SI0<\53155cR\ETBF\28217\190213>Yb\165378OCW\rq+\100202h)\16110\34963p_~2p\26693\53392\b\92300\v{9Wn\54261{\NUL7/Qn\21885^K\DC3\ETBCP!+\1007021!PfV~HT\1082228GN\64860\11361^<U\1059532L\28726nkx\DC1`\EOT\STX\2096E\SO\30381\SOM\1083339;\NUL5gi]\1067066T\ETX\1099128u]6t\SUB/\DC1;HO\1048464X\1039472\GSNo2f\EOT@L<]\1019753$\1028304[\187005>sSR\172656)\30249 \1010886\10209XlA\1097013p\1059263\181879L\f\39754)3!R\ESCH-nD\SO}KT88P\SO\ACK\RSE\CAN8\ACK%]\72325\158918\1031266G\26036\SYN\155599\142308\1071584\EOT)\DC1\1056995KyP\ETBF\FS{;)(\SUB\74099iml\\G\984976;:\1019785\NAK\71307aku\bt\SOH\25350e\1035562X2!~\167816_*\1093728T\n\185843\49627\US\STX=\1013155%\49994Ui\RS{\1010490\10312\986114)\987880\CAN\FS\29461p\122886\60694\984199ae;;S\18626OIumd!\DELo\DC1\34900\1044339\17656\143765\CAN;\147302B]\1086550r\r\1091034\3546FM\ETXvl&7\ACK:~^\DLE\a\1104972u\1010729\US\1048737g5\1109511\34793\61795\USR|\SI\1018493Z\vN0$W\1050773+qN?\SI\164700 s\1041827n\1091643>x\DC2\40934EA(CL]XZ2G6\168684\71683\1000797|9>{\ETBD\996538\1109355\28862:\41417\n\181162\&4\178375jon\v\1083748\1006948\b\a\SO\1070168e\157331by-7\1099262\DC3\STX\46217-%\1037353\CANL\\\48652A\DC4E\SO$r\30347ajn_\14532Hn{n\147691\1091725\CANP\f\a\1057510\1093951\1300VH@v\1000846*\ETB\EMbB\67871N\ff}G\CAN_\190086bt\v\NUL\SUBHZkT^s9\5757\38046$Ai{o\NUL\1031710?\1020061R\1072184\r`\10708\180291'$)c0;\US\190443Q\176915\&5hI\61737\32248\DC4q\ta\135573\1054497f\5133\1047548\vIc1+X\EM-b%z\13146\ru\52404\&7h\ETXvc\51035}a\1069669\&8\RS$YXL\51100\24975G\1050080\DC2n\FS\987904V\1058564\SYN\fEF\ACK,g#K\ETX\DC1\NUL~2\b\1080410\&3\172935\n>D\99869E\RS#\1024688\1064967`xj\ETBM\DEL\DC1\41241B\FSQ(\f\vW \NAK\180409i\SO\CANs\984900(/mjS\1070763W(\1061553{a\DC2\1018032b/t\1107796*miP{=@\3993.o7\132550\DLEvO\1066216\DC4\NAK\7587/H9^.Sof=\46317\134970\&3i\43237'\nVI>1y\RS\15606\182177/ie%Yb\53218{9\DC2P\DC4W\au\"A\1019169~-\1090930\1097077Z\1066476\96842\1005524c\40482g\1009344%\146114k\1027651wL\142425J+(m4I`Z$n\1043635/rm\ETX`@`6|\EOTeH\b\1104196\147523\&4\62247\NUL4\1050156RG\fl3\992511\1112108{1)_m\RS\1037055j>5\EOT{vm>FM\992125\1066248N\992179\1095805\n\DC2t\SOH\USk\178143?ZM\v\53249g7A\ETX\1097802\b\1044365\DC2\ETB\121264\1111453\1064396\29722C\DC3h\1094932\DC4ag^#\168543\995729iE\27864\t\DLE>er\US/C\1086286x\DC1\1015244}\EM\ENQdk\152744Cv\1037501\1028365\1036484\NAK\ENQS!S?7\1020740\167324\ETB\142555\1090736]5\1064738\SOH\61858!\ETB@\SUBu4I\146324X\129593K\184981&\2217Oa'\f\37854\27808\31568p\NUL.{E\SUBO\GSNW\168663\53158 \1001507\&0\7882\SO+*\EM/\1011367\SOH]6"
          )
    }

testObject_DeleteUser_user_20 :: DeleteUser
testObject_DeleteUser_user_20 =
  DeleteUser
    { deleteUserPassword =
        Just
          ( PlainTextPassword
              "4i&\SUB\n\173868,\171993\1039350\1026684\"\990080\r)\1085158X^`Xv\190792\STX\991685UN\n\1023916tQ\1042234h\16663\&4\ENQ\SUB\bj\1010588Y\DC1\GS\EM\64743\GSX(m\33189\175828cXz\fEx*M\SYNL6;*\1001951\188126\1087528\RSD\61798}\1031791Ywk\210V(jsn\1066362KS\1004751\"\28906\47519\190071\\\r\992724\DC3v\46565C\DC2l)BxF\148222\1091231\SYN!>x?\1078350\1048680aj\5633X\1030175t\132787\156320C+iz\t\1113889I\\\1026350O{\ENQ\1008267\1070869&\16283sYx\1032981\DC1\182212m\ESCzg\73780l\21318:\a?xav\ETX\1002956~\SI\vs\1060884\1034204V\DLE:\STX\2149d\ETBoJa\14654\1095521\1079157\&2\1026557-\SUB\51869\2671J\ETX\FS\EOTi\DC4\63614lo]`\\\f\SI8[dK\1083834\&4\DELz\1003491\1024311\1067559\31725\1020277\181003\179474\ETB\DC3\\o\1032076\SUB\DC4.\151401oTs\1061082n\US\\\32545\\z\1000536Dl\13249\65070q%iW\1086344(#\193EoypfS\48303\1027584\36379S\184984b9$\1080140\\\f%\DLEVc\v]q!SSQm\NULC\ETB\EM}\SOH[uN?\150961#\SUB\1030157o)]VqA\SI\1083167\fBtO}t\1083206v\41336X\DEL>\NAK\1026675P\180353d\1020631#\97378\USf\131892\141248C{H&]\989317#5exl\1083095&n?\SOH\n>&T}4\21155#L\GSr%o\SOH/\1009860\&2ID8\DC1'kog\\mw\SIe\ETB\1064993\ETX\DC4^O\176040~t0\EOT&<\DC4#ym3\188511;\NUL?r\DC4*\STXE\1089111\995413<\1038436\&7M%*-ekKjyQq (z\1064832\ETB\NAKg\1044642K\"\FSvu\ESC`\t]C\1094587"
          )
    }