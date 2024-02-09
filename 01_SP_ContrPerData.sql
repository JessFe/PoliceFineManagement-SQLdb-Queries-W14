--9 Query parametrica che visualizzi Data violazione, Importo e decurtamento punti relativi ad una certa data, (Stored Procedure)

--all'esecuzione della SP, passare una data per ricevere i relativi dati del verbale
-- (es: 15/03/2009, 15/03/09, 15-03-2009, 15.03.2009)
CREATE PROCEDURE ContravvenzioniPerData (@Data NVARCHAR(10))
AS
BEGIN
SELECT DataViolazione, Importo, DecurtamentoPunti
FROM Verbale
WHERE DataViolazione = @Data;
END;