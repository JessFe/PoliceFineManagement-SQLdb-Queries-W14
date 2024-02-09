--Stored Procedure
--1 Una SP parametrica che, ricevendo in input un anno, visualizzi l'elenco delle contravvenzioni effettuate in un quel determinato anno,

--all'esecuzione della SP, passare un anno per ricevere l'elenco delle contravvenzioni di quel determinato anno
-- (es: 2009)
CREATE PROCEDURE ContravvenzioniPerAnno (@Anno INT)
AS
BEGIN
SELECT *
FROM Verbale
WHERE YEAR(DataViolazione) = @Anno;
END;