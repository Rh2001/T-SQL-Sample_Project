IF EXISTS (SELECT name FROM sys.objects WHERE name = 'AddPlayer' AND type = 'p') 
DROP PROCEDURE AddPlayer
GO


CREATE PROCEDURE AddPlayer
@Race varchar(50),
@AccountId int,
@CharacterName varchar(50),
@MaxHealth int

AS

INSERT INTO PLAYERCHARACTER(Race,AccountId,CharacterName,MaxHealth)
VALUES (@Race,@AccountId,@CharacterName,@MaxHealth)

GO


EXECUTE AddPlayer @Race = 'Worgen' , @AccountId = 1 , @CharacterName = 'Yasuo' , @MaxHealth = 500