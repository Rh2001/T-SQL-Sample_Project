USE MMOGame;

INSERT INTO MSERVER(Region,PlayerCount,PlayersOnline,WeatherData)
VALUES
('Europe', 15000,7500,'Sunny'),
('North America', 35000,20000,'Rainy'),
('South America', 7420,20000,'Hail'),
('Asia', 66321,32211,'Sunny'),
('Oceania', 12000,2000,'Light Rain');

INSERT INTO ACCOUNT(Username,Pass,Email,AccountLevel,AccountExperience,AccountPrivilege,ServerId)
VALUES
('DarkJason1311','1234Safe','JasonVoor@gmail.com',15,100,'Premium',1),
('Rohi','1234UnSafe','rr@yahoo.com',115,3324,'Free',1),
('Yasuo123','Yasyas','yas@yahoo.com',1,100,'Free',2),
('ThePersianPhoenix','Parande123','TPP@ugu.com',4,400,'Premium',1),
('Jacky11','JaCk12','jackmorris@gmail.com',5,770,'Free',1),
('LiuKang','ShaolinKang@12','LiuKa@shaolin.go',230,14660,'Permium',3),
('FunkyMonkeyRohaTek','FunkyisFunk11330','MonkeyFunkyDev@rohatek.com',999,99999,'Developer',2),
('FunkyBearRohaTek','WeBareBears123','FunkyBearDev@rohatek.com',999,99999,'Developer',2),
('MikeyMyers333','Halloween122','MikeMyers1978@gmail.com',63,5672,'Premium',2);


INSERT INTO BILLINGINFO(CreditCard,AccountId)
VALUES 
('1111-2222-3333-4444', (SELECT AccountId FROM ACCOUNT WHERE Username = 'DarkJason1311')),
('9999-8888-7777-6666', (SELECT AccountId FROM ACCOUNT WHERE Username = 'Rohi')),
('1234-5678-9012-3456', (SELECT AccountId FROM ACCOUNT WHERE Username = 'Yasuo123')),
('5555-6666-7777-8888', (SELECT AccountId FROM ACCOUNT WHERE Username = 'ThePersianPhoenix')),
('4444-5555-6666-7777', (SELECT AccountId FROM ACCOUNT WHERE Username = 'Jacky11')),
('3333-4444-5555-6666', (SELECT AccountId FROM ACCOUNT WHERE Username = 'LiuKang')),
('7777-8888-9999-0000', (SELECT AccountId FROM ACCOUNT WHERE Username = 'FunkyMonkeyRohaTek')),
('4444-5555-6666-7777', (SELECT AccountId FROM ACCOUNT WHERE Username = 'FunkyBearRohaTek')),
('2222-3333-4444-5555', (SELECT AccountId FROM ACCOUNT WHERE Username = 'MikeyMyers333'));




INSERT INTO PLAYERCHARACTER(CharacterName,CharacterLevel,Experience,MaxHealth,Race,EnemiesKilled,AccountId)
VALUES
('Thrall', 50, 10000, 5000, 'Orc', 100, 4),
('Sylvanas', 60, 15000, 6000, 'Undead', 200, 2),
('Tyrande', 55, 12000, 5500, 'Night Elf', 150, 8),
('Jaina', 70, 20000, 7000, 'Human', 250, 5),
('Illidan', 80, 25000, 8000, 'Demon Hunter', 300, 4),
('Arthas', 65, 14000, 6500, 'Death Knight', 175, 1),
('Varian', 75, 22000, 7500, 'Human', 275, 3),
('Garrosh', 58, 11000, 5800, 'Orc', 130, 6),
('Grommash', 62, 13000, 6200, 'Orc', 140, 7),
('Kel''Thuzad', 63, 13500, 6300, 'Undead', 145, 2),
('Malfurion', 57, 10500, 5700, 'Night Elf', 125, 1),
('Anduin', 68, 18000, 6800, 'Human', 225, 4),
('Valeera', 52, 9500, 5200, 'Blood Elf', 115, 6),
('Khadgar', 45, 8000, 4500, 'Human', 90, 3),
('Genn', 72, 21000, 7200, 'Worgen', 260, 5);




INSERT INTO ITEMS(ItemName,ItemType,MaxSpace,CharacterId)
VALUES 
('Deathcap', 'Helm', 20, 1),
('Black Cleaver', 'Axe', 25, 1),
('Infinity Edge', 'Sword', 30, 4),
('Trinity Force', 'Shield', 35, 14),
('Sunfire Cape', 'Cloth', 40, 14),
('Randuin''s Omen', 'Amulet', 45, 5),
('Warmog''s Armor', 'Chest Armor', 50, 4),
('Thornmail', 'Mail Armor', 55, 2),
('Zhonya''s Hourglass', 'Trinket', 60, 7),
('Void Staff', 'Staff', 65, 7),
('Liandry''s Torment', 'Helm', 70, 4),
('Nashor''s Tooth', 'Dagger', 75, 2),
('Guinsoo''s Rageblade', 'Sword', 80, 11),
('Lich Bane', 'Two-Handed Sword', 85, 5),
('Hextech Gunblade', 'Gun', 90, 12);

INSERT INTO QUESTMANAGER(TotalQuests,QuestsCompleted,AvailableQuests,CharacterName,CharacterId)
VALUES
(255, 25, 230, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 1), 1),
(255, 10, 245, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 2), 2),
(255, 200, 55, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 3), 3),
(255, 255, 0, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 4), 4),
(255, 141, 14, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 5), 5),
(255, 55, 200, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 6), 6),
(255, 245, 10, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 7), 7),
(255, 50, 205, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 8), 8),
(255, 230, 25, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 9), 9),
(255, 130, 125, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 10), 10),
(255, 255, 0, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 11), 11),
(255, 10, 245, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 12), 12),
(255, 108, 147, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 13), 13),
(255, 255, 0, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 14), 14),
(255, 255, 0, (SELECT CharacterName FROM PLAYERCHARACTER WHERE CharacterId = 15), 15);