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
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (2, N'../Image/Alcatraz Island/img(205).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (3, N'../Image/Alcatraz Island/img(206).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (4, N'../Image/Alcatraz Island/img(207).JPG', 1)
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
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (29, N'../Image/Alcatraz Island/img(232).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (30, N'../Image/Alcatraz Island/img(233).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (31, N'../Image/Alcatraz Island/img(234).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (32, N'../Image/Alcatraz Island/img(235).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (33, N'../Image/Alcatraz Island/img(236).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (34, N'../Image/Alcatraz Island/img(237).JPG', 1)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (35, N'../Image/Alcatraz Island/img(238).JPG', 1)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (36, N'../Image/Antelope Canyon/img(315).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (37, N'../Image/Antelope Canyon/img(269).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (38, N'../Image/Antelope Canyon/img(270).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (39, N'../Image/Antelope Canyon/img(271).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (40, N'../Image/Antelope Canyon/img(272).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (41, N'../Image/Antelope Canyon/img(273).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (42, N'../Image/Antelope Canyon/img(274).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (43, N'../Image/Antelope Canyon/img(275).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (44, N'../Image/Antelope Canyon/img(276).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (45, N'../Image/Antelope Canyon/img(277).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (46, N'../Image/Antelope Canyon/img(278).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (47, N'../Image/Antelope Canyon/img(309).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (48, N'../Image/Antelope Canyon/img(310).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (49, N'../Image/Antelope Canyon/img(311).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (50, N'../Image/Antelope Canyon/img(312).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (51, N'../Image/Antelope Canyon/img(313).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (52, N'../Image/Antelope Canyon/img(314).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (53, N'../Image/Antelope Canyon/img(316).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (54, N'../Image/Antelope Canyon/img(317).JPG', 2)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (55, N'../Image/Antelope Canyon/img(318).JPG', 2)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (56, N'../Image/Calico Ghost Town/img(44).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (57, N'../Image/Calico Ghost Town/img(41).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (58, N'../Image/Calico Ghost Town/img(42).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (59, N'../Image/Calico Ghost Town/img(43).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (60, N'../Image/Calico Ghost Town/img(45).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (61, N'../Image/Calico Ghost Town/img(46).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (62, N'../Image/Calico Ghost Town/img(47).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (63, N'../Image/Calico Ghost Town/img(48).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (64, N'../Image/Calico Ghost Town/img(49).JPG', 3)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (65, N'../Image/Calico Ghost Town/img(50).JPG', 3)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (66, N'../Image/Grand Canyon National Park/img(279).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (67, N'../Image/Grand Canyon National Park/img(280).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (68, N'../Image/Grand Canyon National Park/img(281).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (69, N'../Image/Grand Canyon National Park/img(282).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (70, N'../Image/Grand Canyon National Park/img(283).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (71, N'../Image/Grand Canyon National Park/img(284).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (72, N'../Image/Grand Canyon National Park/img(285).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (73, N'../Image/Grand Canyon National Park/img(286).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (74, N'../Image/Grand Canyon National Park/img(287).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (75, N'../Image/Grand Canyon National Park/img(288).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (76, N'../Image/Grand Canyon National Park/img(289).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (77, N'../Image/Grand Canyon National Park/img(290).JPG', 4)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (78, N'../Image/Grand Canyon National Park/img(319).JPG', 4)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (79, N'../Image/Hollywood/img(292).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (80, N'../Image/Hollywood/img(291).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (81, N'../Image/Hollywood/img(293).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (82, N'../Image/Hollywood/img(294).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (83, N'../Image/Hollywood/img(295).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (84, N'../Image/Hollywood/img(296).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (85, N'../Image/Hollywood/img(297).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (86, N'../Image/Hollywood/img(298).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (87, N'../Image/Hollywood/img(299).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (88, N'../Image/Hollywood/img(300).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (89, N'../Image/Hollywood/img(301).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (90, N'../Image/Hollywood/img(302).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (91, N'../Image/Hollywood/img(303).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (92, N'../Image/Hollywood/img(304).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (93, N'../Image/Hollywood/img(305).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (94, N'../Image/Hollywood/img(306).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (95, N'../Image/Hollywood/img(307).JPG', 5)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (96, N'../Image/Hollywood/img(308).JPG', 5)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (97, N'../Image/Joshua Tree/img(92).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (98, N'../Image/Joshua Tree/img(93).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (99, N'../Image/Joshua Tree/img(94).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (100, N'../Image/Joshua Tree/img(95).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (101, N'../Image/Joshua Tree/img(96).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (102, N'../Image/Joshua Tree/img(97).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (103, N'../Image/Joshua Tree/img(98).JPG', 6)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (104, N'../Image/Joshua Tree/img(99).JPG', 6)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (105, N'../Image/Las Vegas/img(240).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (106, N'../Image/Las Vegas/img(241).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (107, N'../Image/Las Vegas/img(242).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (108, N'../Image/Las Vegas/img(243).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (109, N'../Image/Las Vegas/img(244).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (110, N'../Image/Las Vegas/img(245).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (111, N'../Image/Las Vegas/img(246).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (112, N'../Image/Las Vegas/img(247).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (113, N'../Image/Las Vegas/img(248).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (114, N'../Image/Las Vegas/img(249).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (115, N'../Image/Las Vegas/img(250).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (116, N'../Image/Las Vegas/img(251).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (117, N'../Image/Las Vegas/img(252).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (118, N'../Image/Las Vegas/img(253).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (119, N'../Image/Las Vegas/img(254).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (120, N'../Image/Las Vegas/img(255).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (121, N'../Image/Las Vegas/img(256).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (122, N'../Image/Las Vegas/img(257).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (123, N'../Image/Las Vegas/img(258).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (124, N'../Image/Las Vegas/img(259).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (125, N'../Image/Las Vegas/img(260).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (126, N'../Image/Las Vegas/img(262).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (127, N'../Image/Las Vegas/img(263).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (128, N'../Image/Las Vegas/img(264).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (129, N'../Image/Las Vegas/img(265).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (130, N'../Image/Las Vegas/img(266).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (131, N'../Image/Las Vegas/img(267).JPG', 7)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (132, N'../Image/Las Vegas/img(268).JPG', 7)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (133, N'../Image/Organ Pipe National Park/img(76).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (134, N'../Image/Organ Pipe National Park/img(77).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (135, N'../Image/Organ Pipe National Park/img(78).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (136, N'../Image/Organ Pipe National Park/img(79).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (137, N'../Image/Organ Pipe National Park/img(80).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (138, N'../Image/Organ Pipe National Park/img(81).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (139, N'../Image/Organ Pipe National Park/img(82).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (140, N'../Image/Organ Pipe National Park/img(83).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (141, N'../Image/Organ Pipe National Park/img(84).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (142, N'../Image/Organ Pipe National Park/img(85).JPG', 8)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (143, N'../Image/Organ Pipe National Park/img(86).JPG', 8)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (144, N'../Image/Sequoia National Park/img(21).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (145, N'../Image/Sequoia National Park/img(19).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (146, N'../Image/Sequoia National Park/img(20).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (147, N'../Image/Sequoia National Park/img(22).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (148, N'../Image/Sequoia National Park/img(23).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (149, N'../Image/Sequoia National Park/img(24).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (150, N'../Image/Sequoia National Park/img(25).JPG', 9)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (151, N'../Image/Sequoia National Park/img(30).JPG', 9)

INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (152, N'../Image/Yosemite National Park/img(10).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (153, N'../Image/Yosemite National Park/img(07).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (154, N'../Image/Yosemite National Park/img(08).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (155, N'../Image/Yosemite National Park/img(09).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (156, N'../Image/Yosemite National Park/img(11).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (157, N'../Image/Yosemite National Park/img(12).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (158, N'../Image/Yosemite National Park/img(13).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (159, N'../Image/Yosemite National Park/img(14).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (160, N'../Image/Yosemite National Park/img(15).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (161, N'../Image/Yosemite National Park/img(16).JPG', 10)
INSERT INTO Images (Id, ImageURL, Story_Id) VALUES (162, N'../Image/Yosemite National Park/img(17).JPG', 10)
SET IDENTITY_INSERT Images OFF