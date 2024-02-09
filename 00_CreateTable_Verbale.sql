CREATE TABLE Verbale (
IDverbale INT IDENTITY NOT NULL PRIMARY KEY,
DataViolazione DATE NOT NULL,
IndirizzoViolazione NVARCHAR(100) NOT NULL,
Nominativo_Agente NVARCHAR(50) NOT NULL,
DataTrascrizioneVerbale DATE NOT NULL,
Importo DECIMAL(10, 2) NOT NULL,
DecurtamentoPunti INT NOT NULL,
IDanagrafica_FK INT NOT NULL,
IDviolazione_FK INT NOT NULL,
CONSTRAINT FK_Verbale_Anagrafica FOREIGN KEY (IDanagrafica_FK) REFERENCES Anagrafica(IDanagrafica),
CONSTRAINT FK_Verbale_TipoViolazione FOREIGN KEY (IDviolazione_FK) REFERENCES TipoViolazione(IDviolazione)
)
