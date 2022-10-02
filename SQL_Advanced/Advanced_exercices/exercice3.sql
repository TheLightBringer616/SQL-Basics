--Inside your stored procedure, write a SQL IF statement to update the Leaders_Icon field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID using the following information. 

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE (IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)

LANGUAGE SQL
MODIFIES SQL DATA

BEGIN

	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET LEADERS_SCORE = in_Leader_Score
	WHERE SCHOOL_ID = in_School_ID;
	
	IF in_Leader_Score <= 99 AND in_Leader_Score >= 80 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very Strong'
        WHERE SCHOOL_ID = in_School_ID;
    
    ELSEIF in_Leader_Score <= 79 AND in_Leader_Score >= 60 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Strong'
        WHERE SCHOOL_ID = in_School_ID;
        
    ELSEIF in_Leader_Score <= 59 AND in_Leader_Score >= 40 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'AVERAGE'
        WHERE SCHOOL_ID = in_School_ID;
        
	ELSEIF in_Leader_Score <= 39 AND in_Leader_Score >= 20 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Weak'
        WHERE SCHOOL_ID = in_School_ID;

	ELSEIF in_Leader_Score <= 19 AND in_Leader_Score >= 0 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very Weak'
        WHERE SCHOOL_ID = in_School_ID;
        
	ELSE
		ROLLBACK WORK;
		
    END IF;
    COMMIT WORK;
    
END
@  