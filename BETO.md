DEFINITION MODULE BETO; (* Back End Test Output *)

IMPORT ASM, ASMOP, Idents, LAB, OT; 
	      
PROCEDURE PrintCHAR(v:CHAR);
PROCEDURE PrintoCHAR(v:OT.oCHAR);
PROCEDURE PrintoBOOLEAN(v:OT.oBOOLEAN);
PROCEDURE PrintoLONGINT(v:OT.oLONGINT);
PROCEDURE PrintoREAL(v:OT.oREAL);
PROCEDURE PrintoSET(v:OT.oSET);
PROCEDURE PrintoSTRING(s:OT.oSTRING);
PROCEDURE PrintT(l:LAB.T);
PROCEDURE PrintLONGINT(i:LONGINT);
PROCEDURE PrintLONGCARD(c:LONGCARD);
PROCEDURE PrinttLocation(VAR loc:ASM.tLocation);
PROCEDURE PrinttSize(s:ASM.tSize); 
PROCEDURE PrinttRelation(r:ASM.tRelation); 
PROCEDURE PrinttOper(o:ASMOP.tOper); 
PROCEDURE PrinttIdent(id:Idents.tIdent); 
PROCEDURE PrinttOperand(VAR o:ASM.tOperand); 
PROCEDURE PrinttVariable(VAR v:ASM.tVariable); 

END BETO.