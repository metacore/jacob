MODULE m1;
IMPORT m2;
VAR s:ARRAY 50 OF CHAR; 
    p:POINTER TO m2.T;
BEGIN (* m1 *) 
 NEW(p); 
END m1.

