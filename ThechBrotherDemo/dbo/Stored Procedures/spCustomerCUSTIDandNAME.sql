

CREATE PROCEDURE spCustomerCUSTIDandNAME

@custid int,

@fname varchar(20)

AS 

BEGIN 

	SELECT CustID,Fname 

	FROM dbo.customer 

	WHERE CustID = @custid AND Fname = @fname

	ORDER BY Fname

END
