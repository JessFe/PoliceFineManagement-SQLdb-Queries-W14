--1 Conteggio dei verbali trascritti,
--SELECT COUNT(*) AS TotVerbaliTrascritti
--FROM Verbale

--2 Conteggio dei verbali trascritti raggruppati per anagrafe,
--SELECT IDanagrafica_FK, COUNT(*) AS NumVerbaliTrascritti
--FROM Verbale
--GROUP BY IDanagrafica_FK

--3 Conteggio dei verbali trascritti raggruppati per tipo di violazione,
--SELECT IDviolazione_FK, COUNT(*) AS NumVerbaliTrascritti
--FROM Verbale
--GROUP BY IDviolazione_FK

--4 Totale dei punti decurtati per ogni anagrafe,
--SELECT IDanagrafica_FK, SUM(DecurtamentoPunti) AS TotPuntiDecurtati
--FROM Verbale
--GROUP BY IDanagrafica_FK

--5 Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo,
--SELECT A.Cognome, A.Nome, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale V
--ON A.IDanagrafica = V.IDanagrafica_FK
--WHERE A.Citta = 'Palermo'

--6 Cognome, Nome, Indirizzo (violazione), Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009,
--SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale V
--ON A.IDanagrafica = V.IDanagrafica_FK
--WHERE V.DataViolazione BETWEEN '2009-02-01' AND '2009-07-31'

--7 Totale degli importi per ogni anagrafico,
--SELECT IDanagrafica_FK, SUM(Importo) AS TotaleImporti
--FROM Verbale
--GROUP BY IDanagrafica_FK

--8 Visualizzazione di tutti gli anagrafici residenti a Palermo,
--SELECT *
--FROM Anagrafica
--WHERE Citta = 'Palermo'

--10 Conteggio delle violazioni contestate raggruppate per Nominativo dell'agente di Polizia,
--SELECT Nominativo_Agente, COUNT(*) AS ViolazioniContestate
--FROM Verbale
--GROUP BY Nominativo_Agente

--11 Cognome, Nome, Indirizzo (violazione), Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti,
--SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale V
--ON A.IDanagrafica = V.IDanagrafica_FK
--WHERE V.DecurtamentoPunti > 5

--12 Cognome, Nome, Indirizzo (violazione), Data violazione, Importo e punti decurtati per tutte le violazioni che superino l'importo di 400 euro.
--SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
--FROM Anagrafica A
--JOIN Verbale V
--ON A.IDanagrafica = V.IDanagrafica_FK
--WHERE V.Importo > 400