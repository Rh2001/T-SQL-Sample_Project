IF EXISTS (SELECT name FROM sys.objects WHERE name = 'GetUsername' AND type = 'fn') 
DROP FUNCTION GetUsername
GO


CREATE FUNCTION GetUsername(@CharacterName varchar(50))
RETURNS varchar(50)
AS
BEGIN

DECLARE @username varchar(25);

SELECT @username = Username FROM ACCOUNT
INNER JOIN PLAYERCHARACTER ON ACCOUNT.AccountiD = PLAYERCHARACTER.AccountId
WHERE PLAYERCHARACTER.CharacterName = @CharacterName;

RETURN @username;

END
GO

SELECT dbo.GetUsername('Khadgar');

