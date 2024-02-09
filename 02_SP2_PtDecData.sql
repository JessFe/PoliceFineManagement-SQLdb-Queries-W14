--Stored Procedure
--2 Una SP parametrica che, ricevendo in input una data, visualizzi il totale dei punti decurtati in quella determinata data,

--all'esecuzione della SP, passare una data per ricevere il totale dei punti decurtati in quella determinata data
-- (es: 15/03/2009, 15/03/09, 15-03-2009, 15.03.2009)
CREATE PROCEDURE PuntiDecurtatiInData (@Data NVARCHAR(10))
AS
BEGIN
SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
FROM Verbale
WHERE DataViolazione = @Data;
END;
