CREATE PROCEDURE usp_Products_InsertNewProduct
(
	@Name NVARCHAR(100)
	,@CategoryID INT
	,@SupplierID INT
	,@PurchasePrice DECIMAL(18,2)
	,@SalesPrice DECIMAL(18,2)
)
As 
	BEGIN
	INSERT INTO [dbo].[Products]
           ([Name]
           ,[CategoryID]
           ,[SupplierID]
           ,[PurchasePrice]
           ,[SalesPrice])
		   VALUES(
				 @Name 
				,@CategoryID
				,@SupplierID
				,@PurchasePrice
				,@SalesPrice
		   )
		   SELECT SCOPE_IDENTITY()
		   END