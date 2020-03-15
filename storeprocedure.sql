CREATE PROCEDURE usp_ListTypesData_LoadDataIntoComboBox
(
	@ListTypeID INT
)
AS
	BEGIN
		SELECT [ListTypeDataID] AS 'ID'
		,[Description] AS 'Description'
		FROM [dbo].[ListTypesData]
		WHERE [ListTypeID] = @ListTypeID
	END