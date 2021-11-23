show databases;
create database RoscoProyecto;
show databases;
use RoscoProyecto;
 create table Partidas( Codigo int not null, 
						Nickname varchar(45) not null, 
                        Finalizada boolean not null, 
                        Puntaje int not null,
                         primary key(Codigo)
                        );
 create table Palabras( Letra char not null,
						Definicion varchar(60) not null, 
                        Codigo int not null,
                        EmpiezaPor boolean not null, 
                        EstadoUso boolean not null, 
                        CantidadRespondida int not null, 
                        CantidadRespondidaCorrectamente int not null, 
                        primary key(Codigo)
                        );
create table Categoria( Nombre varchar(45), 
                        Codigo int not null, 
                        primary key(Codigo),
                        foreign key(Codigo) references Palabras(Codigo)
                       );
	
create table Usuario( CiUsuario int not null, 
                      Nombre varchar(45) not null,
                      Apellido varchar(45) not null, 
                      Mail varchar (45) not null, 
                      Pin int, 
                      primary key(CiUsuario)
                      );
create table Jugador( Nickname varchar(45) not null, 
                      PartidasJugadas int not null, 
                      PartidasGanadas int not null, 
                      CiUsuario int not null, 
                      primary key(CiUsuario), 
                      foreign key (CiUsuario) references Usuario(CiUsuario)
                      );
create table Administrador( CiUsuario int not null, 
                            primary key(CiUsuario),
                            foreign key(CiUsuario) references Usuario(CiUsuario)
                            );
 /*Usuario*/                           
insert into Usuario( CiUsuario, Nombre, Apellido, Mail, Pin) values (56639871, 'Pepe', 'Gomez', 'pgmoez@gmail.com', 1508),
(8776321,'Alberto','Gonzales','albergonza3@gmail.com',1602),
(6773981,'Agos','Martinez','martinezagos@gmail.com',7465),
(54481231,'Alan', 'Perez', 'alanp@gmail.com',7532 ),
(7559863,'Ronaldo','Figeira',  'ronaldo33@hotmail.com',4311),
(8677231, 'Oracio','Hernandez', 'oracioH@gmail.com',0987),
(8773982,'Alfon', 'Herrera', 'herreraalfonsina@gmail.com', 7645),
(6668742, 'Peter', 'Parker', 'parker_p@gmail.com',8567);


/*Partida*/
insert into Partidas( Codigo, Nickname, Finalizada, Puntaje) values(4506,'Pepito', false, 100),
(1602, 'albertito', true, 75),
(7465, 'Agoos', false, 10),
(7532, 'Alancito', true, 45),
(4311, 'Ronaldo', true, 99),
(0987, 'Ora', false, 5),
(7645, 'Alfon', true, 86),
(8567, 'Parker', true, 100);


/*Jugador*/
insert into Jugador(Nickname, PartidasJugadas, PartidasGanadas, CiUsuario) values( 'Pepito', 4, 2, 56639871),
('albertito', 9, 4,8776321),
('Agoos', 3,0, 6773981),
('Alancito', 8,5, 54481231),
('Ronaldo', 9, 3, 7559863),
('Ora', 2,2,8677231),
('Alfon',7,5, 8773982),
('Parker', 4, 1, 6668742);



