IF EXISTS (SELECT name FROM sys.objects WHERE name = 'CreateAccount' AND type = 'p') 
DROP PROCEDURE CreateAccount
GO


CREATE PROCEDURE CreateAccount
@Username varchar(50),
@Pass varchar(50),
@Email varchar(50),
@ServerId int,
@Privilege varchar(50)

AS

INSERT INTO ACCOUNT(Username,Pass,Email,ServerId,AccountPrivilege)
VALUES (@Username,@Pass,@Email,@ServerId,@Privilege)


GO

EXECUTE AddAccount @Username = 'MikeMittens2' , @Pass = 'StRoNgPasS' , @Email = 'Mike@FazbearEntertainment.com', @ServerId = 2, @Privilege = 'Premium'