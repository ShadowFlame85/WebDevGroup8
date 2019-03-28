DROP TABLE Registratie;
CREATE TABLE Registratie (
 Registratie_Id INT PRIMARY KEY IDENTITY,
 Naam NVARCHAR(50) NOT NULL,
 Gebruikersnaam NVARCHAR(50) NOT NULL,
 Mailadres NVARCHAR(50) NOT NULL,
 Wachtwoord NVARCHAR(50) NOT NULL
);

INSERT INTO Todo (Item) VALUES ('item2');