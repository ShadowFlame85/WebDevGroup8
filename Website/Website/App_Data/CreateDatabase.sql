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

SET IDENTITY_INSERT Stories ON
INSERT INTO Stories (Id, Titel) VALUES (1, N'Alcatraz Island - San Francisco')
INSERT INTO Stories (Id, Titel) VALUES (2, N'Antelope Canyon - Arizona')
INSERT INTO Stories (Id, Titel) VALUES (3, N'Calico Ghost Town - Californië')
INSERT INTO Stories (Id, Titel) VALUES (4, N'Grand Canyon National Park - Arizona')
INSERT INTO Stories (Id, Titel) VALUES (5, N'Hollywood - Californië')
INSERT INTO Stories (Id, Titel) VALUES (6, N'Joshua Tree - Californië')
INSERT INTO Stories (Id, Titel) VALUES (7, N'Las Vegas - Nevada')
INSERT INTO Stories (Id, Titel) VALUES (8, N'Organ Pipe National Park - Arizona')
INSERT INTO Stories (Id, Titel) VALUES (9, N'Sequoia National Park - Californië')
INSERT INTO Stories (Id, Titel) VALUES (10, N'Yosemite National Park - Californië')
SET IDENTITY_INSERT Stories OFF

SET IDENTITY_INSERT Images ON
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (1, N'../Image/Alcatraz Island/img(239).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (2, N'../Image/Alcatraz Island/img(205).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (3, N'../Image/Alcatraz Island/img(206).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (4, N'../Image/Alcatraz Island/img(207).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (5, N'../Image/Alcatraz Island/img(208).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (6, N'../Image/Alcatraz Island/img(209).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (7, N'../Image/Alcatraz Island/img(210).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (8, N'../Image/Alcatraz Island/img(211).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (9, N'../Image/Alcatraz Island/img(212).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (10, N'../Image/Alcatraz Island/img(213).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (11, N'../Image/Alcatraz Island/img(214).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (12, N'../Image/Alcatraz Island/img(215).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (13, N'../Image/Alcatraz Island/img(216).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (14, N'../Image/Alcatraz Island/img(217).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (15, N'../Image/Alcatraz Island/img(218).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (16, N'../Image/Alcatraz Island/img(219).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (17, N'../Image/Alcatraz Island/img(220).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (18, N'../Image/Alcatraz Island/img(221).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (19, N'../Image/Alcatraz Island/img(222).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (20, N'../Image/Alcatraz Island/img(223).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (21, N'../Image/Alcatraz Island/img(224).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (22, N'../Image/Alcatraz Island/img(225).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (23, N'../Image/Alcatraz Island/img(226).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (24, N'../Image/Alcatraz Island/img(227).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (25, N'../Image/Alcatraz Island/img(228).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (26, N'../Image/Alcatraz Island/img(229).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (27, N'../Image/Alcatraz Island/img(230).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (28, N'../Image/Alcatraz Island/img(231).JPG', 1)
SET IDENTITY_INSERT Images OFF