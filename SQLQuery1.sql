CREATE PROCEDURE usp_Products_LoadAllProductsForDataGridView
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
	   INNER JOIN [dbo].[ListTypesData] l1 ON p.CategoryID = l1.ListTypeDataID
	   INNER JOIN [dbo].[ListTypesData] l2 ON p.SupplierID = l2.ListTypeDataID
	   INNER JOIN [dbo].[ProductSizes] ps ON p.ProductID = ps.ProductID
	   INNER JOIN [dbo].[ListTypesData] l3 ON ps.SizeID = l3.ListTypeDataID
	END