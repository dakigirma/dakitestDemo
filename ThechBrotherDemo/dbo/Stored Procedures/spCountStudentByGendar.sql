CREATE PROCEDURE spCountStudentByGendar
@Gendar nvarchar(10),
@Totalstudent INT OUTPUT
--WITH ENCRYPTION 
AS 
BEGIN
	SELECT @Totalstudent = COUNT(Studentid) 
	FROM dbo.tbl_Students 
	WHERE Gendar = @Gendar
END