/*Palabra*/ 
insert into Palabras(EmpiezaPor, Definicion, Letra, EstadoUso, codigo, CantidadRespondida, CantidadRespondidaCorrectamente) values (true,'Características con la que trabajamos de una entidad.','A', false, 001, 15, 9 ),
(true, 'Nos permite agrupar dos entidades relacionadas e interpretarla como una entidad la cual podremos relacionar con otras entidades.','A', false, 002, 15, 9),
(true,'Parte de la página con la que el usuario no interactúa.', 'B',false, 003, 15, 9),
(true, 'código en el que se escriben los comandos de consola de linux.','B', false, 004, 15, 9),
(true, 'propiedad css con la que puedes darle colores a tu página.', 'C', false ,005, 15, 9),
(true, 'Hoja de estilos en cascada', 'C', false, 006, 15, 9),
(true, 'Área enfocada en el desarrollo  de interfaces digitales, como el boceto de sitios y aplicaciones para web', 'D', false, 007, 15, 9),
(true, 'Eso que Facebook recopila de ti', 'D', false, 008, 15, 9),
(true, 'Conjunto de sistemas de información , sistemas de procesamiento de datos  y bases de datos relacionados, e insertos en la conformación orgánico-funcional de la Organización de manera que apoyen su gestión productiva.','E', false, 009, 15, 9),
(true, 'Tienen atributos y relaciones, corresponde a una o varias tablas relacionadas en la base de datos.','E', false, 010, 15, 9),
(true, 'Identifica una columna o un grupo de columnas en una tabla que se refiere a las columnas de otra tabla.','F', false,011, 15, 9),
(true, 'Proporcionan los criterios para determinar el grado de vulnerabilidad de una tabla a inconsistencias y anomalías lógicas.','F', false, 012, 15, 9),
(false, 'Fuente al texto desarrollado en un lenguaje de programación y que debe ser compilado o interpretado para poder ejecutarse en una computadora.', 'G', false, 013, 15, 9),
(true, 'Comando utilizado en sistemas operativos Linux, para buscar texto, archivos o cualquier documento para un patrón específico del usuario' ,'G', false, 014, 15, 9),
(true, 'Lenguaje utilizado en diseño web.','H',false, 015, 15, 9),
(true, 'Conjunto de elementos físicos o materiales que constituyen una computadora o un sistema informático.', 'H', false, 016, 15, 9),
(true, 'Integer', 'I', false, 017, 15, 9),
(true,'Conexión funcional entre dos sistemas, programas, dispositivos o componentes de cualquier tipo, que proporciona una comunicación de distintos niveles, permitiendo el intercambio de información.', 'I', false, 018, 15, 9),
(true,'Lenguaje de programación', 'J', false, 019, 15, 9),
(true, 'Lenguaje en el que se programan los scripts web.',  'J', false, 020, 15, 9),
(true, 'Forma de comunicarnos con una computadora, tablet o celular e indicarle qué queremos hacer.', 'L', false, 021, 15, 9),
(false, 'La estructura repetitiva mientras, es aquella en que el cuerpo del bucle se repite mientras se cumple una determinada condición.', 'L', false, 022, 15, 9),
(true, 'Es un conjunto de softwares bastantes específicos que sirven  de interfaz para unir los tres elementos: las bases de datos, los usuarios y las diferentes aplicaciones que se utilizan para ello.','M', false, 023, 15, 9),
(true,'Siglas de: Modelo-Entidad-Relación','M', false, 024, 15, 9),
(true, 'Es un comando editor de texto para sistemas Unix basado en cursores.','N', false, 025, 15, 9),
(true, 'Utilizado en la computación para hacer referencia a nada.', 'N', false, 026, 15, 9),
(false, 'Persona que se dedica a diseñar.', 'Ñ', false, 027, 15, 9),
(false, 'Sinónimo de agregar.', 'Ñ', false, 028, 15, 9),
(true, 'Punto de inicio', 'O', false, 029, 15, 9 ),
(true, 'Estructura de sistemas creadas para lograr metas y/o objetivos.', 'O', false, 030 , 15, 9),
(true,'Materia en la que utuilizamos Java', 'P', false, 031, 15, 9),
(true,'Idea de una cosa que se piensa hacer y para la cual se establece un modo determinado y un conjunto de medios necesario.','P', false, 032 , 15, 9),
(true,'Término que el usuario escribe en un buscador, como por ejemplo Google, cuando desea realizar una búsqueda utilizando Keywords o palabras clave.', 'Q', false, 033, 15, 9),
(false, 'Sistema de gestión de bases de datos relacional desarrollado bajo licencia dual: Licencia pública general/Licencia comercial por Oracle Corporation y está considerada como la base de datos.', 'Q', false, 034, 15, 9),
(true, 'Conjunto de tuplas, donde cada elemento dⱼ es un miembro de Dⱼ, un dominio de datos.','R', false, 035, 15, 9),
(true, 'Biblioteca Javascript de código abierto diseñada para crear interfaces de usuario con el objetivo de facilitar el desarrollo de aplicaciones en una sola página.','R', false, 036, 15, 9),
(true,'Se utiliza para recuperar datos de una o más tablas.', 'S', false, 037, 15, 9),
(false,  'Método para acceder a los datos, también se puede modificar, borrar, mostrar y agregar datos en una base de datos.', 'S', false, 038, 15, 9),
(true, 'Tipo de modelado de datos donde se guardan los datos recogidos por un programa.','T', false, 039, 15, 9),
(true, 'Inventor, famoso por sus bobinas y defender la corriente alterna.', 'T', false, 040, 15, 9),
(true, 'Nombre que se le da al consumidor final de un servicio.', 'U', false, 041, 15, 9),
(true, 'Capacidad que tiene una cosa de servir o de ser aprovechada para un fin determinado.', 'U', false, 042, 15, 9),
(true, 'Espacio de la memoria reservado, también hay matemáticas.', 'V', false,  043, 15, 9),
(true, 'Nombre de la flecha que representa la dirección y sentido de una fuerza.', 'V', false,  044, 15, 9),
(false, 'Tipo de números, de base de 16,también son utilizados para representar los colores.', 'X', false, 45, 15, 9),
(true,'Consiste principalmente en el sistema de gestión de bases de datos MySQL, el servidor web Apache y los intérpretes para lenguajes de script PHP y Perl.', 'X', false, 046, 15, 9),
(false, 'Especialmente conocido por recibir el Premio Nobel en 1974, fue un firme defensor del liberalismo y crítico de la economía planificada y el socialismo.',  'Y', false,  047, 15, 9),
(false, 'La teoría que triunfó durante parte del siglo XX con su defensa de la intervención del Estado en la economía.', 'Y', false, 048, 15, 9),
(true, 'Formato de compresión de archivos.',  'Z', false,  049, 15, 9),
(false, 'Mejoramiento de un esquema relacional para aumentar su eficacia.', 'Z', false, 050, 15, 9);


/*Categoria*/

insert into Categoria(Nombre, Codigo) values( 'Diseño web', 9231),
('Programación', 8721),
('Bases de datos', 4587),
('Física', 6754),
('Redes', 0984),
('Economía', 7345),
('Electrónica', 4577),
('Sistemas operativos', 8732),
('Random', 8764);



 
 
 



