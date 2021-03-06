(*$!oc -it -kt -cmt O05 && O05 #*)
MODULE O05;
IMPORT O:=Out;

TYPE T=LONGINT;

VAR 
   a1:ARRAY 10          OF T;
   a2:ARRAY 10,10       OF T;
   a3:ARRAY 10,10,10    OF T;
   a4:ARRAY 10,10,10,10 OF T;

(************************************************************************************************************************)
PROCEDURE P1(a:ARRAY OF T );
BEGIN (* P1 *)
 IF a[0]#0 THEN 
  O.Int(a[0]); O.Str(' ');
  O.Int(a[9]); O.Ln;
 ELSE 
  a[0]:=1; 
  P1(a);
 END; (* IF *)
END P1;

(************************************************************************************************************************)
PROCEDURE P2(a:ARRAY OF ARRAY OF T );
BEGIN (* P2 *)
IF a[0,0]#2 THEN 
 O.Int(a[0,0]); O.Str(' ');
 O.Int(a[0,9]); O.Str(' ');
 O.Int(a[9,0]); O.Str(' ');
 O.Int(a[9,9]); O.Ln;
ELSE 
 a[0,0]:=1; 
 P2(a);
END; (* IF *)
END P2;

(************************************************************************************************************************)
PROCEDURE P3(a:ARRAY OF ARRAY OF ARRAY OF T );
BEGIN (* P3 *)
IF a[0,0,0]#6 THEN 
 O.Int(a[0,0,0]); O.Str(' ');
 O.Int(a[0,0,9]); O.Str(' ');
 O.Int(a[0,9,0]); O.Str(' ');
 O.Int(a[0,9,9]); O.Str(' ');
 O.Int(a[9,0,0]); O.Str(' ');
 O.Int(a[9,0,9]); O.Str(' ');
 O.Int(a[9,9,0]); O.Str(' ');
 O.Int(a[9,9,9]); O.Ln;
ELSE 
 a[0,0,0]:=1; 
 P3(a);
END; (* IF *)
END P3;

BEGIN (* O05 *)
(* a1 *)
a1[0]:=0; a1[9]:=1;

(* a2 *)
a2[0,0]:=2; 
a2[0,9]:=3; 
a2[9,0]:=4; 
a2[9,9]:=5;

(* a3 *)
a3[0,0,0]:=6; a3[0,0,9]:=7; 
a3[0,9,0]:=8; a3[0,9,9]:=9; 
a3[9,0,0]:=10; a3[9,0,9]:=11; 
a3[9,9,0]:=12; a3[9,9,9]:=13;

O.StrLn('*************************');
P1(a1);
P2(a2);
P3(a3);
END O05.
