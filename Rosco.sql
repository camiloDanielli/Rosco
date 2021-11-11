show databases;
create database proyectoRosco;
use proyectoRosco;
create table nombreUsuario( Ci int not null, 
                      Nombre varchar(45) not null, 
                      Apellido varchar(45) not null, 
                      primary key(Ci)
					);
create table cuentaUsuario( Ci int not null, 
							Mail varchar(50) not null,
                            Pin int not null, 
                            primary key(Ci, Mail),
                            foreign key(Ci) references nombreUsuario(Ci)
					 );
create table Jugador( nicknameJugador varchar(45) not null, 
					   Ci int not null,
                      primary key(nicknameJugador, Ci),
                      foreign key(Ci) references nombreUsuario(Ci)
					);
create table datosJugador( nicknameJugador varchar(45),
                            partidasJugadas int, 
                            primary key(nicknameJugador)
					);
                            
create table Administrador( Ci int not null,
                             primary key(Ci)
					);
create table Partida(codigoPartida int not null, 
                     respuestasIncorrectas int,
                     partidasJugadas int,
                     primary key(codigoPartida)
					);
create table Palabra(codigoPalabra int not null, 
					 Letra varchar(1), 
					 Definicion varchar(150) not null,
                     empiezaPor varchar(30),
                     estadoUso varchar(30),
                     Palabra varchar(30) not null, 
                     ultimoUso date not null, 
                     primary key(codigoPalabra)
					);
create table Categoria( Nombre varchar(45),
						primary key(Nombre)
					);
create table Clasifican( codigoPalabra int not null, 
                          Nombre varchar(45) not null, 
                          primary key(codigoPalabra, Nombre),
                          foreign key(codigoPalabra) references Palabra(codigoPalabra),
                          foreign key(Nombre) references Categoria(Nombre)
					 );
create table Contienen( codigoPalabra int not null, 
                        codigoPartida int not null, 
                        nicknameJugador varchar(45) not null, 
                        primary key(codigoPalabra, codigoPartida, nicknameJugador),
                        foreign key(codigoPalabra) references Palabra(codigoPalabra),
                        foreign key(codigoPartida) references Partida(codigoPartida),
                        foreign key(nicknameJugador) references Jugador(nicknameJugador)
					);
create table Administran( Ci int not null, 
						  Fecha date not null, 
                          codigoPalabra int not null,
                          primary key(Ci, Fecha, codigoPalabra), 
                          foreign key(Ci) references Administrador(Ci),
                          foreign key(codigoPalabra) references Palabra(codigoPalabra)
					 );
                     
			
                          