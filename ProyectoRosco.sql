show databases;
create database Rosco;
show databases;
use Rosco;
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
                        primary key(Codigo)
                       );
	alter table Categoria add constraint  foreign key (Codigo) references Palabras (Codigo);

						
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
insert into Usuario( CiUsuario, Nombre, Apellido, Mail, Pin) values (56639871, 'Pepe', 'Gomez', 'pgmoez@gmail.com');
insert into Usuario values(56639871, 'Pepe', 'Gomez', 'pgmoez@gmail.com');

/*Partida*/
insert into Partidas( Codigo, Nickname, Finalizada, Puntaje) values(null, false, 100);
insert into Partidas values(null,true,100);

/*Jugador*/
insert into Jugador(Nickname, PartidasJugadas, PartidasGanadas, CiUsuario) values( 56639871, 'Pepe', '3', '1', 24548);
insert into Jugador value( 56639871, 'Pepe', '3','1',24548);

/*Palabra*/ 
insert into Palabras( null, 01,'Características con la que trabajamos de una entidad.', true 'A', false, true, 'Atributos',0),
(02,'Nos permite agrupar dos entidades relacionadas e interpretarla como una entidad la cual podremos relacionar con otras entidades.', true, 'A', false, true, 'Agregacion', 0),
(03, 'Parte de la página con la que el usuario no interactúa.', true,'B',false,true, 'Backend',0),
(04, 'código en el que se escriben los comandos de consola de linux.', true, 'B', false, true, 'Bash', 0),
(05, 'propiedad css con la que puedes darle colores a tu página.', true, 'C', false,true, 'Color', 0),
(06,  'Hoja de estilos en cascada', true,'C', false,true, 'Css', 0),
(07, 'Área enfocada en el desarrollo  de interfaces digitales, como el boceto de sitios y aplicaciones para web', true,'D', false, true, 'Diseño web', 0),
(08, 'Eso que Facebook recopila de ti', true, 'D', false, true, 'Datos', 0),
(09, 'Conjunto de sistemas de información , sistemas de procesamiento de datos  y bases de datos relacionados, e insertos en la conformación orgánico-funcional de la Organización de manera que apoyen su gestión productiva.', true, 'E', false, true, 'Estructura', 0),
(10, 'Tienen atributos y relaciones, corresponde a una o varias tablas relacionadas en la base de datos.', true, 'E', false, true, 'Entidades', 0),
(11, ' Identifica una columna o un grupo de columnas en una tabla que se refiere a las columnas de otra tabla.', true, 'F', false, true, 'Foreign key', 1),
(12, ' Proporcionan los criterios para determinar el grado de vulnerabilidad de una tabla a inconsistencias y anomalías lógicas.', true, 'F', false, true, 'Formas normales', 1),
(13, 'Fuente al texto desarrollado en un lenguaje de programación y que debe ser compilado o interpretado para poder ejecutarse en una computadora.', false, 'G', false, true, 'Código', 1),
(14, 'Comando utilizado en sistemas operativos Linux, para buscar texto, archivos o cualquier documento para un patrón específico del usuario' , true,'G', false, true, 'Grep', 1),
(15, 'Lenguaje utilizado en diseño web.', true, 'H',false, true, 'Html', 1),
(16, 'Conjunto de elementos físicos o materiales que constituyen una computadora o un sistema informático.', true, 'H', false, true, 'Hardware', 1),
(17, 'Integer', true, 'I', false, true, 'Int', 1),
(18, 'Conexión funcional entre dos sistemas, programas, dispositivos o componentes de cualquier tipo, que proporciona una comunicación de distintos niveles, permitiendo el intercambio de información.', true, 'I', false, true, 'Interfaz', 1),
(19,'Lenguaje de programación', true, 'J', false, true, 'Java',1),
(20, 'Lenguaje en el que se programan los scripts web.', true, 'J', false, true, 'JavaScript', 1),
(21, 'Forma de comunicarnos con una computadora, tablet o celular e indicarle qué queremos hacer.', true, 'L', false, true, 'Lenguaje',1),
(22, 'La estructura repetitiva mientras, es aquella en que el cuerpo del bucle se repite mientras se cumple una determinada condición.', false, 'L', false,true, 'While', 2),
(23, 'Es un conjunto de softwares bastantes específicos que sirven  de interfaz para unir los tres elementos: las bases de datos, los usuarios y las diferentes aplicaciones que se utilizan para ello.' true, 'M', false, true, 'Manejador',2),
(24, 'Siglas de: Modelo-Entidad-Relación', true, 'M', false, true, 'M.E.R',2),
(25, 'Es un comando editor de texto para sistemas Unix basado en cursores.', true, 'N', false, true, 'Nano', 2),
(26, 'Utilizado en la computación para hacer referencia a nada.', true, 'N', false, true, 'Null',2),
(27, 'Persona que se dedica a diseñar.', false, 'Ñ', false, true, 'Diseñador', 2),
(28, 'Sinónimo de agregar.', false, 'Ñ', false, true, 'Añadir', 2),
(29, 'Punto de inicio', true, 'O', false, true, 'Origen',2),
(30, 'Estructura de sistemas creadas para lograr metas y/o objetivos.', true, 'O', false, true, 'Organización', 2),
(31, 'Materia en la que utuilizamos Java', true, 'P', false, true, 'Programación', 3),
(32, 'Idea de una cosa que se piensa hacer y para la cual se establece un modo determinado y un conjunto de medios necesario.', true, 'P', false, true, 'Proyecto',3),
(33,'Término que el usuario escribe en un buscador, como por ejemplo Google, cuando desea realizar una búsqueda utilizando Keywords o palabras clave.', true, 'Q', false, true, 'Query', 3),
(34, 'Sistema de gestión de bases de datos relacional desarrollado bajo licencia dual: Licencia pública general/Licencia comercial por Oracle Corporation y está considerada como la base de datos.', false, 'Q', false, true, 3),
(35, 'Conjunto de tuplas, donde cada elemento dⱼ es un miembro de Dⱼ, un dominio de datos.', true, 'R', false, true, 'relación', 3),
(36, 'Biblioteca Javascript de código abierto diseñada para crear interfaces de usuario con el objetivo de facilitar el desarrollo de aplicaciones en una sola página.' true, 'R', false, true, 'React', 3),
(37, 'Se utiliza para recuperar datos de una o más tablas.', true, 'S', false, true, 'Select', 3),
(38,  'Método para acceder a los datos, también se puede modificar, borrar, mostrar y agregar datos en una base de datos.', false, 'S', false, true, 'Consultas', 3),
(39, 'Tipo de modelado de datos donde se guardan los datos recogidos por un programa.', true, 'T', false, true, 'Tablas', 3),
(40, 'Inventor, famoso por sus bobinas y defender la corriente alterna.', true, 'T', false, true, 'Tesla', 3),
(41, 'Nombre que se le da al consumidor final de un servicio.', true, 'U', false, true, 'Usuario', 4),
(42, 'Capacidad que tiene una cosa de servir o de ser aprovechada para un fin determinado.', true, 'U', false, true, 'Utilidad',4),
(43, 'Espacio de la memoria reservado, también hay matemáticas.', true, 'V', false, true, 'Variables' 4),
(44, 'Nombre de la flecha que representa la dirección y sentido de una fuerza.' true, 'V', false, true, 'Vector', 4),
(45, 'Tipo de números, de base de 16,también son utilizados para representar los colores.', false, 'X', false, true, 'Hexadecimal', 4),
(46, 'Consiste principalmente en el sistema de gestión de bases de datos MySQL, el servidor web Apache y los intérpretes para lenguajes de script PHP y Perl.', true, 'X', false, true, 'Xampp', 4),
(47, 'Especialmente conocido por recibir el Premio Nobel en 1974, fue un firme defensor del liberalismo y crítico de la economía planificada y el socialismo.', false, 'Y', false, true, 'Hayek',4),
(48, 'La teoría que triunfó durante parte del siglo XX con su defensa de la intervención del Estado en la economía.', false, 'Y', false, true, 'Keynesianismo', 4),
(49, 'Formato de compresión de archivos.', true, 'Z', false, true, 'Zip', 4),
(50, 'Mejoramiento de un esquema relacional para aumentar su eficacia.', false, 'Z', false, true, 'Normalización', 5);






