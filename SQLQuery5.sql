CREATE PROCEDURE usp_Products_InsertProductSizes
(
	@ProductID INT
	,@SizeID INT
	
)
As 
	BEGIN
	INSERT INTO [dbo].[ProductSizes]
           ([ProductID]
           ,[SizeID])
		   VALUES(
				 @ProductID
				,@SizeID 
		   )
		   END

