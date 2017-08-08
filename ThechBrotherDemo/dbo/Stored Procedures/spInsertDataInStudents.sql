


CREATE PROC spInsertDataInStudents

	(

		@studentid int,

		@fname nvarchar(20),

		@lname nvarchar(30),
		@gendar nvarchar(10),

		@email nvarchar(30)

	)

AS

BEGIN

	INSERT INTO tbl_Students(Studentid,Firstname,Lastname,Gendar,Email)

	VALUES (@studentid,@fname,@lname,@gendar,@email)

END