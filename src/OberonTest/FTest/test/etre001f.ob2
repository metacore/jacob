(* 6. Type declarations : Record types                                        *)
(* An extended type T1 consists of the fields of its base type and of the     *)
(* fields which are declared in T1. All identifiers declared in the extended  *)
(* record must be different from the identifiers declared in its base type    *)
(* record(s).                                                                 *)

MODULE etre001f;
IMPORT e:=edec001t;

TYPE
   tAbgeleitet1 = RECORD(e.t1Record)
                   x,y,z : CHAR;
                   h, i  : BOOLEAN;
(*                    ^--- identifier already declared *)
(* Pos: 13,23                                          *)
                  END;

BEGIN

END etre001f.
