ALTER PROCEDURE [dbo].[USPEmployeeLoginValid]
@EmpEmail varchar(100),
@Password varchar(50)
AS
BEGIN
Declare @Id_emp int,@EmpIsAdmin bit
 select @Id_emp=EmpId,@EmpIsAdmin=e.EmpIsAdmin from tblEmployee e where RTRIM(LTRIM(e.EmpEmail))=RTRIM(LTRIM(@EmpEmail)) 
		and RTRIM(LTRIM(e.EmpPassword))=RTRIM(LTRIM(@Password)) and EmpIsDelete=0 and EmpIsActive=1
		if @Id_emp>0
			Begin
			Select e.EmpId,e.EmpEmail,@EmpIsAdmin as EmpIsAdmin,e.EmpName from tblEmployee e where EmpEmail=@EmpEmail
			End
END
