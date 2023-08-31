create database db_universidad;
use db_universidad;
drop database db_universidad;


create table departamento(
id_departamento integer(10) primary key not null,
nombre varchar(50) not null
);

create table grado(
id_grado integer(10) primary key not null,
nombre varchar(100) not null
);

create table alumno(
id_alumno int(10) primary key not null,
nif varchar(9),
nombre varchar(25) not null,
apellido1 varchar (50) not null,
apellido2 varchar (50) not null,
ciudad varchar(25) not null,
direccion varchar(50),
telefono varchar(9),
fecha_nacimiento date,
sexo ENUM('H','M')
);

create table curso_escolar(
id_curso_escolar int(10) primary key not null,
año_inicio year(4),
año_fin year(4)
);

create table profesor(
id_profesor int(10) primary key not null,
nif varchar(9),
nombre varchar(25) not null,
apellido1 varchar (50) not null,
apellido2 varchar (50) not null,
ciudad varchar(25) not null,
direccion varchar(50),
telefono varchar(9),
fecha_nacimiento date,
sexo ENUM('H','M'),
id_departamento integer(10) not null,
foreign key(id_departamento) references departamento(id_departamento)
);

create table asignatura(
id_asignatura integer(10) primary key not null,
nombre varchar (100),
creditos float,
tipo ENUM ('basica','obligatorio','optativa') not null,
curso tinyint(3),
cuatrimestre tinyint(3),
id_profesor int(10)not null,
id_grado int(10) not null,
foreign key (id_profesor) references profesor(id_profesor),
foreign key (id_grado) references grado(id_grado)
);

create table alumno_se_matricula_asignatura (
primary key(id_alumno,id_asignatura,id_curso_escolar),
id_alumno int(10),
id_asignatura int(10),
id_curso_escolar int(10),
foreign key (id_alumno) references alumno(id_alumno),
foreign key (id_asignatura) references asignatura(id_asignatura),
foreign key (id_curso_escolar) references curso_escolar(id_curso_escolar)
);



insert into departamento(id_departamento, nombre)values(01,'quindio'),(02,'risaralda'),(03,'caldas'),(04,'antioquia'),(05,'huila');
insert into grado(id_grado,nombre)values(1,'ing.sistema'),(2,'informatica'),(3,'ing.civil'),(4,'licenciatura en psicologia'),(5,'aux.enfermeria');
insert into alumno(id_alumno,nif,nombre,apellido1,apellido2,ciudad,direccion,telefono,fecha_nacimiento,sexo)values(1,119281441,'santiago','hurtado','marulanda','armenia','cra10#25N15','157632157','2002-09-09','H'),
(2,119281442,'paola','marulanda','valencia','pereira','cra10#17N21','157632156','2000-09-10','M'),(3,119281443,'ximena','hurtado','sanchez','filandia','cra80#57N22','257632157','2000-10-09','M'),
(4,119281441,'jorge','cabezas','arrollabe','armenia','cra15#37N20','157632157','1995-09-09','H'),(5,119281441,'juan','felipe','sanchez','chile','cra89#10N20','157632157','1990-09-09','H');
insert into curso_escolar(id_curso_escolar, año_inicio, año_fin)values(1001,2023,2028),(1002,2022,2027),(1003,2021,2026),(1004,2020,2025),(1005,2019,2024);
insert into profesor(id_profesor,nif,nombre,apellido1,apellido2,ciudad,direccion,telefono,fecha_nacimiento,sexo,id_departamento)values(1,152369587,'santiago','hurtado','marulanda','armenia','cra205#170N28','152456398','2000-09-09','H',01),
(2,152369587,'santiago','hurtado','marulanda','cra20#17N20','152456398','2000-09-09','H',01),(3,152369587,'santiago','hurtado','marulanda','armenia','cra22#17N20','152456398','2000-09-09','H',01),
(4,152369587,'santiago','hurtado','marulanda','armenia','cra40#12N2','152456398','2000-09-09','H',01),(5,152369587,'andres','ortiz','restrepo','armenia','cra14#17N36','152456398','2000-09-09','H',01);
insert into asignatura(id_asignatura,nombre,creditos,tipo,curso,cuatrimestre,id_profesor,id_grado)values(1,'programacion',5.2,'basica',12,23,1,1),(2,'programacion',5.2,'basica',12,23,1,1),
(3,'programacion',5.2,'basica',12,23,1,1),(4,'programacion',5.2,'basica',12,23,1,1),(5,'programacion',5.2,'basica',12,23,1,1);
insert into alumno_se_matricula_asignatura(id_alumno,id_asignatura,id_curso_escolar)values(1,1,1001),(2,1,1001),(3,1,1001),(4,1,1001),(5,1,1001);

  
  
 
 
 
 

 

























