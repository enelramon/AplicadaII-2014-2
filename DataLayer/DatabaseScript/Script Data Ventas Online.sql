Create Database VentasOnLine
go
use VentasOnLine
go

Create table Clientes (CodigoCliente int identity(1,1) primary key,
Nombres varchar(80),
Empresa varchar(80))
go

Insert into Clientes(Nombres,Empresa) Values ('Ramon Perez','Perez y Asoc.')
Insert into Clientes(Nombres,Empresa) Values ('Jose Lopez','Construcento')
Insert into Clientes(Nombres,Empresa) Values ('Juan Diaz','Soluciones Electricas')
Insert into Clientes(Nombres,Empresa) Values ('Pedro Alvarez','Alvarez y Asoc.')

select *  from clientes
go
Create Table Ventas(IdVenta int identity(1,1) primary key,
Fecha datetime,CodigoCliente int,Monto float)
go

go
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-05-23', 1, 2500)
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-06-30', 2, 45500)
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-09-24', 3, 500)
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-02-28', 4, 260)

INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-05-24', 1, 250)
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-06-24', 2, 4550)
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-09-25', 3, 50)
INSERT INTO Ventas( Fecha, CodigoCliente, Monto) VALUES( '2014-02-26', 4, 26)

select * from ventas
go

go
Create Table Cobros(IdCobro int identity(1,1) primary key,
Fecha datetime,CodigoCliente int,Monto float)
go

go
INSERT INTO Cobros( Fecha, CodigoCliente, Monto) VALUES( '2014-05-28', 1, 100)
INSERT INTO Cobros( Fecha, CodigoCliente, Monto) VALUES( '2014-07-05', 2, 100)
INSERT INTO Cobros( Fecha, CodigoCliente, Monto) VALUES( '2014-09-30', 3, 100)
INSERT INTO Cobros( Fecha, CodigoCliente, Monto) VALUES( '2014-03-29', 4, 100)
go

SELECT Fecha, IdVenta AS Documento, 'FACTURA' AS Tipo, Monto AS Debito, 0 AS Credito		FROM  Ventas 
union all
select Fecha, IdCobro AS Documento, 'COBRO' AS Tipo,0 AS Debito,  Monto AS Credito from Cobros 
		
go
		
		
-- =============================================
-- Author:		Enel R. Almonte Pichardo
-- Create date: 28-05-2014
-- Description:	Procedimiento para consultar el estado de cuenta de un cliente
-- =============================================
CREATE PROCEDURE [Sp_EstadoCuentaCliente]
	-- Add the parameters for the stored procedure here
	@CodigoCliente int = 0,
	@Desde datetime,
	@Hasta datetime 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

	SELECT Fecha, IdVenta AS Documento, 'FACTURA' AS Tipo, Monto AS Debito, 0 AS Credito
		FROM  Ventas  
		where CodigoCliente = @CodigoCliente And (Fecha BETWEEN @Desde and @Hasta) 
	Union all
		SELECT Fecha, IdCobro AS Documento, 'COBRO' AS Tipo,0 AS Debito,  Monto AS Credito
		FROM  Cobros   
		where CodigoCliente = @CodigoCliente And (Fecha BETWEEN @Desde and @Hasta)
		
END
GO
 