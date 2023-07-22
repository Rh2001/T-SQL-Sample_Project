CREATE TABLE LogTable(
AccountId int PRIMARY KEY,
Username varchar(25) NOT NULL UNIQUE,
Pass varchar(30) NOT NULL UNIQUE,
Email varchar(30) NOT NULL UNIQUE,
AccountLevel int NOT NULL DEFAULT 0,
AccountExperience int NOT NULL DEFAULT 0,
AccountPrivilege varchar(25) NOT NULL,
ServerId int NOT NULL,
FOREIGN KEY(ServerId) REFERENCES MSERVER(ServerId)
);


IF EXISTS (SELECT name FROM sys.objects WHERE name = 'LogDeletedRow' AND type = 'tr') 
DROP TRIGGER LogDeletedRow
GO



CREATE TRIGGER LogDeletedRow ON ACCOUNT
FOR DELETE
AS

INSERT INTO LogTable(AccountId,Username,Pass,Email,AccountLevel,AccountExperience,AccountPrivilege,ServerId)
SELECT d.AccountiD , d.Username, d.Pass,d.Email,d.AccountLevel,d.AccountExperience,d.AccountPrivilege, d.ServerId

FROM Deleted d

GO


DELETE FROM ACCOUNT
WHERE Username = 'MikeMittens2'

SELECT * FROM LogTable