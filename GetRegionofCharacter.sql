IF EXISTS (SELECT name FROM sys.objects WHERE name = 'GetRegionByCharacterId' AND type = 'fn') 
DROP FUNCTION GetRegionByCharacterId
GO

CREATE FUNCTION GetRegionByCharacterName (@CharacterName varchar(50))
RETURNS varchar(50)
AS
BEGIN
DECLARE @region varchar(25);

SELECT @region = Region FROM MSERVER
INNER JOIN ACCOUNT ON MSERVER.ServerId = ACCOUNT.ServerId
INNER JOIN PLAYERCHARACTER ON ACCOUNT.AccountiD = PLAYERCHARACTER.AccountId
WHERE PLAYERCHARACTER.CharacterName = @CharacterName;

RETURN @region;

END
GO

SELECT dbo.GetRegionByCharacterName('Khadgar')