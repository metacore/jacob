MODULE Out;	
(* Stream-oriented text output, page 89, 98,310 *)
END Char;
END String;
END Real;
END Int;
PROCEDURE Set*(s: SET);
VAR i, j: INTEGER; notfirst: BOOLEAN;
BEGIN i := 0; notfirst := FALSE; Char("{");
	WHILE i <= MAX(SET) DO
		IF i IN s THEN
			IF notfirst THEN String(", ")
			ELSE notfirst := TRUE
			END ;
			j := i; Int(i, 1); INC(i);
			WHILE (i <= MAX(SET)) & (i IN s) DO INC(i) END ;
			IF i-1 > j THEN
				IF i-2 = j THEN String(", ") ELSE String("..") END ;
				Int(i-1, 1)
			END
		END ;
		INC(i)
	END ;
	Char("}");
END Set;

PROCEDURE Boolean*(b : BOOLEAN);
BEGIN
	IF b THEN Texts.WriteString(W, "TRUE");
	ELSE Texts.WriteString(W, "FALSE");
	END;
END Boolean;

END Out.	(* Copyright M. Reiser, 1992 *)