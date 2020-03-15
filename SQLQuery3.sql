CREATE PROCEDURE usp_Product_LoadAllProductsByProductNames
(
	@Name NVARCHAR(100)
)
AS
	BEGIN

	SELECT
		P.[ProductID]
	   ,p.[Name] as 'Name'
	   ,l1.[Description] as 'Description'
	   ,l2.[Description] as 'Description'
	   ,p.[PurchasePrice] as 'PurchasePrice'
	   ,p.[SalesPrice] as 'SalesPrice'
	   ,l3.[Description] as 'Description'
	   from [dbo].[Products] p
	   inner JOIN [dbo].[ListTypesData] l1 ON p.CategoryID = l1.ListTypeDataID
	   inner JOIN [dbo].[ListTypesData] l2 ON p.SupplierID = l2.ListTypeDataID
	   inner JOIN [dbo].[ProductSizes] ps ON p.ProductID = ps.ProductID
	   inner JOIN [dbo].[ListTypesData] l3 ON ps.SizeID = l3.ListTypeDataID

	   WHERE p.[Name]  LIKE + '%' + @Name + '%'
	END