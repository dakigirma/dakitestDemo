CREATE PROC spstudentsbyid_gendar
@gendar AS varchar
AS
BEGIN
SELECT Gendar,COUNT(*) 
FROM [dbo].[tbl_Students] 
WHERE Gendar = @gendar 
GROUP BY Gendar
END