--Stored Procedure
--3 Una SP che consenta di eliminare un determinato verbale identificandolo con il proprio identificativo

--all'esecuzione della SP, passare un IDverbale del verbale che si desidera eliminare
-- (es: 42)
CREATE PROCEDURE EliminaVerbale (@IDverbale INT)
AS
BEGIN
DELETE FROM Verbale
WHERE IDverbale = @IDverbale;
END;
