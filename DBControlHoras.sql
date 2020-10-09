drop database if exists DBControlHoras;
create database DBControlHoras;
use DBControlHoras;

Create Table Tipo_Actividad (
	idTipo_Actividad int primary key auto_increment ,
    nombreActividad varchar(100)
);

Create Table Proyecto(
	idProyecto int primary key auto_increment,
    nombreProyecto varchar(150)
);

Create Table Usuario(
	idColaborador int primary key,
    nombreColaborador varchar(150),
    correo varchar(100),
    telefono int,
    direccion varchar(150),
    edad int
);

Create Table Historico_Salarios(
	idHistorico_Salario int primary key auto_increment,
    salario decimal(5,2),
    fecha date,
    costoHora decimal(3,2),
    idColaborador int,
    constraint FK_ID_Colaborador foreign key (idColaborador) REFERENCES Usuario(idColaborador)
);

Create Table Control_Semanal(
	idControl_Semanal int primary key auto_increment,
    fechaRegistro datetime,
	cantidadHoras int,
    descripcion text,
    totalActividad decimal (5,2),
    idTipo_Actividad int,
    idColaborador int,
    idProyecto int,
    idHistorico_Salario int,
    constraint FK_IDColaborador foreign key (idColaborador) REFERENCES Usuario(idColaborador),
    constraint FK_ID_TipoActividad foreign key (idTipo_Actividad) REFERENCES Tipo_Actividad(idTipo_Actividad),
    constraint FK_ID_idProyecto foreign key (idProyecto) REFERENCES Proyecto(idProyecto),
    constraint FK_ID_idHistorico_Salario foreign key (idHistorico_Salario) REFERENCES Historico_Salarios(idHistorico_Salario)
);
/*
																			-- Procedimientos almacenados de Usuarios

delimiter //
create procedure sp_AgregarUsuario (IN id int, IN nombre varchar(150), IN email varchar(100), IN tel int, IN direccion varchar(150), IN edad int)
BEGIN
	Insert into Usuario (idColaborador, nombreColaborador, correo, telefono, direccion, edad)
		Values(id, nombre, email, tel, direccion, edad);
END; 
//

delimiter //
create procedure sp_EliminarUsuario (IN id int)
BEGIN
	delete from Usuario where idColaborador = id;
END;
//

delimiter //
create procedure sp_EditarUsuario (IN id int, IN nombre varchar(150), IN email varchar(100), IN tel int, IN direccion varchar(150), IN edad int)
BEGIN
	update Usuario set 	nombreColaborador = nombre, 
						correo = email, 
						telefono = tel, 
						direccion = direccion, 
						edad = edad
						where codigoColaborador = id;
END; 
//

delimiter //
create procedure sp_BuscarUsuario (IN id int)
BEGIN
	Select *From Usuario Where idColaborador = id;
END; 
//

delimiter //
create procedure sp_ListarUsuarios ()
BEGIN
	Select	*From Usuario;
END; 
//

																			-- Procedimientos almacenados de Salarios

Delimiter //
create procedure sp_AgregarSalario (IN sueldo decimal(5,2), IN fecha date, IN costoHora decimal(3,2), IN colaborador int)
BEGIN
	Insert Into Historico_Salarios (salario, fecha, costoHora, idColaborador)
		Values	(sueldo, fecha, costo,colaborador);
END; 
//

Delimiter //
create procedure sp_EliminarSalario (IN id int)
BEGIN
	Select	*From Historico_Salarios where codigoColaborador = id;
END; 
//

Delimiter //
create procedure sp_EditarSalario (IN salario decimal(5,2), IN fecha date, IN costoHora decimal, IN idColaborador int)
BEGIN
	Select	*From Usuario;
END; 
//

Delimiter //
create procedure sp_BuscarSalario (IN fecha date)
BEGIN
	Select	*From Historico_Salarios where fecha = fecha;
END; 
//

Delimiter //
create procedure sp_ListarSalarios ()
BEGIN
	Select	*From Historico_Salarios;
END; 
//
*/
																			-- Procedimientos almacenados de Actividades--
Delimiter //
create procedure sp_AgregarActividad ()
BEGIN
	Insert Into Tipo_Actividad()
    Values();
END; 
//

Delimiter //
create procedure sp_EliminarActividad ()
BEGIN
	Select	*From Historico_Salarios;
END; 
//

Delimiter //
create procedure sp_EditarActividad ()
BEGIN
	Select	*From Historico_Salarios;
END; 
//

Delimiter //
create procedure sp_BuscarActividad ()
BEGIN
	Select	*From Historico_Salarios;
END; 
//

Delimiter //
create procedure sp_ListarActividad ()
BEGIN
	Select	*From Historico_Salarios;
END; 
//
																			/* Procedimientos almacenados de Proyectos*/
																			/* Procedimientos almacenados de Control Semanal*/