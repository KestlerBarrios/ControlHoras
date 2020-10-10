drop database if exists DBControlHoras;
create database DBControlHoras;
use DBControlHoras;

Create Table Tipo_Actividad (
	idActividad int primary key auto_increment ,
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
    idActividad int,
    idColaborador int,
    idProyecto int,
    idHistorico_Salario int,
    constraint FK_IDColaborador foreign key (idColaborador) REFERENCES Usuario(idColaborador),
    constraint FK_ID_Actividad foreign key (idActividad) REFERENCES Tipo_Actividad(idActividad),
    constraint FK_ID_idProyecto foreign key (idProyecto) REFERENCES Proyecto(idProyecto),
    constraint FK_ID_idHistorico_Salario foreign key (idHistorico_Salario) REFERENCES Historico_Salarios(idHistorico_Salario)
);


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

																			-- Procedimientos almacenados de Actividades--
Delimiter //
create procedure sp_AgregarActividad (IN actividad varchar(150))
BEGIN
	Insert Into Tipo_Actividad(nombreActividad)
		Values(actividad);
END; 
//

Delimiter //
create procedure sp_EliminarActividad (IN id int)
BEGIN
	Delete From Tipo_Actividad where idActividad = id;
END; 
//

Delimiter //
create procedure sp_EditarActividad (IN id int, IN actividad varchar(150))
BEGIN
	Update	Tipo_Actividad set nombreActividad = actividad where idActividad = id;
END; 
//

Delimiter //
create procedure sp_BuscarActividad (IN id int)
BEGIN
	Select	*From Tipo_Actividad where idActividad = id;
END; 
//

Delimiter //
create procedure sp_ListarActividades ()
BEGIN
	Select	*From Tipo_Actividad;
END; 
//

																			-- Procedimientos almacenados de Proyectos
Delimiter //
create procedure sp_AgregarProyecto (IN proyecto varchar(150))
BEGIN
	Insert Into Tipo_Actividad(nombreProyecto)
		Values(proyecto);
END; 
//

Delimiter //
create procedure sp_EliminarProyecto (IN id int)
BEGIN
	Delete From Proyecto where idProyecto = id;
END; 
//

Delimiter //
create procedure sp_EditarProyecto (IN id int, IN proyecto varchar(150))
BEGIN
	Update	Proyecto set nombreProyecto = proyecto where idProyecto = id;
END; 
//

Delimiter //
create procedure sp_BuscarProyecto (IN id int)
BEGIN
	Select	*From Proyecto where idProyecto= id;
END; 
//

Delimiter //
create procedure sp_ListarProyectos ()
BEGIN
	Select	*From Proyecto;
END; 
//

																			-- Procedimientos almacenados de Control Semanal
Delimiter //
create procedure sp_AgregarControlSemanal (IN fecha datetime, IN horas int, IN descripcion text, IN actividad int, IN colaborador int, IN proyecto int)
BEGIN
	Insert Into Control_Semanal (fechaRegistro, cantidadHoras, descripcion, idActividad, idColaborador, idProyecto)
		Values(fecha, horas, descripcion, actividad, colaborador, proyecto);
END; 
//

Delimiter //
create procedure sp_EliminarControlSemanal (IN id int)
BEGIN
	Delete From Control_Semanal where idControl_Semanal = id;
END; 
//

Delimiter //
create procedure sp_EditarControlSemanal (IN id int, IN fecha datetime, IN horas int, IN descripcion text, IN actividad int, IN colaborador int, IN proyecto int, IN salario int)
BEGIN
	Update	Control_Semanal set fechaRegistro = proyecto, 
								cantidadHoras = horas,
                                descripcion = descripcion,
                                idActividad = actividad,
                                idColaborador = colaborador,
                                idProyecto = proyecto
                                where idControlSemanal = id;
END; 
//

Delimiter //
create procedure sp_BuscarControlSemanal (IN id int)
BEGIN
	Select	*From Control_Semanal where idControl_Semanal = id;
END; 
//

Delimiter //
create procedure sp_ListarControlSemanal ()
BEGIN
	Select	*From Control_Semanal;
END; 
//
                                                                            
