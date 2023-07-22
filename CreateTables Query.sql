IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'MMOGame')
BEGIN
    CREATE DATABASE MMOGame;
END

USE MMOGame;


IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'MSERVER')
BEGIN
CREATE TABLE MSERVER(
ServerId int IDENTITY(1,1),
Region varchar(25) NOT NULL UNIQUE,
PRIMARY KEY(ServerId),
PlayerCount int DEFAULT 0,
PlayersOnline int DEFAULT 0,
WeatherData varchar(25)

);

END


IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'ACCOUNT')
BEGIN

CREATE TABLE ACCOUNT(
AccountiD int IDENTITY(1,1) PRIMARY KEY,
Username varchar(25) NOT NULL UNIQUE,
Pass varchar(30) NOT NULL UNIQUE,
Email varchar(30) NOT NULL UNIQUE,
AccountLevel int NOT NULL DEFAULT 0,
AccountExperience int NOT NULL DEFAULT 0,
AccountPrivilege varchar(25) NOT NULL,
ServerId int NOT NULL,
FOREIGN KEY(ServerId) REFERENCES MSERVER(ServerId)
);


END

if not exists (SELECT * from sys.tables WHERE name = 'BILLINGINFO')
BEGIN
CREATE TABLE BILLINGINFO
(
CreditCard varchar(25) NOT NULL,
AccountId int NOT NULL UNIQUE,
FOREIGN KEY(AccountId) REFERENCES ACCOUNT(AccountId)
);
END


if not exists (SELECT * from sys.tables WHERE name = 'PLAYERCHARACTER')
BEGIN
CREATE TABLE PLAYERCHARACTER
(
CharacterId int IDENTITY(1,1),
CharacterName varchar(30) UNIQUE NOT NULL,
PRIMARY KEY(CharacterId),
CharacterLevel int DEFAULT 0,
Experience int DEFAULT 0,
EnemiesKilled int DEFAULT 0,
MaxHealth int NOT NULL,
Race varchar(30) NOT NULL,
AccountId int NOT NULL,
FOREIGN KEY(AccountId) REFERENCES Account(AccountId)
);
END


if not exists (SELECT * from sys.tables WHERE name = 'ITEMS')
BEGIN
CREATE TABLE ITEMS(
ItemName varchar(30) PRIMARY KEY NOT NULL,
ItemType varchar(30) NOT NULL,
MaxSpace int NOT NULL DEFAULT 5,
CharacterId int NOT NULL,
FOREIGN KEY(CharacterId) REFERENCES PLAYERCHARACTER(CharacterId)
);
END 



if not exists (SELECT * from sys.tables WHERE name = 'QUESTMANAGER')
BEGIN
CREATE TABLE QUESTMANAGER
(
QuestManagerId int IDENTITY(1,1) PRIMARY KEY,     --Needed a new better primary key
TotalQuests int NOT NULL,
QuestsCompleted int NOT NULL,
AvailableQuests int NOT NULL,
CharacterName varchar(30) UNIQUE NOT NULL,
CharacterId int UNIQUE NOT NULL,
FOREIGN KEY(CharacterId) REFERENCES PLAYERCHARACTER(CharacterId)
);
END