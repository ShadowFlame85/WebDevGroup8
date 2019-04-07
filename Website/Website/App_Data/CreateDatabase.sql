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
    Datum          DATETIME      NOT NULL,
    Comment        TEXT          NOT NULL,
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

SET IDENTITY_INSERT Registratie ON
INSERT INTO Registratie (Id, Naam, Gebruikersnaam, Mailadres, Wachtwoord) VALUES (1, N'Kees', N'kees123', N'kees@mail.com', N'kees321')
INSERT INTO Registratie (Id, Naam, Gebruikersnaam, Mailadres, Wachtwoord) VALUES (2, N'Maxime', N'maxime123', N'maxime@mail.com', N'maxime321')
INSERT INTO Registratie (Id, Naam, Gebruikersnaam, Mailadres, Wachtwoord) VALUES (3, N'Jorn', N'jorn123', N'jorn@mail.com', N'jorn321')
INSERT INTO Registratie (Id, Naam, Gebruikersnaam, Mailadres, Wachtwoord) VALUES (4, N'Jacco', N'jacco123', N'jacco@mail.com', N'jacco321')
SET IDENTITY_INSERT Registratie OFF

SET IDENTITY_INSERT Stories ON
INSERT INTO Stories (Id, Titel, Auteur, Datum) VALUES (1, N'Kees in het bos', N'Kees', N'1970-01-01')
INSERT INTO Stories (Id, Titel, Auteur, Datum) VALUES (2, N'Jorn in de jungle', N'Jorn', N'2019-04-03')
INSERT INTO Stories (Id, Titel, Auteur, Datum) VALUES (3, N'Maxime en Wybren', N'Maxime', N'2019-04-01')
INSERT INTO Stories (Id, Titel, Auteur, Datum) VALUES (4, N'Tjeerd', N'Chris Beem', N'2019-02-06')
SET IDENTITY_INSERT Stories OFF

SET IDENTITY_INSERT Comments ON
INSERT INTO Comments (Id, Datum, Comment, Registratie_Id, Story_Id) VALUES (1, N'1975-01-01', N'Bouke', 1, 1)
INSERT INTO Comments (Id, Datum, Comment, Registratie_Id, Story_Id) VALUES (2, N'1975-01-02', N'Jorn', 2, 2)
INSERT INTO Comments (Id, Datum, Comment, Registratie_Id, Story_Id) VALUES (3, N'1975-01-03', N'Chris', 3, 3)
INSERT INTO Comments (Id, Datum, Comment, Registratie_Id, Story_Id) VALUES (4, N'1975-01-04', N'Maxime', 4, 4)
SET IDENTITY_INSERT Comments OFF

SET IDENTITY_INSERT Images ON
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (1, N'https://bit.ly/2CQpeek', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (2, N'https://bit.ly/2HVTfxK', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (3, N'https://bit.ly/2OPibHX', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (4, N'https://bit.ly/2Uu3lM0', 4)
SET IDENTITY_INSERT Images OFF