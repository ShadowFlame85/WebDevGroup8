DROP TABLE Images;
DROP TABLE Comments;
DROP TABLE Registratie;
DROP TABLE Stories;

CREATE TABLE Registratie (
    Id INT IDENTITY (1, 1) NOT NULL,
    Naam NVARCHAR (50) NOT NULL,
    Gebruikersnaam NVARCHAR (50) NOT NULL,
    Mailadres NVARCHAR (50) NOT NULL,
    Wachtwoord NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED (Id ASC)
);



CREATE TABLE Stories (
    Id     INT            IDENTITY (1, 1) NOT NULL,
    Titel  NVARCHAR (100) NOT NULL,
    Auteur NVARCHAR (50)  NULL,
    Datum  DATE           NULL,
    PRIMARY KEY CLUSTERED (Id ASC)
);


CREATE TABLE Comments (
    Id             INT           IDENTITY (1, 1) NOT NULL,
    Datum          DATE          NOT NULL,
    Naam           NVARCHAR (50) NOT NULL,
    Registratie_Id INT           NOT NULL,
    Story_Id       INT           NOT NULL,
    PRIMARY KEY CLUSTERED (Id ASC),
    FOREIGN KEY (Story_Id) REFERENCES Stories (Id),
    FOREIGN KEY (Registratie_Id) REFERENCES Registratie (Id)
);



CREATE TABLE Images (
    Id       INT            IDENTITY (1, 1) NOT NULL,
    ImageURL NVARCHAR (200) NOT NULL,
    Story_Id INT            NOT NULL,
    PRIMARY KEY CLUSTERED (Id ASC),
    FOREIGN KEY (Story_Id) REFERENCES Stories (Id)
);