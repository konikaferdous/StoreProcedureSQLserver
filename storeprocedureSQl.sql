Create Procedure usp_Login_VerifyLoginDetails
(
	@UserName NVARCHAR(50)
	,@Password NVARCHAR(50)
)
AS 
	BEGIN
		SELECT '#' From [dbo].[LoginUsers]
		Where [UserName] = @UserName
		AND [Password] = @Password

		End