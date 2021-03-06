(* $Id: Sort.mi,v 1.0 1992/08/07 14:42:01 grosch rel $ *)

(* $Log: Sort.mi,v $
# Revision 1.0  1992/08/07  14:42:01  grosch
# Initial revision
#
 *)

(* Ich, Doktor Josef Grosch, Informatiker, Juli 1992 *)

MODULE Sort;

TYPE tProcIntIntBool*	= PROCEDURE (a:LONGINT; b:LONGINT): BOOLEAN;
TYPE tProcIntInt*	= PROCEDURE (a:LONGINT; b:LONGINT);

PROCEDURE Sort* (Lwb, Upb:LONGINT; IsLess: tProcIntIntBool; Swap: tProcIntInt);

   PROCEDURE QuickSort (Lwb, Upb: LONGINT);
      VAR i, j: LONGINT;
      BEGIN
	 LOOP
	    IF Lwb >= Upb THEN RETURN; END;
	    i := Lwb + 1;
	    j := Upb;

	    REPEAT
	       WHILE (i < Upb) & IsLess (i, Lwb) DO INC (i); END;
	       WHILE (Lwb < j) & IsLess (Lwb, j) DO DEC (j); END;
	       IF i < j THEN Swap (i, j); END;
	    UNTIL i >= j;

	    Swap (Lwb, j);
	    QuickSort (Lwb, j - 1);
	    Lwb := j + 1;		(* QuickSort (j + 1, Upb); *)
	 END;
      END QuickSort;

   BEGIN
      QuickSort (Lwb, Upb);
   END Sort;

END Sort.

