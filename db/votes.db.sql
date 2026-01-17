--
-- File generated with SQLiteStudio v3.4.17 on sestd. janv. 17 16:43:08 2026
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Categories
CREATE TABLE Categories (
    Id       INTEGER NOT NULL
                     CONSTRAINT PK_Categories PRIMARY KEY AUTOINCREMENT,
    ParentId INTEGER NULL,
    Name     TEXT    NOT NULL,
    Code     TEXT    NULL,
    ViewType INTEGER NOT NULL
                     DEFAULT 0,
    CONSTRAINT FK_CATEGORT_PARENTID FOREIGN KEY (
        ParentId
    )
    REFERENCES Categories (Id) ON DELETE CASCADE
);

INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (1, NULL, 'Politika un sabiedriba', 'A001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (2, NULL, 'Pasaules zinas', 'A002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (3, NULL, 'Zinatne un tehnologijas', 'A003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (4, NULL, 'Izklaide un mediji', 'A004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (5, NULL, 'Tehnologijas un inovacijas', 'A005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (6, NULL, 'Sports', 'A006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (7, NULL, 'Kultura un dzivesveids', 'A007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (8, NULL, 'Viedokli un sabiedriba', 'A008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (9, NULL, 'Internets un popkultura', 'A009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (10, 1, 'Politiki', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (11, 1, 'Valdibas politika', 'B002', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (12, 1, 'Protesti un kustibas', 'B003', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (13, 1, 'Socialais taisnigums un vienlidziba', 'B004', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (14, 1, 'Starptautiskas attiecibas', 'B005', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (15, 1, 'Imigracijas politika', 'B006', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (16, 1, 'Velešanas', 'B007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (17, 2, 'Konflikti un kari', 'B001', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (18, 2, 'Konflikti un kari — aktualie notikumi', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (20, 2, 'Globala ekonomika', 'B003', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (21, 2, 'Cilvektiesibas', 'B004', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (22, 3, 'Kosmosa izpete', 'B001', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (23, 3, 'AI un robotika', 'B002', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (24, 3, 'Medicinas sasniegumi', 'B003', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (25, 3, 'Vides zinatne', 'B004', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (26, 4, 'Filmas', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (27, 4, 'TV un straumešana', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (28, 4, 'Muzika', 'B003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (29, 4, 'Slavenibas', 'B004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (30, 4, 'Speles', 'B005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (31, 5, 'Sikriki', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (32, 5, 'Lietotnes un socialie mediji', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (33, 6, 'Komandas un sportisti', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (34, 6, 'Pasakumi', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (35, 6, 'Sporta kultura', 'B003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (36, 7, 'Mode', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (37, 7, 'Ediens', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (38, 7, 'Celojumi', 'B003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (39, 7, 'Veseliba un fitness', 'B004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (40, 8, 'Etika un morale', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (41, 8, 'Izglitiba', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (42, 8, 'Darbs un ekonomika', 'B003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (43, 9, 'Mimi un popularas tendences', 'B001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (44, 9, 'Ietekmetaji un YouTube veidotaji', 'B002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (45, 9, 'Fanu kopienas (Fandomi)', 'B003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (46, 18, 'Krievijas un Ukrainas konflikts', 'C001', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (47, 18, 'Izraelas un Palestinas konflikts', 'C002', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (48, 26, 'Jaunie izlaidumi', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (49, 26, 'Apbalvojumi un festivali', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (50, 26, 'Režisori un aktieri', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (51, 26, 'Franšizes (Marvel, DC utt.)', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (52, 27, 'Populari seriali', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (53, 27, 'Straumešanas platformas (Netflix, HBO utt.)', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (54, 27, 'Realitates šovi', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (55, 27, 'Dokumentalas filmas', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (56, 28, 'Jauni albumi un singli', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (57, 28, 'Makslinieki un grupas', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (58, 28, 'Muzikas balvas (Grammy utt.)', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (59, 28, 'Žanri (pops, hiphops, roks utt.)', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (60, 29, 'Publiski pazinojumi', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (61, 29, 'Pretrunas', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (62, 29, 'Mode un stils', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (63, 30, 'Jaunie izlaidumi', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (64, 30, 'eSports un sacensibas', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (65, 30, 'Konsoles un platformas', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (66, 31, 'Viedtalruni', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (67, 31, 'Valkajamas ierices', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (68, 31, 'Viedas majas ierices', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (69, 32, 'Platformas funkcijas un atjauninajumi', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (70, 32, 'Popularas tendences', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (71, 32, 'Ietekmetaji', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (72, 33, 'Speletaju sniegums', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (73, 33, 'Parcelšanas un mainas', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (74, 34, 'Turniri (Pasaules kauss, Olimpiskas speles utt.)', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (75, 34, 'Pretrunigi momenti', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (76, 35, 'Fanatiku uzvediba', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (77, 35, 'Dzimumu lidztiesiba sporta', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (78, 36, 'Tendences', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (79, 36, 'Dizaineri', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (80, 37, 'Kulinarijas tendences', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (81, 37, 'Restorani un šefpavari', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (82, 38, 'Galamerki', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (83, 38, 'Ilgtspejigs turisms', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (84, 39, 'Dietas un labsajuta', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (85, 39, 'Fitnesa izaicinajumi', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (86, 40, 'Privatums', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (87, 40, 'Cenzura', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (88, 40, 'AI etika', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (89, 41, 'Macibu tendences', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (90, 41, 'Studentu dzive', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (91, 41, 'Tiešsaistes macibu platformas', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (92, 42, 'Attalinatais darbs', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (93, 42, 'AI un darbs', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (94, 42, 'Dzives dardziba', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (95, 10, 'Donalds Tramps', 'C001', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (96, 11, 'Ekonomikas un fiskala politika', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (97, 11, 'Vides un energetikas politika', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (98, 11, 'Veselibas aprupes politika', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (99, 11, 'Izglitibas politika', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (100, 11, 'Regulejums un parvaldiba', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (101, 11, 'Sociala un pilsoniska politika (orienteta uz parvaldibu)', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (102, 11, 'Digitala un datu politika', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (103, 11, 'Infrastruktura un attistiba', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (104, 12, 'Socialais taisnigums un vienlidziba', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (105, 12, 'Klimata un vides kustibas', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (106, 12, 'Cilvektiesibas un pilsoniskas brivibas', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (107, 12, 'Darba un ekonomiskas kustibas', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (108, 12, 'Identitates un parstavibas kustibas', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (109, 12, 'Digitalais aktivisms un mediju kustibas', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (110, 12, 'Metodes, legitimitate un ietekme', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (111, 12, 'Globalas un transnacionalas kustibas', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (112, 13, 'Vienlidziba un godigums', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (113, 13, 'Dzimums un seksualitate', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (114, 13, 'LGBTQ+ tiesibas un ieklaušana', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (115, 13, 'Rasiska un etniska vienlidziba', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (116, 13, 'Invaliditate un pieejamiba', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (117, 13, 'Darbavieta un ekonomiska vienlidziba', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (118, 13, 'Izglitiba un iespejas', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (119, 13, 'Sociala identitate un piederiba', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (120, 14, 'Globalas varas dinamika', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (121, 14, 'Diplomatija un sadarbiba', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (122, 14, 'Regionalas attiecibas', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (123, 14, 'Globalizacija un parorientacija', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (124, 14, 'Konflikti un starpnieciba', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (125, 14, 'Sabiedribas viedoklis un globalais tels', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (126, 15, 'Vispareja imigracijas politika', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (127, 15, 'Robežkontrole un izpilde', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (128, 15, 'Imigracija un darbaspeks', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (129, 15, 'Integracija un sociala politika', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (130, 15, 'Majokli un sabiedriskie pakalpojumi', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (131, 15, 'Begli un humanitara aizsardziba', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (132, 15, 'Celi uz juridisko statusu un pilsonibu', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (133, 15, 'Sabiedribas viedoklis un mediji', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (134, 17, 'Celoni un dinamika', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (135, 17, 'Globala ietekme', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (136, 17, 'Militara taktika un strategija', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (137, 17, 'Civiliedzivotaju dzive un humanitarie jautajumi', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (138, 17, 'Vesturiskie salidzinajumi', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (139, 17, 'Konfliktu risinašana un miers', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (140, 17, 'Ietekme uz globalajam sabiedribam', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (141, 17, 'Miers un nakotnes perspektivas', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (142, 95, 'Vadiba un parvaldiba', 'D001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (143, 95, 'Velešanas un demokratija', 'D002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (144, 95, 'Vadiba un lemumu pienemšana', 'D003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (145, 95, 'Mediji, patiesiba un sabiedribas uzticiba', 'D004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (146, 95, 'Starptautiskas attiecibas un globala ietekme', 'D005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (147, 95, 'Ekonomikas un sociala politika', 'D006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (148, 95, 'Juridiska un etiska atbildiba', 'D007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (149, 95, 'Vesturiskais mantojums', 'D008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (150, 10, 'Donalds Tramps - personiba', 'C002', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (151, 150, 'Publiska komunikacija un tonis', 'D002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (153, 22, 'Meness misijas', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (154, 22, 'Marsa izpete', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (155, 22, 'Sateliti un kosmosa infrastruktura', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (156, 22, 'Tala kosmosa izpete', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (157, 22, 'Cilveka lidojumi kosmosa un kosmosa apmetnes', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (158, 22, 'Komerciala kosmosa industrija', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (159, 22, 'Arpuszemes dzivibas meklejumi', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (160, 22, 'Etika un politika', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (161, 23, 'Maksligais intelekts (visparigi)', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (162, 23, 'AI drošiba un regulejums', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (163, 23, 'Automatizacija un darbavietas', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (164, 23, 'AI veselibas aprupe', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (165, 23, 'AI radošuma un medijos', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (166, 23, 'Cilveka un robota mijiedarbiba', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (167, 23, 'Militara joma un drošiba', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (168, 23, 'AI transporta', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (169, 23, 'Robotika ikdienas dzive', 'C009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (170, 23, 'Etika un filozofija', 'C010', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (171, 23, 'Vai AI ir parvertets?', 'C011', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (172, 23, 'AI burbula jautajums', 'C012', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (173, 23, 'Korporativais spiediens', 'C013', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (174, 23, 'Faktiskais lietderigums un uzticamiba', 'C014', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (175, 23, 'Sabiedribas uztvere un uzticešanas', 'C015', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (176, 23, 'Petniecibas stavoklis', 'C016', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (177, 24, 'Genetika un genu redigešana', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (178, 24, 'Biotehnologija un sintetiska biologija', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (179, 24, 'Vakcinas un imunsistema', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (180, 24, 'Neirozinatne un smadzenu tehnologijas', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (181, 24, 'Regenerativa medicina', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (182, 24, 'Ilgmužiba un novecošana', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (183, 24, 'Mediciniskais maksligais intelekts un diagnostika', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (184, 24, 'Veža petnieciba', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (185, 24, 'Sabiedribas veseliba un etika', 'C009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (186, 24, 'Pandemijas un globala gataviba', 'C010', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (187, 25, 'Klimata parmainas', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (188, 25, 'Biologiska daudzveidiba un ekosistemas', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (189, 25, 'Piesarnojums un atkritumi', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (190, 25, 'Gaisa un udens kvalitate', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (191, 25, 'Energija un ilgtspejiba', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (192, 25, 'Atkritumi un parstrade', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (193, 25, 'Atmežošana un zemes izmantošana', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (194, 25, 'Lauksaimnieciba un partikas sistemas', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (195, 25, 'Okeani un juras dziviba', 'C009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (196, 25, 'Vides tehnologijas un inovacijas', 'C010', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (197, 25, 'Vides politika un etika', 'C011', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (198, 25, 'Sabiedribas uztvere un pretrunas', 'C012', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (199, 25, 'Vides politika un atbildiba', 'C013', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (200, 25, 'Jauni un aktuali jautajumi', 'C014', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (201, 20, 'Globalie tirgi un izaugsme', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (202, 20, 'Inflacija un dzives dardziba', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (203, 20, 'Tirdznieciba un globalizacija', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (204, 20, 'Tehnologijas un automatizacija', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (205, 20, 'Energetika un resursi', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (206, 20, 'Nevienlidziba un bagatibas sadale', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (207, 20, 'Globalas finanses un banku sistema', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (208, 20, 'Darbs un darba tirgi', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (209, 20, 'Geopolitiska un regionala ekonomika', 'C009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (210, 20, 'Nakotnes tendences un riski', 'C010', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (211, 2, 'Tarifi un sankcijas', 'B005', 1);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (212, 21, 'Pamattiesibas un brivibas', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (213, 21, 'Vienlidziba un nediskriminacija', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (214, 21, 'Tiesiskums un juridiskas tiesibas', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (215, 21, 'Pilsoniskas brivibas un uzraudziba', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (216, 21, 'Humanitarie jautajumi', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (217, 21, 'Ekonomiskas un socialas tiesibas', 'C006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (218, 21, 'Sieviešu tiesibas', 'C007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (219, 21, 'Tehnologijas, maksligais intelekts un cilvektiesibas', 'C008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (220, 21, 'Apdraudetas tiesibas', 'C009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (221, 21, 'Debates un etiskas dilemmas', 'C010', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (222, 21, 'Rasisms un etniska nevienlidziba', 'C011', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (223, 21, 'LGBTQ+ tiesibas un vienlidziba', 'C012', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (224, 21, 'Sieviešu tiesibas un aborti', 'C013', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (225, 21, 'Politiskais radikalisms un ekstremisms', 'C014', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (226, 21, 'Tiešsaistes uzmakšanas, naida runa un dezinformacija', 'C015', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (227, 21, 'Migracija, begli un patverums', 'C016', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (228, 21, 'Pilsoniskas brivibas un valsts vara', 'C017', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (229, 21, 'Ticibas un varda briviba', 'C018', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (230, 150, 'Ciena pret oponentiem un institucijam', 'D003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (231, 150, 'Moralas un etiskas gaidas', 'D004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (232, 150, 'Ietekme uz sabiedribu un publisko diskursu', 'D005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (233, 150, 'Salidzinajumi un ilgtermina ietekme', 'D006', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (234, 150, 'Apgalvojumi, apsudzibas un sabiedribas reakcijas', 'D007', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (235, 150, 'Ar seksu saistitas pretrunas (Rupigi formulets)', 'D008', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (236, 150, 'Tiesas lietas, tiesas cinas un atbildiba', 'D009', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (237, 150, 'Etiskie jautajumi un sabiedribas uzticešanas', 'D010', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (238, 211, 'Efektivitate', 'C001', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (239, 211, 'Pamatojums un taisnigums', 'C002', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (240, 211, 'Ekonomiska ietekme un traucejumi', 'C003', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (241, 211, 'Globala sadarbiba un diplomatija', 'C004', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (242, 211, 'Ilgtermina sekas', 'C005', 0);
INSERT INTO Categories (Id, ParentId, Name, Code, ViewType) VALUES (243, 150, 'Kopejais iespaids', 'D011', 0);

-- Table: Recommendations
CREATE TABLE Recommendations (
    Id          INTEGER NOT NULL
                        CONSTRAINT PK_Recommendations PRIMARY KEY AUTOINCREMENT,
    UserId      INTEGER NOT NULL,
    Text        TEXT    NULL,
    DateCreated TEXT    NOT NULL,
    State       INTEGER NOT NULL
                        DEFAULT 0,
    CONSTRAINT FK_RECOMMENDATION_USERID FOREIGN KEY (
        UserId
    )
    REFERENCES Users (Id) ON DELETE CASCADE
);


-- Table: Statements
CREATE TABLE Statements (
    Id          INTEGER NOT NULL
                        CONSTRAINT PK_Statements PRIMARY KEY AUTOINCREMENT,
    CategoryId  INTEGER NOT NULL,
    Name        TEXT    NOT NULL,
    DateCreated TEXT    NOT NULL,
    Code        TEXT    NULL,
    Votes1      INTEGER NOT NULL,
    Votes2      INTEGER NOT NULL,
    Votes3      INTEGER NOT NULL,
    CONSTRAINT FK_STATEMENT_CATID FOREIGN KEY (
        CategoryId
    )
    REFERENCES Categories (Id) ON DELETE CASCADE
);

INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (1, 96, 'Vai valdibam butu japalielina nodokli turigiem iedzivotajiem, lai finansetu socialas programmas?', '2025-11-07 00:00:00', 'D001', 2, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (2, 96, 'Valsts izdevumos prioritate jadod infrastrukturai, nevis labklajibas programmam.', '2025-11-07 00:00:00', 'D002', 1, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (3, 96, 'Universalais pamatienakums ir dzivotspejigs risinajums ar automatizaciju saistitajam bezdarbam.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (4, 96, 'Valdibas paradu ierobežojumi jaisteno konstitucionala karta.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (5, 96, 'Vietejo nozaru subsidijas ilgtermina nodara vairak launuma neka labuma.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (6, 97, 'Fosila kurinama subsidijas ir pakapeniski jaatcel nakamas desmitgades laika.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (7, 97, 'Valdibam jaievieš oglekla nodokli korporacijam, pamatojoties uz emisijam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (8, 97, 'Kodolenergijai jabut centralajai nacionalas energetikas politikas dalai.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (9, 97, 'Investicijam sabiedriskaja transporta jabut prioritarai attieciba pret jaunu celu buvi.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (10, 97, 'Vienreizlietojama plastmasa jaaizliedz visa valsti.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (11, 98, 'Veselibas aprupei jabut pilniba valsts finansetai un pieejamai visiem iedzivotajiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (12, 98, 'Valdibam jaregule farmacijas cenas, lai nodrošinatu pieejamibu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (13, 98, 'Vakcinacijai jabut obligatai pret noveršamam slimibam.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (14, 98, 'Garigas veselibas aprupe ir pelnijusi tadu pašu finansejuma prioritati ka fiziska veseliba.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (15, 98, 'Privatajiem veselibas aprupes pakalpojumu sniedzejiem jabut integretiem sabiedriskaja sistema.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (16, 99, 'Valsts universitatem pilsoniem jabut bezmaksas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (17, 99, 'Skolu finansejumam nevajadzetu but atkarigam no vietejiem nekustama ipašuma nodokliem.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (18, 99, 'Valdibai vairak jainveste profesionalas un tehniskas apmacibas programmas.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (19, 99, 'Digitalajai pratibai jabut obligatam macibu priekšmetam visas valsts skolas.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (20, 99, 'Nacionala standartizeta testešana nodara vairak launuma neka labuma.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (21, 100, 'Korporaciju lobešana ir stingri jaierobežo ar likumu.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (22, 100, 'Valsts amatpersonam jasaskaras ar stingrakiem sodiem par korupciju un lidzeklu izškerdešanu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (23, 100, 'Valdibas ligumiem vienmer jabut publiski pieejamiem.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (24, 100, 'Pilsonu asamblejam jabut oficialai padomdevejas lomai politikas veidošana.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (25, 100, 'Terminu ierobežojumiem jaattiecas uz visam veletajam amatpersonam, tostarp likumdevejiem.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (26, 101, 'Publisko majoklu programmas ir japaplašina, lai risinatu bezpajumtniecibas problemu.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (27, 101, 'Labklajibas pabalstiem jabut saistitiem ar dalibu darba apmacibas programmas.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (28, 101, 'Pilsonibas parbaudes jaieklauj pilsoniska izglitiba, nevis tikai vesture un valoda.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (29, 102, 'Valdibam jabut tiesibam regulet socialo mediju algoritmus.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (30, 102, 'Publisko datu vakšanai (piemeram, drošibai vai petniecibai) vienmer jabut nepieciešamai piekrišanai.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (31, 102, 'Valdibas sejas atpazišanas izmantošana publiskas vietas jaaizliedz.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (32, 102, 'Kiberdrošiba jauzskata par kritiski svarigu nacionalo infrastrukturu.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (33, 102, 'Publiska piekluve atvertiem datiem jabut likumigai tiesibai.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (34, 103, 'Lieli infrastrukturas projekti japaklauj pilsonu referendumam.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (35, 103, 'Atrgaitas dzelzcelš japrioritize attieciba pret gaisa celojumu paplašinašanu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (36, 103, 'Valdibas majoklu projektos jaieklauj vides ilgtspejibas standarti.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (37, 103, 'Publiski-privatas partneribas jabut noklusejuma modelim lieliem infrastrukturas projektiem.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (38, 103, 'Pilsetu attistibas politikai jabut verstai uz atkaribas no automašinam samazinašanu.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (39, 104, 'Masu protesti ir efektivs veids, ka radit ilgtermina socialas parmainas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (40, 104, 'Kustibas, piemeram, #MeToo, ir neatgriezeniski mainijušas dzimumu normas sabiedriba.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (41, 104, 'Publiskas demonstracijas ir nepieciešamas, ja tradicionalie politiskie kanali izgažas.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (42, 104, 'Musdienu aktivisms parak liela mera balstas uz socialo mediju redzamibu, nevis realo ietekmi.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (43, 104, 'Pilsoniska nepaklaušanas ir likumiga protesta forma demokratiska sabiedriba.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (44, 105, 'Klimata protesti (piemeram, Piektdienas nakotnei) ir butiski ietekmejuši valdibas ricibu.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (45, 105, 'Celu vai infrastrukturas blokešana klimata protestos ir pamatota lielaka labuma del.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (46, 105, 'Vides kustibam vairak jasadarbojas ar uznemumiem, nevis japretojas tiem.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (47, 105, 'Jauniešu vaditais klimata aktivisms ir mainijis sabiedribas viedokli par ilgtspejibu.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (48, 105, 'Protesti, kas versti pret fosila kurinama uznemumiem, ir efektivaki neka pret valdibam.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (49, 106, 'Pulcešanas briviba jasarga pat pretrunigiem vai nepopulariem merkiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (50, 106, 'Protesti pret policijas brutalitati ir uzlabojuši atbildibu tiesibaizsardzibas iestades.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (51, 106, 'Tiešsaistes kustibas ir tikpat specigas ka fiziskie protesti izpratnes veicinašana.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (52, 106, 'Valdibam nevajadzetu ierobežot protestus sabiedribas drošibas varda.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (53, 106, 'Starptautiskas solidaritates kustibam (piemeram, par Palestinu, Ukrainu utt.) ir reala politiska ietekme.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (54, 107, 'Streiki joprojam ir aktuals un specigs instruments darba nemejiem musdienu ekonomika.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (55, 107, '"Gig" ekonomikas darbiniekiem ir nepieciešamas jaunas kolektivas ricibas formas arpus tradicionalajam arodbiedribam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (56, 107, 'Valsts sektora streiki jaierobežo, ja tiek ietekmeti butiski pakalpojumi.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (57, 107, 'Tiešsaistes pula finansešana ir mainijusi veidu, ka tiek organizetas un finansetas darba kustibas.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (58, 107, 'Kustibas, kas iestajas par cetru dienu darba nedelu, desmitgades laika klus par galveno tendenci.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (59, 108, 'Praida pasakumi galvenokart ir politiski, nevis tikai kulturas svinibas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (60, 108, 'Socialas kustibas par dzimumu un LGBTQ+ tiesibam ir parveidojušas korporativo kulturu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (61, 108, 'Parstavibas aktivisms medijos un izklaide veicina realu socialo progresu.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (62, 108, 'Kulturas apropriacijas protesti ir svariga minoritates identitates aizsardzibas sastavdala.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (63, 108, 'Tiešsaistes diskusijas par identitates kustibam bieži aizeno realas politikas problemas.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (64, 109, 'Hashtag aktivisms var radit ilgstošu izpratni, pat ja tas sakas tiešsaiste.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (65, 109, 'Socialo mediju algoritmi vairak pastiprina škelošu aktivismu neka konstruktivas debates.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (66, 109, 'Anonimas tiešsaistes kustibas (piemeram, haktivisms) var uzskatit par likumigu protestu.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (67, 109, 'Digitala cenzura aktivistu saturam ir pieaugoša globala problema.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (68, 109, 'Virusu kampanas (piemeram, #BlackLivesMatter vai #FreeBritney) demonstre kolektivas uzmanibas speku.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (69, 110, 'Mierigs protests ir efektivaks par traucejošu protestu merku sasniegšana.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (70, 110, 'Robežu starp protestu un nemieriem mediju stastijumos bieži vien define negodigi.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (71, 110, 'Kustibas panakumi javerte pec politikas mainas, nevis publiskas redzamibas.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (72, 110, 'Maksla un kultura var but specigas protesta formas.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (73, 110, 'Kustibas bez skaidras vadibas joprojam var sasniegt ilgtermina ietekmi.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (74, 111, 'Globalie protesti, kas koordineti tiešsaiste, maina veidu, ka cilveki doma par aktivismu.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (75, 111, 'Starptautiskie boikoti ir likumiga musdienu protesta forma.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (76, 111, 'Mazaku valstu pamatkustibas globalie mediji bieži ignore.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (77, 111, 'Parrobežu solidaritate starp kustibam stiprina demokratiju visa pasaule.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (78, 111, 'Nevardarbigas protesta kustibas vesturiski ir sasniegušas noturigakas parmainas neka brunotas sacelšanas.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (79, 112, 'Patiesa vienlidziba prasa atškirigu attieksmi pret tiem, kuri ir sliktakas sakuma pozicijas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (80, 112, 'Uz nopelniem balstitas sistemas bieži ir neobjektivas nevienlidzigu sakuma apstaklu del.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (81, 112, 'Vienlidzigas iespejas ir svarigakas par vienlidzigiem rezultatiem.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (82, 112, 'Pozitiva diskriminacija joprojam ir nepieciešama socialas vienlidzibas sasniegšanai.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (83, 112, 'Bagatibas nevienlidziba ir lielakas dalas socialas netaisnibas pamatcelonis.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (84, 113, 'Dzimumu atalgojuma atškiribas atspogulo sistemisku diskriminaciju, nevis individualas izveles.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (85, 113, 'Dzimumneitralam tualetem jabut standarta visas sabiedriskajas ekas.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (86, 113, 'Sabiedriba joprojam nenoverte tradicionali "sieviešu" profesijas, piemeram, skolotaju vai medmasu.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (87, 113, 'Virieši saskaras ar pieaugošu stigmu, iestajoties par dzimumu jautajumiem, kas tos skar.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (88, 113, 'Izglitibai par dzimumidentitati jasakas sakumskola.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (89, 114, 'Juridiska nebinaro identitašu atzišana jaievieš visa valsti.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (90, 114, 'Religijas briviba nekad nedrikst atcelt LGBTQ+ tiesibas.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (91, 114, 'Korporacijam, kas tirgojas Praida menesi, jauzrada ari reala iekšeja ieklaušana.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (92, 114, 'Skolas sava macibu programma jaieklauj LGBTQ+ vesture.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (93, 114, 'Vienpratigu dzimumu adopcija jauzskata par vienlidzigu heteroseksualai adopcijai.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (94, 115, 'Sistemisks rasisms joprojam ir dzili iesaknojies musdienu iestades.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (95, 115, 'Parstavibai medijos ir izmerama ietekme uz sabiedribas attieksmi pret minoritatem.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (96, 115, 'Kulturas apropriacija var but kaitiga, pat ja tas noluki ir labi.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (97, 115, 'Valdibam jaseko un japublice dati par rasu atškiribam ienakumos un veseliba.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (98, 115, '"Krasu aklums" ka socials ideals bieži ignore strukturalo nevienlidzibu.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (99, 116, 'Sabiedriskam telpam un digitalam platformam jabut pilniba pieejamam pec dizaina, nevis ka papildinajumam.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (100, 116, 'Darba deveji nedara pietiekami, lai integretu cilvekus ar invaliditati darbaspekos.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (101, 116, 'Invaliditates attelojums medijos bieži pastiprina stereotipus.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (102, 116, 'Garigas veselibas stavokli jauztver ar tadu pašu darba vietas aizsardzibu ka fiziskas invaliditates.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (103, 116, 'Pieejamiba ir juridiski jaisteno pat maziem uznemumiem un jaunuznemumiem.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (104, 117, 'Atalgojuma parredzamibas likumi palidzetu noverst atalgojuma atškiribas visas grupas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (105, 117, 'Neapmaksatas prakses veicina škiru nevienlidzibu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (106, 117, 'Daudzveidibas noligšanas iniciativam jakoncentrejas uz prasmem un ieklaušanu, nevis kvotam.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (107, 117, 'Attalinatais darbs ir uzlabojis pieejamibu un godigumu nodarbinatiba.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (108, 117, 'Diskriminacijai darbavieta, pamatojoties uz izskatu vai akcentu, jabut nelikumigai.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (109, 118, 'Piekluve augstakajai izglitibai nedrikst but atkariga no gimenes ienakumiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (110, 118, 'Valsts skolu finansejuma prioritate jadod nelabveligiem rajoniem.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (111, 118, 'Macibu programmas jau agrina vecuma jaieklauj sociala taisniguma izglitiba.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (112, 118, 'Privatas skolas paplašina socialo nevienlidzibu un tas jaregule stingrak.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (113, 118, 'Studentu kreditu dzešana palidz samazinat sistemisko nevienlidzibu.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (114, 119, 'Škiras identitatei ir lielaka loma socialaja škelšana neka rasei vai dzimumam.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (115, 119, 'Privilegijas ir realas, tacu tas var pastavet lidzas personigam grutibam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (116, 119, 'Socialie mediji ir pastiprinajuši izpratni par nevienlidzibu, bet ari padzilinajuši polarizaciju.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (117, 119, 'Aliansei jaietver reala riciba, nevis tikai tiešsaistes izpausmes.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (118, 119, 'Ikvienam ir loma nevienlidzibas samazinašana, ne tikai politikas veidotajiem vai aktivistiem.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (119, 120, 'Vai pasaule klust arvien multipolaraka, nevis domine viena lielvalsts?', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (120, 120, 'Kinas globala ietekme nakamaja desmitgade parspes ASV ietekmi.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (121, 120, 'Regionalas alianses, piemeram, BRICS, parveidos globalo parvaldibu 2030. gados.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (122, 120, 'Militaras alianses, piemeram, NATO, joprojam ir butiskas 21. gadsimta.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (123, 120, 'Maiga vara (kultura, tehnologijas, diplomatija) ir efektivaka par militaro speku musdienu geopolitika.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (124, 121, 'Apvienoto Naciju Organizacijai joprojam ir izškiroša loma liela meroga konfliktu noveršana.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (125, 121, 'Globalajam organizacijam (ANO, PVO, PTO) ir nepieciešama pilniga reforma, lai saglabatu nozimigumu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (126, 121, 'Starptautiskas sankcijas ir efektivs diplomatisks instruments.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (127, 121, 'Miera uzturešanas misijas musdienu konfliktos nodara vairak launuma neka labuma.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (128, 121, 'Daudzpusejus ligumus aizstaj istermina, darijumu diplomatija.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (129, 122, 'Eiropas Savieniba nakamajos 20 gados saglabas vienotibu.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (130, 122, 'Afrikas regionalajam aliansem bus galvena loma globalaja politika lidz 2050. gadam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (131, 122, 'Spriedze Indijas un Klusa okeana regiona ir šis desmitgades noteicošais izaicinajums.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (132, 122, 'Latinamerikas valstis iegust lielaku neatkaribu no ASV ietekmes.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (133, 122, 'Arktiskais regions klus par nakamo lielo geopolitisko karsto punktu.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (134, 123, 'Globalizacija mainas, jo valstis prioritari pieveršas pašpalavibai.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (135, 123, 'Parrobežu datu un tehnologiju kontrole klus par jaunu geopolitiskas konkurences veidu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (136, 123, 'Klimata parmainas bus galvenais diplomatisko konfliktu celonis lidz 2040. gadam.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (137, 123, 'Migracijas politika arvien vairak veidos starptautiskas alianses.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (138, 123, 'Energetiska drošiba ir svarigakais musdienu diplomatijas virzitajspeks.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (139, 124, 'Neitralam valstim joprojam ir nozimiga loma globalo konfliktu risinašana.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (140, 124, 'Kiberuzbrukumi aizstaj tradicionalo karadarbibu ka galveno starptautisko draudu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (141, 124, 'Aizvietotajvalstu kari ir neveiksmigas globalas parvaldibas pazime.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (142, 124, 'Diplomatiskais dialogs zaude ietekmi salidzinajuma ar ekonomisko sviru.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (143, 124, 'Starptautiskajiem tiesibu aktiem ir maz realas varas lielo valstu konfliktu risinašana.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (144, 125, 'Valstu globalo reputaciju tagad veido vairak socialie mediji neka diplomatija.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (145, 125, 'Starptautiskas studentu apmainas programmas butiski veicina miera veidošanu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (146, 125, 'Sporta diplomatija (piemeram, Pasaules kauss, Olimpiskas speles) efektivi uzlabo starptautiskas attiecibas.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (147, 125, 'Kulturas diplomatija ir nenoverteta salidzinajuma ar ekonomiskajam un militarajam strategijam.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (148, 125, 'Sabiedribas uztvere var piespiest valdibas veikt vai izvairities no starptautiskam darbibam.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (149, 142, 'Donalda Trampa prezidentura neatgriezeniski mainija ASV politiku.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (150, 142, 'Trampa vadibas stils ir efektivs politisko merku sasniegšanai.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (151, 142, 'Trampa fokusešanas uz nacionalismu ir stiprinajusi ASV poziciju globali.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (152, 142, 'Trampa administracijas pieeja arpolitikai bija pragmatiskaka neka ideologiska.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (153, 143, 'Donalds Tramps joprojam ir visietekmigaka figura Republikanu partija.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (154, 143, 'Trampa apgalvojumi par velešanu krapšanu 2020. gada kaiteja uzticibai ASV demokratijai.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (155, 143, 'ASV politiskajai sistemai vajadzetu liegt kandidatiem, pret kuriem ir celtas apsudzibas, kandidet amata.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (156, 143, 'Trampa veletaju baze parstav ilgstošu politisku kustibu, nevis islaicigu tendenci.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (157, 143, 'Donalda Trampa uzvediba pec 2020. gada velešanam vajinaja demokratiskas normas ASV.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (158, 143, 'Trampa atteikšanas pienemt velešanu rezultatus radija bistamu precedentu nakotnes kandidatiem.', '2025-11-07 00:00:00', 'E006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (159, 143, '6. janvara Kapitolija nemieri neatgriezeniski kaites Trampa politiskajai mantojumam.', '2025-11-07 00:00:00', 'E007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (160, 143, 'Trampa retorika ir padzilinajusi politisko polarizaciju Amerikas Savienotajas Valstis.', '2025-11-07 00:00:00', 'E008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (161, 143, 'Amerikanu demokratija joprojam atgustas no Trampa prezidenturas raditajam škelšanam.', '2025-11-07 00:00:00', 'E009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (162, 144, 'Tramps sava administracija prioritari verteja personigo lojalitati, nevis kompetenci.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (163, 144, 'Bieža Trampa kabineta maina atspoguloja stabilas vadibas trukumu.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (164, 144, 'Trampa riciba ar COVID-19 pandemiju atklaja nopietnas vajibas krizes vadiba.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (165, 144, 'Trampa vadibas stils bija vairak performativs neka efektivs.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (166, 144, 'ASV valdiba zaudeja starptautisko uzticamibu Trampa vadiba.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (167, 145, 'Trampa bieži meligie pazinojumi mazinaja uzticibu valsts institucijam.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (168, 145, 'Nevelamas reportažas markešana ka "viltus zinas" vajinaja žurnalistikas uzticamibu.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (169, 145, 'Trampa socialo mediju izmantošana izplatija dezinformaciju vairak neka politikas butibu.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (170, 145, 'Tramps normalizeja naidigumu pret presi ASV politika.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (171, 145, 'Dezinformacijai no Trampa publiskajiem pazinojumiem bija realas sekas.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (172, 145, 'Galvenie mediji ir negodigi bijuši neobjektivi pret Donaldu Trampu.', '2025-11-07 00:00:00', 'E006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (173, 145, 'Mediju apsestiba ar Trampu palidzeja veicinat vina ietekmi.', '2025-11-07 00:00:00', 'E007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (174, 145, 'Socialo mediju aizliegumi Trampam bija pamatoti sabiedribas diskursu aizsardzibai.', '2025-11-07 00:00:00', 'E008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (175, 145, 'Trampa komunikacijas stils efektivi savieno ar parastajiem amerikaniem.', '2025-11-07 00:00:00', 'E009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (176, 145, 'Sabiedribas uztveri par Trampu vairak veido mediju stastijumi, nevis vina politika.', '2025-11-07 00:00:00', 'E010', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (177, 145, 'Trampa socialo mediju izmantošana parveidoja veidu, ka politiki komunice.', '2025-11-07 00:00:00', 'E011', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (178, 146, 'Trampa politika "Amerika pirmaja vieta" vajinaja tradicionalas ASV alianses.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (179, 146, 'Trampa pieeja Kinai noteica nakotnes ASV arpolitikas toni.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (180, 146, 'Pasaule uzskata Trampa atgriešanos pie varas ka draudu globalajai stabilitatei.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (181, 146, 'Trampa administracija uzlaboja ASV attiecibas ar dažam pretinieku valstim.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (182, 146, 'Arvalstu valdibas gatavojas iespejamai vel vienai Trampa prezidenturai.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (183, 146, 'Trampa politika "Amerika pirmaja vieta" izoleja Amerikas Savienotas Valstis no tas sabiedrotajiem.', '2025-11-07 00:00:00', 'E006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (184, 146, 'Izstašanas no starptautiskajiem ligumiem (piemeram, Parizes noliguma) kaiteja ASV globalajai ietekmei.', '2025-11-07 00:00:00', 'E007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (185, 146, 'Trampa draudziga nostaja pret autoritariem lideriem mazinaja ASV uzticamibu cilvektiesibu joma.', '2025-11-07 00:00:00', 'E008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (186, 146, 'Trampa neparedzamiba padarija pasauli mazak stabilu.', '2025-11-07 00:00:00', 'E009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (187, 146, 'Amerikas globala reputacija cieta ilgstošu kaitejumu Trampa vadiba.', '2025-11-07 00:00:00', 'E010', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (188, 147, 'Trampa nodoklu samazinajumi nesamerigi naca par labu bagatajiem.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (189, 147, 'Trampa tirdzniecibas kari kaiteja amerikanu lauksaimniekiem un pateretajiem.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (190, 147, 'Trampa ekonomiska politika palielinaja nevienlidzibu ASV.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (191, 147, 'Trampa imigracijas politika parkapa pamatcilvektiesibu principus.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (192, 147, 'Trampa administracija nenoverteja klimata parmainu steidzamibu.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (193, 147, 'ASV ekonomika Trampa vadiba darbojas labak neka vina pectecu vadiba.', '2025-11-07 00:00:00', 'E006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (194, 147, 'Trampa tirdzniecibas politika naca par labu amerikanu darba nemejiem.', '2025-11-07 00:00:00', 'E007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (195, 147, 'Trampa nodoklu reformas galvenokart palidzeja lielam korporacijam.', '2025-11-07 00:00:00', 'E008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (196, 147, 'Trampa nostaja imigracijas jautajumos stiprinaja ASV darba tirgus.', '2025-11-07 00:00:00', 'E009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (197, 147, 'Trampa deregulacijas politikai bija ilgtermina ekonomiskie ieguvumi.', '2025-11-07 00:00:00', 'E010', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (198, 148, 'Trampa juridiskas problemas liecina, ka nevienam nevajadzetu but augstakam par likumu.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (199, 148, 'Lielais juridiskas izmeklešanas skaits pret Trampu liecina par sistemiskam etikas problemam.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (200, 148, 'Trampa biznesa saites radija nepieredzetus interešu konfliktus.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (201, 148, 'Trampa pieeja apželošanai izpludinaja robežu starp tiesiskumu un personigo lojalitati.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (202, 148, 'Atbildiba bijušajiem prezidentiem stiprina demokratiju, nevis to vajina.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (203, 148, 'Notiekošas tiesas pravas pret Trampu ir politiski motivetas.', '2025-11-07 00:00:00', 'E006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (204, 148, 'Nevienai personai, tostarp bijušajam prezidentam, nevajadzetu but imunai pret apsudzibu.', '2025-11-07 00:00:00', 'E007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (205, 148, 'Trampa tiesas cinas defines, ka nakotnes prezidenti tiks saukti pie atbildibas.', '2025-11-07 00:00:00', 'E008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (206, 148, 'Trampa riciba ar slepeniem dokumentiem rada valsts drošibas apdraudejumu.', '2025-11-07 00:00:00', 'E009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (207, 148, 'Trampa tiesas procesu iznakums ietekmes to, ka pasaule vertes amerikanu tiesiskumu.', '2025-11-07 00:00:00', 'E010', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (208, 149, 'Trampa politiska kustiba pardzivos vinu personigi.', '2025-11-07 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (209, 149, 'Tramps tiks atcerets ka viens no ietekmigakajiem prezidentiem musdienu ASV vesture.', '2025-11-07 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (210, 149, 'Tramps ir simptoms, nevis celonis, ASV politiskajai polarizacijai.', '2025-11-07 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (211, 149, 'Trampa kritiki nenoverte, cik dzili vinš rezone ar veletajiem, kas vilušies politiskaja sistema.', '2025-11-07 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (212, 149, 'Trampa prezidentura atklaja vajibas, kas jau pastaveja amerikanu demokratija.', '2025-11-07 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (213, 149, 'Vesturnieki ar laiku Trampa prezidenturu vertes labveligak.', '2025-11-07 00:00:00', 'E006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (214, 149, 'Trampa kustiba parstav ASV politiskas identitates parorientešanos.', '2025-11-07 00:00:00', 'E007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (215, 149, 'Trampa era iezimeja tradicionala amerikanu konservativisma beigas.', '2025-11-07 00:00:00', 'E008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (216, 149, 'Trampa ietekme uz ASV Augstako tiesu bus vina visnoturigakais mantojums.', '2025-11-07 00:00:00', 'E009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (217, 149, 'Trampa prezidentura neatgriezeniski mainija to, ka patiesiba un fakti tiek uztverti politika.', '2025-11-07 00:00:00', 'E010', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (218, 149, 'Nakotnes lideri izmantos Trampa taktiku, lai mazinatu sabiedribas uzticibu velešanam.', '2025-11-07 00:00:00', 'E011', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (219, 149, 'ASV, iespejams, nekad pilniba neatgusies no politiskajam škelšanam, ko Tramps pastiprinaja.', '2025-11-07 00:00:00', 'E012', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (220, 149, 'Trampa ietekme turpinas veidot labeja populisma ideologiju visa pasaule.', '2025-11-07 00:00:00', 'E013', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (221, 149, 'Trampa mantojumu vairak define pretrunas, nevis politikas panakumi.', '2025-11-07 00:00:00', 'E014', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (222, 126, 'Valstim japalielina likumigas iecelošanas iespejas, lai samazinatu nelegalas robežu škersošanas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (223, 126, 'Imigracijas kvotam galvenokart jabalstas uz valsts darba tirgus vajadzibam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (224, 126, 'Gimenes apvienošanai jabut galvenajai prioritatei imigracijas politika.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (225, 126, 'Beglu un patveruma procesi jaapstrada atrak, pat ja tas prasa vairak resursu.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (226, 126, 'Valstim vajadzetu but tiesibam stingri kontrolet, kas iecelo, neatkarigi no humanitariem apsverumiem.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (227, 127, 'Robežu drošibai japieškir prioritate cilveku drošibai, nevis atturešanas metodem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (228, 127, 'Aizturešanas centri bez dokumentiem esošiem imigrantiem jaaizstaj ar uzraudzitam atbrivošanas programmam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (229, 127, 'Deportacija jaizmanto tikai nopietnu kriminalnoziegumu gadijuma, nevis administrativu parkapumu del.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (230, 127, 'Privato uznemeju izmantošana robežu kontrolei rada vairak kaitejuma neka efektivitates.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (231, 127, 'Tehnologiju balstita robežu uzraudziba ir etiski un efektivak neka fiziskas barjeras.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (232, 128, 'Imigracija parasti vairak nak par labu ekonomikai, neka to kaite.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (233, 128, 'Zemak kvalificets imigrantu darbaspeks ir butisks daudzam nacionalajam nozarem.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (234, 128, 'Kvalificetu imigrantu programmas negodigi atnem talantus jaunattistibas valstim.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (235, 128, 'Darba vizas jabut vieglak iegustamam, tacu tam japieprasa taisniga darba aizsardziba.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (236, 128, 'Uznemumiem nevajadzetu atlaut pienemt darba imigrantus, lai samazinatu vietejas algas.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (237, 129, 'Valodu un kulturas orientacijas programmam jabut bezmaksas un plaši pieejamam jaunajiem imigrantiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (238, 129, 'Pilsonibas testiem jauzsver pilsoniska lidzdaliba, nevis vesturisko faktu iegaumešana.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (239, 129, 'Imigrantu berniem jabut pieejamiem valsts pakalpojumiem neatkarigi no vecaku juridiska statusa.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (240, 129, 'Vietejam kopienam jabut iespejai izteikties par to, cik daudz jaunpienaceju tas var atbalstit.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (241, 129, 'Veiksmigai integracijai nepieciešams gan imigrantu, gan uznemošas sabiedribas pules.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (242, 130, 'Valdibam japalielina investicijas majoklos regionos, kuros ir liela imigracija.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (243, 130, 'Piekluve pamata veselibas aprupei nedrikst but atkariga no imigracijas statusa.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (244, 130, 'Valsts palidzibai imigrantiem jabut ierobežotai laika, bet atbalstošai pielagošanas perioda.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (245, 130, 'Imigracija nenoslogo sabiedriskos pakalpojumus, ja ta tiek pareizi parvaldita un finanseta.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (246, 130, 'Jaunajiem imigrantiem jaiemaksa nodokli pirms piekluves noteiktiem socialajiem pabalstiem.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (247, 131, 'Valstim ir morals pienakums uznemt beglus, kas beg no kara vai vajašanas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (248, 131, 'Klimata begli jaatzist saskana ar starptautiskajam tiesibam.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (249, 131, 'Parvietošanas programmam jaizplata begli pa regioniem, lai atbalstitu integraciju.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (250, 131, 'Privata sponsorešanas modeli ir efektivs veids, ka atbalstit beglu integraciju.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (251, 131, 'Parbaudes procesiem jalidzsvaro drošibas apsverumi ar lidzjutibu un atrumu.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (252, 132, 'Jabut skaidram celam uz pilsonibu ilgtermina bez dokumentiem dzivojošiem iedzivotajiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (253, 132, 'Naturalizacijas prasibam japieškir prioritate pilsoniskajai lidzdalibai, nevis ienakumu limenim.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (254, 132, 'Dubultpilsoniba jaatlauj bez ierobežojumiem.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (255, 132, 'Uzturešanas ilgumam jabut pietiekamam, lai kvalificetos pastavigajam statusam.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (256, 132, 'Legala imigracija javienkaršo, lai samazinatu stimulus nelegalai iecelošanai.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (257, 133, 'Mediju atspogulojums par imigraciju bieži vien pastiprina bailes vairak neka faktus.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (258, 133, 'Politiskajai retorikai par imigraciju ir liela ietekme uz socialo koheziju.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (259, 133, 'Sabiedribas nepareizie priekšstati par imigrantiem saglabajas tiešas mijiedarbibas trukuma del.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (260, 133, 'Datu caurskatamiba par imigracijas rezultatiem uzlabotu sabiedribas uzticibu.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (261, 133, 'Diskusijas par imigraciju vairak jakoncentrejas uz risinajumiem, nevis vainošanu.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (262, 134, 'Mediju vestijumi butiski ietekme sabiedribas priekšstatu par konfliktiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (263, 134, 'Proxy konflikti musdienas ir biežak sastopami neka tieši karu starp valstim.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (264, 134, 'Valstim butu jalauj iejaukties citas valsts konflikta humanitaru apsverumu del.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (265, 134, 'Plašsazinas lidzekli zino par konfliktiem neobjektivi un tie veido nepareizu sabiedribas viedokli.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (266, 134, 'Socialie mediji palidz veidot izpratni par konfliktiem un mazina dezinformaciju.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (267, 134, 'Dezinformacija klust par specigaku ieroci neka fiziskais speks.', '2025-11-07 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (268, 135, 'Starptautiskas sankcijas efektivi samazina vardarbibu.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (269, 135, 'Globalas organizacijas (ANO, NATO u.c.) ir efektivas konfliktu eskalacijas noveršana.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (270, 135, 'Starptautiskajam organizacijam vajadzetu spelet aktivaku lomu notiekošo konfliktu risinašana visa pasaule.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (271, 135, 'Bagatajam valstim butu jauznemas lielaka atbildiba par palidzibu kara skartajiem regioniem.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (272, 135, 'Ekonomiskas sankcijas ir efektivs veids, ka ietekmet valstis, kas iesaistitas konfliktos.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (273, 135, 'Beglu krizes ietekme starptautisko stabilitati.', '2025-11-07 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (274, 135, 'Karš ir ticamaks regionos, kuros ir klimata stress (udens trukums, sausums utt.).', '2025-11-07 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (275, 136, 'Dronu triecieni ir etiski, mazak etiski vai vienlidz etiski salidzinajuma ar tradicionalajiem gaisa triecieniem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (276, 136, 'Kiberkarš ilgtermina ir bistamaks par tradicionalo karadarbibu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (277, 136, 'Autonomie ieroci (ar AI darbinami) butu jaaizliedz visa pasaule.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (278, 136, 'Musdienu karadarbiba ir vairak versta uz informacijas kontroli, nevis kaujas lauka kontroli.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (279, 136, 'Partizanu karš klust efektivaks par parastajam armijam.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (280, 137, 'Vairuma karu musdienas nesamerigi cieš civiliedzivotaji, salidzinot ar karaviriem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (281, 137, 'Citam valstim ir pienakums palidzet karu skartajiem iedzivotajiem.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (282, 137, 'Valstim butu jauznem begli, kas beg no konfliktiem.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (283, 137, 'Starptautiskajam palidzibas organizacijam tiek nodrošinata pietiekama aizsardziba konfliktu zonas.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (284, 137, 'Piekluve neatkarigai žurnalistikai kara zonas ir butiska globalajai atbildibai.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (285, 137, 'Ilgstošs konflikts neatgriezeniski parveido kulturas identitati skartajos regionos.', '2025-11-07 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (286, 138, 'Pašreizejie konflikti parasti ir isaki vai garaki neka 20. gadsimta.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (287, 138, 'Brunotu konfliktu skaits pasaule ir pieaudzis pedejo 30 gadu laika.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (288, 138, 'Macibas no pagatnes kariem tiek atbilstoši macitas musdienu izglitibas sistemas.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (289, 138, 'Vesturiskas alianses joprojam ietekme konfliktus musdienas.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (290, 138, '“Okupacijas” butiba tagad atškiras no pagatnes.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (291, 139, 'Diplomatiskas sarunas parasti ir iespejamas, pirms konflikts eskalejas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (292, 139, 'Miera ligumi medz radit ilgstošus risinajumus vai pagaidu partraukumus.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (293, 139, 'Miera veidošanas centieniem vairak jakoncentrejas uz politiskajiem lideriem vai vietejam kopienam.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (294, 139, 'Patiesibas un izliguma komisijas palidz noverst turpmaku vardarbibu.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (295, 139, 'Ilgstošs miers var pastavet bez kopigas kulturas izpratnes.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (296, 140, 'Globala migracija ir palielinajusi sabiedribas izpratni par kara cilveciskajam izmaksam.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (297, 140, 'Konflikti ietekme globalo partikas drošibu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (298, 140, 'Globala sabiedriska doma ir kluvusi saškeltaka tiešsaistes diskusiju par kariem del.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (299, 140, 'Skolas pietiekami maca par pašreizejo konfliktu humanitaro ietekmi.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (300, 141, 'Ilgstošs miers ir iespejams regionos ar paaudžu traumam no kara.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (301, 141, 'Miera sarunas parasti tiek meginatas pietiekami agri, lai noverstu eskalaciju.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (302, 141, 'Kulturas apmainas programmas palidz mazinat naidigumu starp konfliktu regioniem.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (303, 46, 'Ukrainai jaturpina cinities, lidz visas okupetas teritorijas tiks atgutas.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (304, 46, 'Ukrainai vajadzetu risinat sarunas, pat ja tas nozime teritorialas piekapšanas.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (305, 46, 'Rietumu jaturpina stniegt militara palidziba Ukrainai.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (306, 46, 'Rietumu militara palidziba nevajadzigi pagarina konfliktu.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (307, 46, 'Krievijas drošibas bažas par NATO paplašinašanos bija pamatotas.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (308, 46, 'Krievijas iebrukums Ukraina bija nepamatots, neatkarigi no politiskajiem apsverumiem.', '2025-11-07 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (309, 46, 'Ekonomiskas sankcijas pret Krieviju ir nepieciešamas un efektivas.', '2025-11-07 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (310, 46, 'Ekonomiskas sankcijas vairak kaite civiliedzivotajiem neka politiskajiem lideriem.', '2025-11-07 00:00:00', 'D008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (311, 47, 'Izraelai ir tiesibas aizstaveties pret uzbrukumiem.', '2025-11-07 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (312, 47, 'Palestiniešiem ir tiesibas pretoties okupacijai un cinities par valstiskumu.', '2025-11-07 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (313, 47, 'Militaras darbibas Gaza ir pamatotas ka pašaizsardziba.', '2025-11-07 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (314, 47, 'Militaras darbibas Gaza ir nesameriga speka izmantošana.', '2025-11-07 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (315, 47, 'Sarunata divu valstu risinajums joprojam ir iespejams.', '2025-11-07 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (316, 47, 'Divu valstu risinajums vairs nav realistisks.', '2025-11-07 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (317, 47, 'Starptautiska sabiedriba ir neobjektiva sava reakcija uz konfliktu.', '2025-11-07 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (318, 47, 'Starptautiska sabiedriba nedara pietiekami, lai apturetu civiliedzivotaju ciešanas.', '2025-11-07 00:00:00', 'D008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (319, 151, 'Donalda Trampa publiska retorika ir konsekventi vulgara vai pazemojoša.', '2025-11-16 00:00:00', 'E001', 1, 2, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (320, 151, 'Trampa valodas izvele pazemina politiskas komunikacijas standartus.', '2025-11-16 00:00:00', 'E002', 0, 1, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (321, 151, 'Tramps normalize personiskus apvainojumus ka dalu no galvenas politikas.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (322, 151, 'Trampa komunikacijas stils veicina naidigumu, nevis debates.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (323, 151, 'Prezidentam nevajadzetu izmantot tadu valodu, kadu Tramps bieži lieto runas vai socialo mediju ierakstos.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (324, 153, 'Cilvecei uz Meness ir jaizveido pastaviga baze.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (325, 153, 'Nakamo 15 gadu laika mes pieredzesim komercialu Meness turismu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (326, 153, 'Resursu ieguvei uz Meness vajadzetu but atlautai.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (327, 154, 'Cilveki staigas pa Marsu nakamo 20 gadu laika.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (328, 154, 'Marsa kolonizacija ir reala.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (329, 154, 'Marsa terraformešana ir neetiska.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (330, 154, 'Robotu misijas ir vertigakas neka cilveku misijas uz Marsu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (331, 155, 'Zema Zemes orbita klust bistami parpildita.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (332, 155, '"Starlink" un lidzigi projekti nodara vairak launa neka laba.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (333, 155, 'Starptautiskajiem likumiem stingri jaierobežo komercialie sateliti.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (334, 155, 'Kosmosa atluzu savakšana jafinanse valdibai.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (335, 156, 'Atgriešanas pie arejam planetam (Jupitera/Saturna) ir jabut galvenajai prioritatei.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (336, 156, 'Mums vajadzetu nosutit vairak misiju, lai mekletu dzivibu uz Eiropas vai Encelada.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (337, 156, 'Starpzvaigžnu zondes (piemeram, "Breakthrough Starshot") ir finansešanas vertas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (338, 156, 'Arpuszemes mikrobu dzivibas atklašana parveidotu sabiedribu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (339, 157, 'Ilgtermina cilveka lidojumi kosmosa rada parak daudz veselibas risku, lai butu praktiski.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (340, 157, 'Maksliga gravitacija ir ilgtspejigu kosmosa celojumu atslega.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (341, 157, 'Privatie uznemumi vadis nakotnes cilveku lidojumus kosmosa.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (342, 157, 'Kosmosa apmetnes (O''Nila cilindri utt.) klus par realitati.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (343, 158, 'Komercialie kosmosa uznemumi ievieš jauninajumus atrak neka valsts agenturas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (344, 158, 'Kosmosa turisms ir resursu izškiešana.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (345, 158, 'Rakešu atkartota izmantošana ir gadsimta svarigakais sasniegums.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (346, 158, 'Valdibam stingrak jaregule komercialie kosmosa lidojumi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (347, 159, 'Mes savas dzives laika atklasim citplanetiešu dzivibas pazimes.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (348, 159, 'SETI butu jasanem ieverojami lielaks finansejums.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (349, 159, 'Cilvece nav gatava kontaktam ar sapratigu arpuszemes dzivibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (350, 159, 'Ja mes atklajam citplanetiešu signalus, mums nevajadzetu nekavejoties atbildet.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (351, 160, 'Kosmosa izpetes finansejumam jabut prioritatei par militarajiem izdevumiem.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (352, 160, 'Kosmosa resursi (asteroidi, Meness minerali) butu jauzskata par cilveces kopigu ipašumu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (353, 160, 'Kosmosa kolonizacija riske atkartot Zemes vesturiskas kludas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (354, 160, 'Klimata problemam uz Zemes ir jabut prioritatei par tala kosmosa misiju finansešanu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (355, 161, 'AI parspes cilveka intelektu lielakaja dala jomu 20 gadu laika.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (356, 161, 'AI sistemam butu japieprasa atklat, kad lietotajs ar tam mijiedarbojas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (357, 161, 'AI nakotne sasniegs cilveka apzinas limeni.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (358, 161, 'Valdibas nav gatavas straujajai AI izaugsmei.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (359, 161, 'AI radis vairak darbavietu, neka iznicinas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (360, 161, 'AI pec noklusejuma vajadzetu but atverta koda.', '2025-11-16 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (361, 162, 'AI modeli ir stingri jaregule ar starptautiskiem noligumiem.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (362, 162, 'Uznemumiem jabut juridiski atbildigiem par kaitejumu, ko nodarijušas to AI sistemas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (363, 162, 'AI attistiba ir japalenina, lidz tiek izveidoti drošibas standarti.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (364, 162, 'AI radita dezinformacija ir lielakais drauds demokratijai.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (365, 162, 'Janosaka globali ierobežojumi AI apmacibas modelu izmeram.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (366, 163, 'AI automatizacija izraisis masveida bezdarbu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (367, 163, 'Lielaka dala biroja darbu tiks daleji automatizeti.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (368, 163, 'Universalais pamatienakums klus nepieciešams AI del.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (369, 163, 'Radošas profesijas (rakstnieki, makslinieki, muziki) ir vairak apdraudetas neka tehniskas profesijas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (370, 163, 'Robotiem butu jamaksa nodokli, ja tie aizstaj cilvekus.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (371, 164, 'AI vajadzetu atlaut diagnosticet pacientus bez cilveka uzraudzibas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (372, 164, 'Robotizeta kirurgija klus par standartu sarežgitam proceduram.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (373, 164, 'AI ieverojami samazinas globalas veselibas aprupes izmaksas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (374, 164, 'Pacienti kadu dienu uzticesies AI arstiem tikpat loti ka cilvekiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (375, 165, 'AI radita maksla butu jauzskata par istu makslu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (376, 165, 'AI nedrikstetu atlaut apmacities uz ar autortiesibam aizsargatiem materialiem bez atlaujas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (377, 165, 'Nakamaja desmitgade AI domines radošajas industrijas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (378, 165, 'AI balss klonešanai ir nepieciešama neparprotama verifikacija un piekrišana.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (379, 166, 'Socialie roboti klus par normalu sadzives dalu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (380, 166, 'Cilveki veidos emocionalas saites ar robotiem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (381, 166, 'Robotiem vajadzetu but tiesibam, ja tie klust autonomi.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (382, 166, 'Humanoidi roboti nav nepieciešami; funkcionali dizaini ir labaki.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (383, 167, 'Autonomie ieroci ir jaaizliedz visa pasaule.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (384, 167, 'Aizsardzibai vairak japalaujas uz AI neka uz cilveku lemumiem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (385, 167, 'AI klus par galveno riku kiberdrošiba.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (386, 167, 'Robotika karadarbibu izmainis vairak neka kodoltehnologijas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (387, 168, 'Pašbraucošas automašinas noversis lielako dalu satiksmes negadijumu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (388, 168, 'Cilveku vadita braukšana drošibas apsverumu del galu gala butu jaaizliedz.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (389, 168, 'Ar AI vadits sabiedriskais transports bus globals standarts.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (390, 168, 'Pilniba autonomi transportlidzekli bus pieejami lielakajai dalai cilveku.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (391, 169, 'Lielakajai dalai majsaimniecibu piederes personigais robots-asistents.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (392, 169, 'Roboti rupesies par veciem cilvekiem vairak neka paši cilveki.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (393, 169, 'Majas robotiem japiemero tie paši privatuma noteikumi, kas viedtalruniem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (394, 169, 'Robotu-kompanjonu izmantošana berniem ir jaierobežo.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (395, 170, 'AI nekad nedrikstetu atlaut pienemt lemumus par dzivibu un navi.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (396, 170, 'Mašinu tiesibas klus par realu politisku jautajumu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (397, 170, 'AI rada lielaku eksistencialu risku neka klimata parmainas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (398, 170, 'Mums vajadzetu tiekties apvienot cilvekus un AI (kiborgu augmentacija).', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (399, 171, 'AI pašlaik ir parvertets un nav tik spejigs, ka apgalvo uznemumi.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (400, 171, 'Lielaka dala musdienu AI produktu rada vairak problemu, neka atrisina.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (401, 171, 'AI ir sasniedzis plato, un progress paleninas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (402, 171, 'Cilveki parverte to, ko AI patiesiba spej realas dzives situacijas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (403, 171, 'AI ir problemas ar pamata uzticamibu, kas padara to nepiemerotu ikdienas lietošanai.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (404, 172, 'AI nozare atrodas finanšu burbuli, kas galu gala parplisis.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (405, 172, 'Investori iegulda parak daudz naudas AI ar nerealam ceribam.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (406, 172, 'AI jaunuznemumi ir parverteti, salidzinot ar to produktu realo lietderibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (407, 172, 'Tikai daži AI uznemumi izdzivos ilgtermina, kamer lielaka dala sabruks.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (408, 172, 'Ažiotažas cikls ap AI nav ilgtspejigs.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (409, 173, 'Lielas korporacijas piespiež ieviest AI funkcijas produktos, kuriem tas nav vajadzigas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (410, 173, 'Lielaka dala jauno "AI funkciju" tiek pievienotas tikai marketinga, nevis lietotaju labuma del.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (411, 173, 'Uznemumi parmerigi izmanto "AI" ka modes vardu, lai attaisnotu augstakas cenas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (412, 173, 'Lietotaji klust arvien neapmierinataki ar viniem uzspiestajam AI funkcijam.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (413, 173, 'Tehnologiju uznemumi parspile AI spejas, lai atstatu iespaidu uz investoriem.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (414, 174, 'Pašreizejie AI riki ir parak neuzticami, lai tiem uzticetu svarigus uzdevumus.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (415, 174, 'AI bieži pielauj kludas, kadas cilveks nekad nepielautu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (416, 174, 'AI asistentiem joprojam trukst vesela saprata.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (417, 174, 'AI radita satura labošana bieži prasa vairak laika neka ta radišana manuali.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (418, 174, 'AI riki ietaupa laiku tikai loti specifiskas situacijas, nevis plaši.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (419, 175, 'Sabiedriba zaude uzticibu AI zemas kvalitates rezultatu del.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (420, 175, 'AI nogurums ir reals — cilveki ir noguruši visur dzirdet par AI.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (421, 175, 'AI ieviešana paleninas, jo lietotaji vel neredz realus ieguvumus.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (422, 175, 'AI ir nepieciešami butiski sasniegumi, lai plašaka sabiedriba to uztvertu nopietni.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (423, 175, 'AI asistenti ir vairak kaitinoši neka noderigi.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (424, 176, 'AI progress ir kluvis pakapenisks, nevis revolucionars.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (425, 176, 'Modeli klust lielaki, bet ne butiski gudraki.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (426, 176, 'Pašreizejais generativais AI lielakoties ir acu apmans bez patiesas izpratnes.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (427, 176, 'Nakamais lielais AI sasniegums varetu but desmitiem gadu attaluma.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (428, 177, 'CRISPR genu redigešana butu jaatlauj smagu genetisku slimibu arstešanai.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (429, 177, 'Cilveka embriju redigešana butu jaaizliedz visa pasaule.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (430, 177, 'Genu redigešana klus par standarta medicinisko arstešanu 20 gadu laika.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (431, 177, '"Dizaineru mazuli" driz klus par realu etisku problemu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (432, 177, 'Genu terapija šaja gadsimta likvides daudzas iedzimtas slimibas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (433, 178, 'Laboratorija audzeti organi izbeigs transplantu trukumu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (434, 178, 'Sintetiska biologija attistas parak atri, lai regulatori spetu sekot lidzi.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (435, 178, 'Organu audzešana no cilmes šunam butu intensivi jafinanse valdibam.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (436, 178, 'Kultiveta gala klus par nozimigu veselibas un ilgtspejibas instrumentu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (437, 178, 'Mediciniskie nanoroboti kadu dienu darbosies cilveka kermeni.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (438, 179, 'Nakamas paaudzes vakcinas (mRNS, DNS bazes) parveidos globalo veselibu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (439, 179, 'Universalas gripas vakcinas bus pieejamas desmit gadu laika.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (440, 179, 'Vakcinu izstradei ari turpmak jabut publiski finansetai, nevis tikai privatai.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (441, 179, 'Maksligais intelekts dramatiski paatrinas vakcinu izstradi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (442, 179, 'Nakotnes pandemijas bus vieglak noverst, pateicoties jaunajam vakcinu tehnologijam.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (443, 180, 'Smadzenu-datora saskarnes palidzes atjaunot kustigumu paralizetiem pacientiem.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (444, 180, 'Neiralie implanti butu stingri jaregule privatuma apsverumu del.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (445, 180, 'Atminas atjaunošanas tehnologija klus iespejama musu dzives laika.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (446, 180, 'Neinvaziva smadzenu stimulacija klus par izplatitu arstešanas metodi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (447, 180, 'Smadzenu aktivitates nolasišana ar augstu precizitati ir realistiska nakotne.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (448, 181, 'Cilmes šunu terapija aizstas daudzas tradicionalas arstešanas metodes.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (449, 181, 'Bojatu organu vai ekstremitašu ataudzešana ar laiku klus iespejama.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (450, 181, '3D drukatie organi radis revoluciju kirurgija.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (451, 181, 'Regenerativa medicina ieverojami pagarinas cilveka paredzamo dzives ilgumu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (452, 181, 'Pretnovecošanas petijumi butu jafinanse no publiskiem lidzekliem.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (453, 182, 'Pirmais cilveks, kurš nodzivos lidz 120 gadiem, jau ir dzivs.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (454, 182, 'Novecošana butu jaklasifice ka arstejams medicinisks stavoklis.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (455, 182, 'Ilgmužibas arstešana padzilinas socialo nevienlidzibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (456, 182, 'Senolitiskas zales (pretnovecošanas tabletes) klus plaši pieejamas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (457, 182, 'Dzives pagarinašanas petijumi ir parlieku reklameti.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (458, 183, 'Maksligais intelekts parspes arstus vairuma slimibu diagnosticešana.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (459, 183, 'Slimnicas liela mera palausies uz maksligo intelektu pacientu analize.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (460, 183, 'Pacientiem vienmer vajadzetu but iespejai noraidit AI diagnozes.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (461, 183, 'Uz maksligo intelektu balstita diagnostika samazinas medicinas izmaksas visa pasaule.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (462, 183, 'Arsti-roboti klus par ierastu paradibu lielajas slimnicas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (463, 184, 'Personalizetas veža vakcinas klus par standarta arstešanas metodi.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (464, 184, 'Vairums veža veidu klus par parvaldamiem hroniskiem stavokliem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (465, 184, 'Vezis nekad netiks pilniba izarstets ta sarežgitibas del.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (466, 184, 'Genetiska profilešana laus agrini atklat vezi gadu desmitiem pirms simptomiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (467, 184, 'Imunterapija aizstas kimijterapiju vairumam pacientu.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (468, 185, 'Piekluve dzivibu glabjošiem atklajumiem butu jauzskata par cilvektiesibam.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (469, 185, 'Dargas, revolucionaras arstešanas metodes palielinas nevienlidzibu veselibas aprupe.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (470, 185, 'Mediciniskajai petniecibai jabut parredzamakai sabiedribai.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (471, 185, 'Farmacijas uznemumi gust parak lielu pelnu no revolucionaram zalem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (472, 185, 'Daži medicinas atklajumi var but parak riskanti, lai tos izmantotu cilvekiem.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (473, 186, 'Nakotnes pandemijas globalizacijas del bus smagakas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (474, 186, 'Mes esam labak sagatavoti jaunam pandemijam neka pirms 2020. gada.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (475, 186, 'Atras reagešanas vakcinu tehnologija noversis lielako dalu globalo uzliesmojumu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (476, 186, 'Arkartas situacijas valstim butu jaapmainas ar mediciniskajiem petijumiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (477, 186, 'Pandemijas uzraudzibai, izmantojot notekudenus vai AI, jabut obligatai.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (478, 187, 'Cilveka darbiba ir galvenais klimata parmainu virzitajspeks.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (479, 187, 'Globala sasilšana musu dzives laika sasniegs neatgriezenisku limeni.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (480, 187, 'Klimata modeli ir pietiekami precizi, lai vaditu politiskus lemumus.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (481, 187, 'Plašsazinas lidzekli parspile klimata parmainu ietekmi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (482, 187, 'Ekstremali laikapstakli klimata parmainu del klust arvien biežaki.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (483, 187, 'Geoinženierija butu jaizmanto, lai nepieciešamibas gadijuma atdzesetu planetu.', '2025-11-16 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (484, 187, 'Valdibas nedara pietiekami daudz, lai sasniegtu klimata merkus.', '2025-11-16 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (485, 187, 'Uznemumiem butu juridiski janosaka pienakums samazinat oglekla emisijas.', '2025-11-16 00:00:00', 'D008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (486, 187, 'Oglekla nodokli ir efektivs risinajums klimata parmainam.', '2025-11-16 00:00:00', 'D009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (487, 187, 'Klimata parmainas skolas butu jamaca daudz intensivak.', '2025-11-16 00:00:00', 'D010', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (488, 188, 'Mes pašlaik piedzivojam masveida izmiršanas notikumu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (489, 188, 'Apdraudeto sugu aizsardzibai jabut prioritatei par ekonomiskajam interesem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (490, 188, 'Revaidinga projekti (sugu atgriešana dabiskajos biotopos) ir butiski.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (491, 188, 'Cilveka ekspansija izraisa neatgriezenisku biologiskas daudzveidibas zudumu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (492, 188, 'Butu jaapsver genetiska glabšana (apdraudeto sugu genu redigešana).', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (493, 188, 'Vairak zemes butu juridiski jaaizsarga, lai saglabatu ekosistemas.', '2025-11-16 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (494, 188, 'Zoologiskajiem darziem ir pozitiva loma apdraudeto sugu aizsardziba.', '2025-11-16 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (495, 188, 'Bišu populaciju samazinašanas ir steidzama globala problema.', '2025-11-16 00:00:00', 'D008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (496, 188, 'Par apdraudetu dzivnieku medibam butu japiemero bargaki sodi.', '2025-11-16 00:00:00', 'D009', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (497, 189, 'Plastmasas piesarnojums ir vissteidzamaka piesarnojuma problema pasaule.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (498, 189, 'Vienreizlietojama plastmasa butu jaaizliedz visa pasaule.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (499, 189, 'Mikroplastmasa rada butisku veselibas risku cilvekiem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (500, 189, 'Parstrades programmas ir daudz mazak efektivas, neka cilveki doma.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (501, 189, 'Uznemumiem butu juridiski janosaka pienakums samazinat iepakojuma atkritumus.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (502, 189, 'Vienreizlietojama plastmasa butu jaaizliedz visa pasaule.', '2025-11-16 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (503, 189, 'Gaisa piesarnojuma limenis lielakajas pilsetas prasa tuliteju arkartas ricibu.', '2025-11-16 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (504, 189, 'Valstim butu jaievieš stingraki noteikumi par rupniecisko atkritumu apglabašanu.', '2025-11-16 00:00:00', 'D008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (505, 190, 'Gaisa piesarnojums izraisa vairak naves gadijumu, neka vairums cilveku apzinas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (506, 190, 'Piekluve tiram udenim butu jauzskata par universalam cilvektiesibam.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (507, 190, 'Rupnieciska lauksaimnieciba ir galvenais udens piesarnojuma avots.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (508, 190, 'Pilsetu gaisa kvalitate dramatiski uzlabosies lidz ar elektriskajiem transportlidzekliem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (509, 190, 'Atsalošana butu plašak jaizmanto udens trukuma problemu risinašanai.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (510, 191, 'Atjaunojama energija nakamo 30 gadu laika reali var aizstat fosilo kurinamo.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (511, 191, 'Kodolenergija ir butiska ilgtspejigai energosistemai.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (512, 191, 'Kodolenergijai vajadzetu but lielakai lomai tiras energijas strategijas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (513, 191, 'Kodolsintezes energija paradisies parak velu, lai ietekmetu klimata parmainas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (514, 191, 'Udenradis klus par nozimigu globalu energijas avotu.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (515, 191, 'Veja un saules energija vien nevar uzturet musdienu sabiedribu.', '2025-11-16 00:00:00', 'D006', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (516, 191, 'Valdibam butu jasubside saules paneli visam majsaimniecibam.', '2025-11-16 00:00:00', 'D007', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (517, 191, 'Elektriskajiem automobiliem kopuma ir lielaka ietekme uz vidi neka benzina automašinam.', '2025-11-16 00:00:00', 'D008', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (518, 192, 'Parstrades sistemas daudzas valstis lielakoties ir neefektivas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (519, 192, 'Partikas atkritumi ir nepamanita vides krize.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (520, 192, 'Katrai valstij butu japienem stingri noteikumi par elektronisko atkritumu apglabašanu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (521, 192, 'Pilsetu majsaimniecibas kompostešanai vajadzetu but obligatai.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (522, 193, 'Atmežošanai Amazones regiona butu jaizraisa starptautiska iejaukšanas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (523, 193, 'Mežu atjaunošana ir viens no efektivakajiem instrumentiem cina pret klimata parmainam.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (524, 193, 'Lauksaimnieciba ir atbildiga par lielako dalu globalas atmežošanas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (525, 193, 'Vertikala lauksaimnieciba ir realistisks veids, ka samazinat zemes izmantošanu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (526, 194, 'Rupnieciska lauksaimnieciba ilgtermina nav ilgtspejiga.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (527, 194, 'Augu valsts uzturs ieverojami samazina oglekla pedu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (528, 194, 'Laboratorija audzeta gala aizstas tradicionalo lopkopibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (529, 194, 'Pesticidi kaite ekosistemam vairak, neka iepriekš tika uzskatits.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (530, 194, 'Vertikala lauksaimnieciba bus nozimiga dala no nakotnes partikas ražošanas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (531, 195, 'Cilveka darbibas del okeani tiek neatgriezeniski bojati.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (532, 195, 'Parzveja ir lielaks vides apdraudejums, neka cilveki to apzinas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (533, 195, 'Dziljuras ieguve butu jaaizliedz, lidz tiks veikti turpmaki petijumi.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (534, 195, 'Korallu rifus joprojam var glabt ar pašreizejiem globalajiem centieniem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (535, 195, 'Valdibam butu jaierobežo kruiza kugu satiksme, lai aizsargatu okeanus.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (536, 196, 'Oglekla uztveršanas tehnologija ir loti svariga klimata merku sasniegšanai.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (537, 196, 'Elektriskie transportlidzekli ir parlieku reklameti un nav tik videi draudzigi, ka tiek apgalvots.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (538, 196, 'Viedas pilsetas ieverojami samazinas piesarnojumu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (539, 196, 'Biologiski noardamiem materialiem vajadzetu aizstat gandriz visu plastmasu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (540, 196, 'Maksligais intelekts var palidzet atrisinat lielas vides problemas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (541, 197, 'Valdibam butu janosaka stingri oglekla emisiju ierobežojumi.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (542, 197, 'Klimata politika lidztekus ilgtspejai par prioritati jaizvirza ekonomiska izaugsme.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (543, 197, 'Attistitajam valstim butu jamaksa vairak, lai labotu globalos vides postijumus.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (544, 197, 'Korporacijas ir vairak atbildigas par klimata parmainam neka individi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (545, 197, 'Vides noteikumi ir parak vaji, lai risinatu musdienu problemas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (546, 198, 'Klimata parmainu skepse joprojam ir parak izplatita.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (547, 198, 'Cilveki piedzivo vides problemu nogurumu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (548, 198, 'Vides aktivisms klust radikalaks.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (549, 198, 'Plašsazinas lidzeklu atspogulojums par vides zinatni bieži ir maldinošs.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (550, 198, 'Individi jutas bezspecigi, lai panaktu realu ietekmi uz vidi.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (551, 199, 'Attistitajam valstim butu jamaksa vairak par globalo kaitejumu videi.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (552, 199, 'Korporacijas ir vairak atbildigas par klimata parmainam neka individi.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (553, 199, 'Vides noteikumi vairak kaite ekonomikas izaugsmei, neka palidz planetai.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (554, 199, 'Klimata protesti ir efektivs instruments parmainam.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (555, 199, 'Valdibam butu jaaizliedz produktu ar augstu emisiju limeni reklamas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (556, 200, 'Maksligais intelekts var palidzet atrisinat lielas vides problemas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (557, 200, 'Klimata migranti tuvakajas desmitgades klus par vienu no lielakajiem politiskajiem jautajumiem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (558, 200, 'Geoinženierija ir nepieciešama iespeja, kas jaapsver klimata kontrolei.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (559, 200, 'Oglekla uztveršanas tehnologija ir parak slaveta un neefektiva.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (560, 200, 'Vides dezinformacija tiešsaiste kaite sabiedribas izpratnei.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (561, 201, 'Globala ekonomika nakamo divu gadu laika virzas uz recesiju.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (562, 201, 'Demografisko parmainu del klust grutak sasniegt ekonomisko izaugsmi.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (563, 201, 'Globalizacija paleninas un nakamaja desmitgade var mainities preteja virziena.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (564, 201, 'Pasaules ekonomika ir parak atkariga no ASV un Kinas raditajiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (565, 201, 'Jaunattistibas tirgi nakamaja desmitgade veicinas lielako dalu globalas izaugsmes.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (566, 202, 'Augsta inflacija tagad ir lielakais drauds majsaimniecibu finansialajai stabilitatei.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (567, 202, 'Centralas bankas parak leni reageja uz pieaugošo inflaciju.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (568, 202, 'Dzives dardziba paliks pastavigi augstaka pat pec inflacijas stabilizešanas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (569, 202, 'Valdibam butu tiešak jaiejaucas, lai kontroletu pirmas nepieciešamibas precu cenas (partika, energija, majoklis).', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (570, 202, 'Inflaciju vairak izraisa korporacijas neka valdibas politika.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (571, 203, 'Tirdzniecibas kari globalajai ekonomikai nodara lielaku kaitejumu, neka palidz jebkurai atseviškai valstij.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (572, 203, 'Valstim butu jasamazina atkariba no arzemes ražotam precem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (573, 203, 'Brivas tirdzniecibas ligumi parasti ir izdevigi abam pusem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (574, 203, 'Globalas piegades kedes ir japadara lokalizetakas, lai izvairitos no traucejumiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (575, 203, 'Sankcijas ir efektivs ekonomisks instruments.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (576, 204, 'Automatizacija likvides vairak darbavietu, neka radis.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (577, 204, 'Maksligais intelekts nakamo piecu gadu laika butiski parveidos globalo ekonomiku.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (578, 204, 'Valdibam butu japiemero lieli nodokli uznemumiem par cilveku darbaspeka aizstašanu ar automatizaciju.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (579, 204, 'Digitalas valutas parveidos globalas finanses.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (580, 204, 'Robotika nesamerigi ietekmes jaunattistibas valstis.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (581, 205, 'Energijas cenas tuvakaja nakotne saglabasies nestabilas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (582, 205, 'Valstim butu janacionalize galvenie energoresursi, lai stabilizetu cenas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (583, 205, 'Globala ekonomika ir parak atkariga no naftas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (584, 205, 'Retzemju metali klus par nozimigu geopolitisku konfliktu avotu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (585, 205, 'Zala energija visur klus letaka par fosilo kurinamo.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (586, 206, 'Bagatibas nevienlidziba ir viens no lielakajiem draudiem globalajai stabilitatei.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (587, 206, 'Miljardieriem ir parak liela ietekme uz globalo ekonomikas politiku.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (588, 206, 'Universalais pamatienakums galu gala klus nepieciešams.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (589, 206, 'Videja škira visa pasaule samazinas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (590, 206, 'Globala nabadziba ir samazinajusies, bet nevienlidziba valstu iekšiene ir pasliktinajusies.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (591, 207, 'Centralajam bankam ir parak liela ietekme uz pasaules ekonomiku.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (592, 207, 'Kriptovalutas nekad neklus par plaši izplatitiem finanšu instrumentiem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (593, 207, 'Tradicionalo banku sistemu aizstas finanšu tehnologiju (fintech) uznemumi.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (594, 207, 'Procentu likmju paaugstinašana ir labakais instruments inflacijas kontrolei.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (595, 207, 'Globala finanšu sistema ir sen nobriedusi reformam.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (596, 208, 'Attalinatais darbs paliks dominejošs darba modelis.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (597, 208, 'Globalais darbaspeka trukums klus biežaks.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (598, 208, 'Valdibam butu janosaka starptautiski darba standarti.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (599, 208, 'Platformu ekonomikas darbs (gig work) ir kaitejis darba stabilitatei visa pasaule.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (600, 208, 'Minimalas algas paaugstinašana dod labumu kopejai ekonomikai.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (601, 209, 'Kina nakamaja desmitgade klus par pasaules lielako ekonomiku.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (602, 209, 'Eiropas ekonomika zaude globalo ietekmi.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (603, 209, 'Afrikai ir visaugstakais ekonomiskais potencials ilgtermina izaugsmei.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (604, 209, 'Ekonomiskas alianses klust svarigakas par militarajam aliansem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (605, 209, 'Geopolitiska spriedze turpinas traucet globalo tirdzniecibu.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (606, 210, 'Klimata parmainas butiski trauces globalo ekonomiku.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (607, 210, 'Globala digitala valuta, ko emite centralas bankas, ir neizbegama.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (608, 210, 'Iedzivotaju skaita samazinašanas parveidos pasaules tirgus.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (609, 210, 'Pandemijam bus ilgstoša ekonomiska ietekme gadu desmitiem ilgi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (610, 210, 'Ekonomiska dezinformacija tiešsaiste ir nopietns risks.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (611, 212, 'Varda briviba daudzas valstis tiek arvien vairak ierobežota.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (612, 212, 'Cilvektiesibam ir jabut prioritatei par nacionalas drošibas interesem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (613, 212, 'Cenzura ir pamatota, ja ta aizsarga sabiedrisko drošibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (614, 212, 'Religijas briviba visa pasaule ir pienacigi aizsargata.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (615, 212, 'Privatums ir pamattiesibas, kuras valdibas bieži parkapj.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (616, 213, 'Visam valstim butu jaievieš stingraki pretdiskriminacijas likumi.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (617, 213, 'Dzimumu lidztiesiba visa pasaule uzlabojas parak leni.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (618, 213, 'LGBTQ+ tiesibas butu jaatzist vispareji.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (619, 213, 'Rasistiski aizspriedumi institucijas joprojam ir nozimiga cilvektiesibu problema.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (620, 213, 'Cilveki ar invaliditati joprojam saskaras ar plaši izplatitu sistemisku diskriminaciju.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (621, 214, 'Katrai valstij butu jaatcel navessods.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (622, 214, 'Taisniga tiesa daudzviet nav garanteta.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (623, 214, 'Ieslodzijuma apstakli daudzas valstis parkapj cilveka pamattiesibas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (624, 214, 'Par nepatiesu notiesašanu butu japaredz kompensacijas prasibas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (625, 214, 'Starptautiskajam tiesam vajadzetu but lielakam pilnvaram saukt pie atbildibas par cilvektiesibu parkapumiem.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (626, 215, 'Valdibas uzraudziba lielakaja dala valstu ir gajusi parak talu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (627, 215, 'Masu datu vakšana parkapj cilvektiesibas pat tad, ja to izmanto drošibai.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (628, 215, 'Sejas atpazišanas tehnologija butu jaierobežo vai jaaizliedz.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (629, 215, 'Trauksmes celejiem ir nepieciešama specigaka tiesiska aizsardziba.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (630, 215, 'Digitalas tiesibas butu jauzskata par cilvektiesibam.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (631, 216, 'Begliem butu janodrošina labaka aizsardziba saskana ar starptautiskajam tiesibam.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (632, 216, 'Valstim butu jauznem vairak patveruma mekletaju.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (633, 216, 'Kara noziegumi butu jaizmekle daudz agresivak.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (634, 216, 'Cilveku tirdznieciba joprojam ir viens no visvairak ignoretajiem globalajiem noziegumiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (635, 216, 'Piekluve tiram udenim butu jauzskata par universalam cilvektiesibam.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (636, 217, 'Veselibas aprupe ir cilveka pamattiesibas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (637, 217, 'Izglitibai visiem berniem pasaule ir jabut bez maksas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (638, 217, 'Ekstrema nabadziba parkapj cilveka pamattiesibas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (639, 217, 'Darba nemeju tiesibas daudzviet pasaule tiek mazinatas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (640, 217, 'Bernu darbs joprojam ir nopietna globala problema.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (641, 218, 'Sieviešu tiesibas daudzas valstis ir apdraudetas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (642, 218, 'Piekluve reproduktivas veselibas aprupei butu jauzskata par cilvektiesibam.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (643, 218, 'Valdibas nepietiekami nopietni uztver vardarbibu pret sievietem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (644, 218, 'Sieviešu daliba politika butu aktivi jaatbalsta.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (645, 218, 'Dzimumu atalgojuma atškiribas parkapj cilvektiesibu principus.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (646, 219, 'Maksliga intelekta sistemas butu jaregule, lai noverstu diskriminaciju.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (647, 219, 'Viltus video (deepfake) tehnologija apdraud individu tiesibas un drošibu.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (648, 219, 'Tehnologiju uznemumiem butu jaatbild par cilvektiesibu parkapumiem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (649, 219, 'Digitalas identitates sistemas rada jaunus cilvektiesibu riskus.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (650, 219, 'Maksliga intelekta uzraudziba paplašina valdibas varu uz pilsonu rekina.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (651, 220, 'Autoritarisms pasaule pieaug un apdraud cilvektiesibas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (652, 220, 'Daudzas demokratiskas valstis tiek apdraudeta plašsazinas lidzeklu briviba.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (653, 220, 'Protestu tiesibas visa pasaule tiek ierobežotas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (654, 220, 'Dezinformacija kaite cilvektiesibam, izkroplojot sabiedriskas debates.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (655, 220, 'Cilvektiesibu organizacijas saskaras ar pieaugošu politisko spiedienu.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (656, 221, 'Valstim butu jaiejaucas, ja cita valsts parkapj cilvektiesibas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (657, 221, 'Kulturas tradicijas nekad nedrikst attaisnot cilvektiesibu parkapumus.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (658, 221, 'Sankcijas ir pamatotas, reagejot uz cilvektiesibu parkapumiem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (659, 221, 'Korporacijam butu jabut juridiski atbildigam par parkapumiem piegades kedes.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (660, 221, 'Cilvektiesibam butu jaattistas, ieklaujot digitalas un ar klimatu saistitas tiesibas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (661, 222, 'Rasisms joprojam ir plaši izplatita problema daudzas sabiedribas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (662, 222, 'Institucionalais rasisms joprojam ietekme piekluvi izglitibai, veselibas aprupei un nodarbinatibai.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (663, 222, 'Varas iestades nepietiekami nopietni uztver naida noziegumus, kas balstiti uz rasi vai etnisko piederibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (664, 222, 'Valdibam butu jadara vairak, lai noverstu sistemisku diskriminaciju.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (665, 222, 'Tiesibaizsardzibas iestažu veikta rasu profilešana parkapj cilvektiesibas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (666, 223, 'LGBTQ+ cilveki daudzas valstis joprojam saskaras ar plaši izplatitu diskriminaciju.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (667, 223, 'Viendzimuma laulibas butu jaatzist par cilveka pamattiesibam.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (668, 223, 'Transpersonam ir nepieciešama lielaka tiesiska aizsardziba.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (669, 223, 'LGBTQ+ parstavnieciba plašsazinas lidzeklos pozitivi ietekme sabiedribas attieksmi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (670, 223, 'Pret LGBTQ+ verstie tiesibu akti parkapj starptautiskos cilvektiesibu standartus.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (671, 224, 'Piekluve drošam abortam butu jauzskata par cilvektiesibam.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (672, 224, 'Reproduktivas veselibas aprupes ierobežojumi nesamerigi kaite sievietem ar zemiem ienakumiem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (673, 224, 'Abortu aizliegumi trauce personisko brivibu un autonomiju.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (674, 224, 'Valdibam butu janodrošina vispareja piekluve visaptverošiem reproduktivas veselibas pakalpojumiem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (675, 224, 'Sabiedriska doma par abortiem klust arvien polarizetaka.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (676, 225, 'Politiskais ekstremisms pasaule pieaug un apdraud cilvektiesibas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (677, 225, 'Tiešsaistes platformas ekstremistu uzskatus izplata atrak neka tradicionalie mediji.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (678, 225, 'Valdibam butu jadara vairak, lai noverstu radikalizaciju, neparkapjot pilsoniskas brivibas.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (679, 225, 'Ekstremistu grupas izmanto ekonomisko nestabilitati, lai iegutu ietekmi.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (680, 225, 'Polarizacija vajina demokratiskas institucijas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (681, 226, 'Tiešsaistes naida runa butu stingrak jaregule.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (682, 226, 'Socialo mediju uznemumi nedara pietiekami daudz, lai noverstu uzmakšanos un draudus.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (683, 226, 'Dezinformacijas kampanas kaite demokratiskajiem procesiem un cilvektiesibam.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (684, 226, 'Anonima darbiba tiešsaiste apgrutina atbildibas noteikšanu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (685, 226, 'Digitalajam platformam butu japieprasa aizsargat lietotajus no merktiecigas vardarbibas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (686, 227, 'Begliem butu janodrošina stingraka starptautiska aizsardziba.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (687, 227, 'Valdibas nedara pietiekami daudz, lai aizsargatu patveruma mekletajus no vardarbibas un ekspluatacijas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (688, 227, 'Robežpolitika bieži parkapj cilvektiesibu principus.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (689, 227, 'Klimata parmainas tuvakajas desmitgades radis miljoniem beglu.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (690, 227, 'Migrantu aizturešana bieži ir necilveciga un nevajadziga.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (691, 228, 'Arkartas drošibas likumi bieži parkapj cilvektiesibas.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (692, 228, 'Masu uzraudziba grauj pamatbrivibas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (693, 228, 'Pretterorisma politika dažkart ir parak plaša un versta pret nevainigam grupam.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (694, 228, 'Protestu tiesibas tiek arvien vairak ierobežotas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (695, 228, 'Trauksmes celejiem visa pasaule ir nepieciešama specigaka tiesiska aizsardziba.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (696, 229, 'Cilvekiem ir jabut briviem bez bailem paust nepopularus vai atškirigus viedoklus.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (697, 229, 'Varda brivibu apdraud politiska polarizacija.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (698, 229, 'Cenzura bieži tiek attaisnota ar sabiedriskas kartibas aizsardzibas aizbildinajumu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (699, 229, 'Religiskas minoritates daudzas valstis saskaras ar diskriminaciju.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (700, 229, 'Dažos regionos tiek apdraudeta akademiska briviba.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (701, 230, 'Trampa komentari par politiskajiem oponentiem bieži ir necienigi vai kudoši.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (702, 230, 'Trampa retorika mazina cienu pret demokratiskam institucijam.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (703, 230, 'Trampa izteiktie publiskie apvainojumi oponentiem vajina prezidenta amata cienu.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (704, 230, 'Oponentu nosaukšana par pazemojošiem vardiem ir neprezidentala riciba.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (705, 230, 'Trampa kritika pret tiesnešiem, žurnalistiem un amatpersonam parkapj pienemamas robežas.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (706, 231, 'Trampa uzvediba neatbilst morales standartiem, kas tiek sagaiditi no nacionalajiem lideriem.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (707, 231, 'Tramps bieži popularize idejas vai attieksmes, kuras daudzi uzskata par morali apstridamam.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (708, 231, 'Politiskajam liderim vajadzetu demonstret labaku paškontroli, neka to parasti dara Tramps.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (709, 231, 'Trampa pazinojumi bieži parkapj plaši pienemtas pieklajibas normas.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (710, 231, 'Trampa uzvediba rada sliktu piemeru jaunakajam paaudzem.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (711, 232, 'Trampa retorika veicina agresivaku politisko dialogu ASV.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (712, 232, 'Trampa valoda veicina škelšanos, nevis vienotibu.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (713, 232, 'Trampa komunikacijas stils ir padarijis necienigu uzvedibu sociali pienemamaku.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (714, 232, 'Lideru publiskie apvainojumi normalize iebiedešanu pilsoniskajas diskusijas.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (715, 232, 'Trampa retorika apgrutina konstruktivu politisko sarunu.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (716, 233, 'Trampa retorika ir vulgaraka neka iepriekšejo ASV prezidentu retorika.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (717, 233, 'Nakotnes politiki varetu atdarinat Trampa kudošo komunikacijas stilu.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (718, 233, 'Tramps mainija politiskas runas normas uz slikto pusi.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (719, 233, 'Trampa retoriskais stils tiks atcerets ka negativa parmaina politiskaja kultura.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (720, 233, 'Trampa retorikas ilgtermina ietekme bus palielinats sabiedribas cinisms.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (721, 234, 'Daudzie apgalvojumi par parkapumiem pret Trampu rada nopietnas bažas par vina raksturu.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (722, 234, 'Apsudzibu apjoms pret Trampu liecina par problematiskas uzvedibas modeli.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (723, 234, 'Trampa iespejama iesaiste dažados skandalos mazina vina ka lidera uzticamibu.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (724, 234, 'Vertejot politisko kandidatu, butu janem vera publiskas apsudzibas par parkapumiem.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (725, 234, 'Apgalvojumi pret Trampu daudziem veletajiem ir likuši apšaubit vina piemerotibu amatam.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (726, 235, 'Publiski zinotie apgalvojumi par seksualiem parkapumiem pret Trampu ietekme manu viedokli par vinu.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (727, 235, 'Veids, ka Tramps reage uz apsudzibam par seksualiem parkapumiem, rada bažas par caurspidigumu.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (728, 235, 'Politiskajam liderim, kurš saskaras ar vairakam apsudzibam par nepiedienigu uzvedibu, butu japiemero augstaks standarts.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (729, 235, 'Trampa pretrunigo komentaru vesture par sievietem slikti atspogulo vina vadibu.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (730, 235, 'Ar seksu saistitie skandali ap Trampu kaite prezidenturas moralajai autoritatei.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (731, 236, 'Tiesas lietu skaits, kuras iesaistits Tramps, rada bažas par personu, kas kandide uz politisko amatu.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (732, 236, 'Trampa tiesas cinas noverš uzmanibu no vina spejas efektivi vadit.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (733, 236, 'Trampam butu japiemero tadi paši tiesiskie standarti ka jebkuram citam pilsonim, neatkarigi no politiska amata.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (734, 236, 'Tiesam nevajadzetu vilcinaties saukt Trampu pie atbildibas, ja to pamato pieradijumi.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (735, 236, 'Trampa notiekošas juridiskas problemas rada jautajumus par vina spriestspeju un lemumu pienemšanu.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (736, 237, 'Etiskas pretrunas ap Trampu apgrutina uzticešanos vinam ka publiskai amatpersonai.', '2025-11-16 00:00:00', 'E001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (737, 237, 'Trampa personigie skandali atspogulo necienu pret lideriem izvirzitajam moralajam pamatprasibam.', '2025-11-16 00:00:00', 'E002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (738, 237, 'Politikis ar Trampa pretrunu vesturi nevar kalpot ka vienojoša figura.', '2025-11-16 00:00:00', 'E003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (739, 237, 'Trampa pieeja noliegt vai noraidit vinam izteiktos parmetumus un apsudzibas pasliktina sabiedribas neuzticibu.', '2025-11-16 00:00:00', 'E004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (740, 237, 'Trampa skandali veicina uzticibas samazinašanos ASV politiskajai vadibai.', '2025-11-16 00:00:00', 'E005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (741, 238, 'Tarifu kari reti sasniedz paredzetos ekonomiskos merkus.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (742, 238, 'Sankcijas ir vairak simboliskas neka efektivas valdibas ricibas maina.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (743, 238, 'Sankcijas bieži vairak kaite parastajiem pilsoniem neka politiskajiem lideriem.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (744, 238, 'Tarifi ir novecojis instruments, kas globalizeta ekonomika vairs nedarbojas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (745, 238, 'Sankcijas ir efektivas tikai tad, ja tas atbalsta plašas starptautiskas koalicijas.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (746, 239, 'Tarifi ir pamatoti, aizsargajot vietejas nozares no negodigas konkurences.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (747, 239, 'Sankcijas ir pamatotas, reagejot uz cilvektiesibu parkapumiem.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (748, 239, 'Tarifu kari parasti vairak balstas uz politiku neka uz ekonomisku nepieciešamibu.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (749, 239, 'Sankcijas var but negodigas un nesamerigi kaitet jaunattistibas valstim.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (750, 239, 'Tarifi negodigi soda pateretajus ar augstakam cenam.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (751, 240, 'Tarifu kari rada lielaku ekonomisko kaitejumu, neka noverš.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (752, 240, 'Sankcijas trauce globalos tirgus un rada ilgtermina nestabilitati.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (753, 240, 'Tarifu cinas veicina augstaku inflaciju visa pasaule.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (754, 240, 'Sankciju kari padara globalas piegades kedes trauslakas.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (755, 240, 'Tarifi un sankcijas mudina valstis apiet globalo finanšu sistemu.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (756, 241, 'Tarifu kari mazina starptautisko sadarbibu.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (757, 241, 'Sankcijas padzilina politiskas nesaskanas un samazina diplomatiskas iespejas.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (758, 241, 'Bieža sankciju izmantošana vajina globalas institucijas un alianses.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (759, 241, 'Tarifu stridi mazina uzticibu starp ekonomiskajiem partneriem.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (760, 241, 'Sankcijas mudina valstis veidot alternativas alianses.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (761, 242, 'Tarifi un sankcijas paatrina deglobalizaciju.', '2025-11-16 00:00:00', 'D001', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (762, 242, 'Sankciju spiediens var mudinat autoritaras valdibas klut izoletakam.', '2025-11-16 00:00:00', 'D002', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (763, 242, 'Tarifu kari var izraisit atbildes politiku, kas klust nekontrolejama.', '2025-11-16 00:00:00', 'D003', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (764, 242, 'Ilgtermina sankciju režimi rada jaunus melnos tirgus un nelikumigus finanšu tiklus.', '2025-11-16 00:00:00', 'D004', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (765, 242, 'Tarifi palenina tehnologiju apmainu un globalo inovaciju.', '2025-11-16 00:00:00', 'D005', 0, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (766, 243, 'Vai ir korekti raksturot Donaldu Trampu ka klaunu vai idiotu.', '2025-11-22 00:00:00', 'E001', 1, 0, 0);
INSERT INTO Statements (Id, CategoryId, Name, DateCreated, Code, Votes1, Votes2, Votes3) VALUES (767, 243, 'Vinš tikai spele dusmiga apjukuša aksta lomu, lai izpatiktu savai veletaju bazei.', '2025-11-22 00:00:00', 'E002', 0, 1, 0);

-- Table: Users
CREATE TABLE Users (
    Id        INTEGER NOT NULL
                      CONSTRAINT PK_Users PRIMARY KEY AUTOINCREMENT,
    LoginType INTEGER NOT NULL
                      DEFAULT 1,
    NameId    TEXT    UNIQUE
                      NOT NULL,
    Name      TEXT    NOT NULL,
    Psw       TEXT    NULL,
    PswSalt   TEXT    NULL,
    UserType  INTEGER NOT NULL
                      DEFAULT 0
);


-- Table: Votes
CREATE TABLE Votes (
    Id          INTEGER NOT NULL
                        CONSTRAINT PK_Votes PRIMARY KEY AUTOINCREMENT,
    StatementId INTEGER NOT NULL,
    UserId      INTEGER NOT NULL,
    Value       INTEGER NOT NULL,
    CONSTRAINT FK_VOTE_STATEMENTID FOREIGN KEY (
        StatementId
    )
    REFERENCES Statements (Id) ON DELETE CASCADE,
    CONSTRAINT FK_VOTE_USERID FOREIGN KEY (
        UserId
    )
    REFERENCES Users (Id) ON DELETE CASCADE
);


-- Index: CATEGORY_IDX_CATEGORYID
CREATE INDEX CATEGORY_IDX_CATEGORYID ON Statements (
    "CategoryId"
);


-- Index: CATEGORY_IDX_NAME
CREATE INDEX CATEGORY_IDX_NAME ON Categories (
    "Name"
);


-- Index: CATEGORY_IDX_PARENT0ID
CREATE INDEX CATEGORY_IDX_PARENT0ID ON Categories (
    "ParentId"
);


-- Index: IX_Recommendations_UserId
CREATE INDEX IX_Recommendations_UserId ON Recommendations (
    "UserId"
);


-- Index: IX_Votes_StatementId
CREATE INDEX IX_Votes_StatementId ON Votes (
    "StatementId"
);


-- Index: IX_Votes_UserId
CREATE INDEX IX_Votes_UserId ON Votes (
    "UserId"
);


-- Index: STATEMENT_IDX_NAME
CREATE INDEX STATEMENT_IDX_NAME ON Statements (
    "Name"
);


-- Index: USER_IDX_NAME
CREATE UNIQUE INDEX USER_IDX_NAME ON Users (
    "Name"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
