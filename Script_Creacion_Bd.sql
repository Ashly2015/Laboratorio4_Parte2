create database Planilla_Bd;
use Planilla_Bd;

create table puesto_649
(
codigo_puesto varchar(5) primary key,
nombre_puesto varchar(60) not null,
estatus_puesto varchar(1) not null
)engine=InnoDB;

create table departamento_649
(
codigo_departamento varchar(5) primary key,
nombre_departamento varchar(60) not null,
estatus_departamento varchar(1) not null
)engine=InnoDB;

create table empleado_649
(
codigo_empleado varchar(5) primary key,
nombre_empleado varchar(60) not null,
codigo_puesto varchar(5) not null,
codigo_departamento varchar(5) not null,
sueldo_empleado float(10,2),
estatus_empleado varchar(1) not null,

foreign key (codigo_puesto) references
puesto_649(codigo_puesto),
foreign key (codigo_departamento) references
departamento_649(codigo_departamento)
)engine=InnoDB;

create table concepto_649(
codigo_concepto varchar(5) primary key,
nombre_concepto varchar(60) not null,
efecto_concepto varchar(1) not null,
estatus_concepto varchar(1) not null
)engine=Innodb;

create table nominae_649
(
codigo_nomina varchar(5) primary key,
fecha_inicial_nomina date,
fecha_final_nomina date
)engine=InnoDB;

create table nominad_649
(
codigo_nomina varchar(5) not null,
codigo_empleado varchar(5) not null,
codigo_concepto varchar(5) not null,
valor_nominaD float(10,2),

foreign key (codigo_nomina) references
nominae_649(codigo_nomina),
foreign key (codigo_empleado) references
empleado_649(codigo_empleado),
foreign key (codigo_concepto) references
concepto_649(codigo_concepto)
)engine=InnoDB;




