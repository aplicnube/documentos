-- Películas

USE [BAE001]
go
set nocount on

--Borrado tablas
IF object_id(N'PEL_T_Prestamo', 'U') IS NOT NULL DROP TABLE [PEL_T_Prestamo]
IF object_id(N'PEL_T_Clientes', 'U') IS NOT NULL DROP TABLE [PEL_T_Clientes]
IF object_id(N'PEL_T_Peliculas', 'U') IS NOT NULL DROP TABLE [PEL_T_Peliculas]
IF object_id(N'PEL_T_TipoPelicula', 'U') IS NOT NULL DROP TABLE [PEL_T_TipoPelicula]
go
--
-- Table structure for table 'PEL_T_Clientes'
--


CREATE TABLE [PEL_T_Clientes] (
  [IdCliente] INT NOT NULL IDENTITY, 
  [DNICliente] NVARCHAR(255), 
  [Apellidos] NVARCHAR(255), 
  [Nombre] NVARCHAR(255), 
  [DatosCliente] NVARCHAR(255), 
  [FechaNacimiento] DATETIME, 
  [FechaAlta] DATETIME, 
  PRIMARY KEY ([IdCliente])
)
go
SET IDENTITY_INSERT [PEL_T_Clientes] ON
GO

--
-- Dumping data for table 'PEL_T_Clientes'
--
set dateformat ymd
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (1, N'05679340L', N'pérez', N'david', N'c/galicia nº 32', '1985-01-30 00:00:00', '2007-01-30 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (2, N'07865988B', N'hernández', N'pedro', N'Rambla nº 7', '1990-10-10 00:00:00', '2010-10-10 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (3, N'13455656N', N'ruiz', N'maría', N'c/fuerteventura nº 9', '1980-03-21 00:00:00', '2002-03-21 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (4, N'23432988J', N'ramos', N'maría', N'c/lanzarote nº 99', '1980-03-22 00:00:00', '2002-03-22 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (5, N'23446456A', N'gonzález', N'josé', N'c/cinco de mayo nº 7', '1990-10-14 00:00:00', '2010-10-14 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (6, N'43005006C', N'rodríguez', N'juan', N'C/x nº 6', '1960-01-02 00:00:00', '1982-01-02 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (7, N'43554430C', N'gonzález', N'samuel', N'c/principal nº 54', '1985-01-30 00:00:00', '2008-05-30 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (8, N'43566789M', N'fernández', N'jesús', N'c/la mancha nº 8', '1985-01-28 00:00:00', '2007-01-28 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (9, N'45567678D', N'rodríguez', N'juana', N'C/seis nº 8', '1990-10-12 00:00:00', '2010-10-12 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (10, N'45667443T', N'gonzález', N'alberto', N'c/alborada nº 7', '1980-03-17 00:00:00', '2002-03-17 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (11, N'45678901G', N'pérez', N'ana', N'C/una nº 5', '1960-01-01 00:00:00', '1982-01-01 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (12, N'54377890W', N'pérez', N'maría', N'Avenida Primera nº 6', '1990-10-11 00:00:00', '2010-10-11 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (13, N'56008986F', N'pérez', N'juana', N'c/el hierro nº 6', '1980-03-18 00:00:00', '2002-03-18 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (14, N'56321789X', N'fernández', N'pedro', N'c/la gomera nº 8', '1980-03-19 00:00:00', '2002-03-19 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (15, N'56999678C', N'hernández', N'josefa', N'c/primero de junio nº 7', '1990-10-13 00:00:00', '2010-10-13 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (16, N'65783450T', N'ramos', N'carmen', N'c/madrid nº 75', '1985-01-27 00:00:00', '2007-01-27 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (17, N'67544345S', N'rojas', N'ana', N'c/la palma nº 77', '1985-01-25 00:00:00', '2007-01-25 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (18, N'67655432N', N'rojas', N'fernando', N'c/gran canaria nº 9', '1980-03-20 00:00:00', '2002-03-20 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (19, N'75655499N', N'pérez', N'fernando', N'c/ofra nº 3', '1985-01-29 00:00:00', '2007-01-29 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (20, N'76523986L', N'ruiz', N'marta', N'c/la graciosa nº 66', '1985-01-26 00:00:00', '2007-01-26 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (21, N'76523987C', N'ruiz', N'juana', N'c/la graciosa nº 32', '1985-01-26 00:00:00', '2008-01-26 00:00:00');
INSERT INTO [PEL_T_Clientes] ([IdCliente], [DNICliente], [Apellidos], [Nombre], [DatosCliente], [FechaNacimiento], [FechaAlta]) VALUES (22, N'76523989E', N'ruiz', N'maría', N'c/la graciosa nº 99', '1985-01-26 00:00:00', '2009-01-26 00:00:00');


-- 22 records

SET IDENTITY_INSERT [PEL_T_Clientes] OFF
GO

--
-- Table structure for table 'PEL_T_Peliculas'
--



CREATE TABLE [PEL_T_Peliculas] (
  [idPelicula] INT NOT NULL IDENTITY, 
  [agno] FLOAT, 
  [Titulo] NVARCHAR(255), 
  [Pais] NVARCHAR(255), 
  [Director] NVARCHAR(255), 
  [Actores] NVARCHAR(255), 
  [Sinopsis] NVARCHAR(255), 
  [idTipo] INT, 
  PRIMARY KEY ([idPelicula])
)

SET IDENTITY_INSERT [PEL_T_Peliculas] ON
GO

--
-- Dumping data for table 'PEL_T_Peliculas'
--

INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (1, 1951, N'Rashomon', N'JP', N'Akira Kurosawa', N'Toshiro Mifune, Machiko Kyo', N'A partir de la compleja técnica del punto de vista, Kurosawa narra cuatro veces el mismo relato, a partir de las versiones de los testigos de un crimen.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (2, 1994, N'Forrest Gump', N'US', N'Robert Zemeckis', N'Tom Hanks', N'A pesar de poseer cierto retraso mental, Forrest Gump logra estar presente de manera accidental en los más importantes momentos de la historia norteamericana.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (3, 1938, N'La Fiera de mi Niña', N'US', N'Howard HawksI', N'Cary Grant, Katharine Hepburn', N'Alta comedia en un enredo de pronóstico, amparado por unas soberbias actuaciones.', 2);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (4, 1934, N'L''atalante', N'FR', N'Jean Vigo', N'M. Simon, J. Dasté, D. Parlo', N'Apasionante historia de amor imposible entre un marinero que se debate entre el deber y el amor.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (5, 1966, N'Persona', N'SE', N'Ingmar Bergman', N'Bibi Andersson, Liv Ullmann', N'Asfixiante, inquietante y conmovedora, la relación de una actriz convaleciente y su enfermera, en una de las películas más perturbadoras de Bergman.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (6, 1985, N'Memorias de Africa', N'US', N'Sydney Pollack', N'Robert Redford, Meryl Streep', N'Basada en una historia real, el film nos traslada a la Kenya colonial mediante un apasionado romance excelentemente interpretado por sus protagonistas.', NULL);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (7, 1982, N'Gandhi', N'US', N'R. Attenborough', N'Ben Kingsley', N'Biografía de Mahatma Gandhi, el abogado que lideró las revueltas hindúes contra el Imperio Británico, a través de una filosofía de no-violencia.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (8, 1997, N'Titanic', N'US', N'James Cameron', N'Leonardo DiCaprio, Kate Winslet', N'Chica rica que se enamora de un chico pobre, en un relato de ficción que acontece durante una de las mayores tragedias de la historia.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (9, 1973, N'El Golpe', N'US', N'George Roy Hill', N'Paul Newman Robert Redford', N'Chicago, años treinta. Un par de timadores profesionales se asocian para obtener una fortuna de un banquero corrupto.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (10, 1941, N'El Halcón Maltés', N'US', N'John Huston', N'Humphrey Bogart, Mary Astor', N'Cima del cine negro. Un filme de intriga que gira alrededor del robo de una valiosa pieza antigua, el halcón del titular.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (11, 1996, N'El Paciente Ingles', N'US', N'Anthony Minghella', N'Ralph Fiennes, Kristin Scott Thomas', N'Conmovedora historia de una joven enfermera que al asistir a una víctima de un accidente de avión descubre mediante flashbacks la realidad que se esconde detrás del misterioso hombre.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (12, 1936, N'La Parada de los Monstruos', N'US', N'Tod Browning', N'Olga Baclanova, Wallace Ford', N'Cruel y tierno, al unísono, es este retrato de un grupo de artistas del circo, con sus miserias y sus grandezas humanas.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (13, 1994, N'Pulp Fiction', N'US', N'Quentin Tarantino', N'Quentin Tarantino, John Travolta, Uma Thurman', N'Cuatro historias de violencia y redención fantásticamente visionadas por el maestro Tarantino.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (14, 1916, N'Intolerancia', N'US', N'David W. Griffith', N'Mae Marsh, Fred Turner', N'Cuatro relatos sobre la intolerancia en épocas distintas orquestados con seguridad y precisión.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (15, 1954, N'La Ley del Silencio', N'US', N'Elia Kazan', N'Marlon Brando, Eve Marie Saint', N'Desde el fondo sucio y oscuro de los muelles de Nueva York surge una organización clandestina.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (16, 1983, N'La Fuerza Del Cariño', N'US', N'James L. Brooks', N'Shirley MacLaine, Jack Nicholson, Debra Winger', N'Diferentes personas mostrarán su cariño de maneras diferentes en esta emotiva película que sigue la vida de una madre y una hija durante varios años de su vida.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (17, 1953, N'Los Cuentos de Tokyo', N'JP', N'Yasujiro Ozu', N'Chisu Ryu, Chiyeko Higashiyama', N'Dos campesinos viajan a Tokyo para visitar a hijos y nietos, y descubren que su familia se desintegra.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (18, 1959, N'Con Faldas y a lo Loco', N'US', N'Billy Wilder', N'J. Lemmon, T. Curtis, M. Monroe', N'Dos músicos huyen de la Mafia y, disfrazados de mujer, se unen a una orquesta de señoritas.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (19, 1998, N'Shakespeare In Love', N'US', N'John Madden', N'Gwyneth Paltrow. Joseph Fiennes', N'Drama romántico. Un joven Shakespeare, falto de ideas y dinero, conoce a su chica ideal en la que se inspirará para realizar una de sus obras más famosas.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (20, 1954, N'La Palabra', N'DK', N'Carl Theodor Dreyer', N'Henrik Malberg, Emil Haas', N'Drama rural que, con la anécdota de un milagro, se hunde en los caminos de la fe y la espiritualidad.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (21, 1927, N'Amanecer', N'US', N'F. W. Murnau', N'George O’Brien, Janet Gaynor', N'Ejercicio expresionista con una astuta chica de ciudad que conquista a un campesino.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (22, 1987, N'Los Intocables de Eliot Ness', N'US', N'Brian De Palma', N'Kevin Costner, Sean Connery, Robert De Niro', N'El agente federal Elliot Ness y un selecto grupo de oficiales intentarán incriminar y detener a Al Capone en una ciudad asediada por la corrupción.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (23, 1970, N'Love Story', N'US', N'Arthur Hiller', N'Ryan O´Neal, Ali MacGraw', N'El amor entre un estudiante de derecho de Harvard y una estudiante de música se enfrenta a la oposición del padre de éste, si bien este no será el único obstáculo que encontrará la relación.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (24, 1945, N'Roma, Ciudad Abierta', N'IT', N'Roberto Rossellini', N'Anna Magnani, Aldo Fabrizi', N'El cabecilla de la Resistencia es perseguido por la Gestapo, a través de una Roma desvastada.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (25, 1924, N'La Huelga', N'RU', N'S. M. Eisenstein', N'A. Antonov, M. Gomarov', N'El conflicto entre obreros, sindicalistas y policías. Sorprendente ópera prima de Eisenstein con notables aportaciones al lenguaje cinematográfico.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (26, 1963, N'Fellini 8 1/2', N'IT', N'Federico Fellini', N'M. Mastroianni, C. Cardinale', N'El delirio del artista y el tormento de la esterilidad creativa en una película de tintes surrealistas con toques autobiográficos.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (27, 1958, N'Vértigo / De entre los Muertos', N'US', N'Alfred Hitchcock', N'James Stewart, Kim Novak', N'El encargo de vigilar a una mujer será el anzuelo para tenderle una ingeniosa trampa a un policía retirado.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (28, 1958, N'Sed de Mal', N'US', N'Orson Welles.', N'Orson Welles, Charlton Heston, Janet Leigh', N'El enfrentamiento entre un policía mexicano y un comisario en un experimental ejercicio de cine.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (29, 1960, N'Espartaco', N'US', N'Stanley Kubrick', N'Kirk Douglas, Laurence Olivier, Tony Curtis', N'El esclavo Espartaco lidera una violenta revuelta contra el decadente Imperio Romano.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (30, 1919, N'El Gabinete Del Doctor Caligari', N'DE', N'Robert Wiene', N'Wiener Krauss, Conradt Veidt', N'El filme más representativo del expresionismo narra un siniestro cuento de hipnosis.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (31, 1953, N'Melodías de Broadway', N'US', N'Vincente Minnelli', N'Fred Astaire, Cyd Charisse', N'El mundo de las luces y la diversión, del teatro y la música, de la calle más famosa de Nueva York.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (32, 1946, N'Pasión de Los Fuertes', N'US', N'John Ford', N'Henry Fonda, Victor Mature', N'El mítico episodio de O. K. Corral, donde Wyatt Earp y Doc Hollyday protagonizan una lucha liberadora.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (33, 1956, N'Moby Dick', N'US', N'John Huston', N'Gregory Peck, Orson Welles', N'El único superviviente de un ballenero perdido relata la historia de la obsesión auto-destructiva de su capitán por atrapar una ballena blanca, Moby Dick.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (34, 1974, N'El Padrino II', N'US', N'Francis Ford Coppola', N'A. Pacino, R. De Niro, D. Keaton', N'En dos tiempos, narra la atribulada juventud de Vito Corleone y la lucha de poder entre sus sucesores.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (35, 1944, N'Cita en San Luis', N'US', N'Vincente Minelli.', N'M. Astor, J. Garland, T. Drake', N'En el otoño de 1903, la familia Smith recibe una noticia trascendental: dejan St. Louis .', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (36, 1954, N'El Intendente Sansho', N'JP', N'Kenji Mizoguchi', N'Kinuyo Tanaka, Yoshiaki Hanayagi', N'En el siglo XII una noble familia es reducida a la esclavitud por parte de un terrateniente y guerrero.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (37, 1966, N'Andrei Rubliov', N'RU', N'Andrei Tarkovski', N'Anatoli Solonitsin, Ivan Lapikov', N'En el siglo XV, un monje sale de su aislamiento. Verá las vejaciones que vive su pueblo.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (38, 1980, N'En Busca Del Arca Perdida', N'US', N'Steven Spielberg', N'Harrison Ford', N'En esta intensa aventura, el arqueólogo y aventurero Indiana Jones es contratado por el gobierno norteamericano para encontrar el arca en la que se encuentran los diez mandamientos, antes de que lo hagan los nazis.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (39, 1998, N'La Vida es Bella', N'IT', N'Roberto Benigni', N'Roberto Benigni', N'En este entrañable drama, un prisionero judío trata de convencer a su hijo de que la estancia de ambos en un campo de concentración nazi no es más que parte de un simple juego.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (40, 1978, N'Grease', N'US', N'Randal Kleiser', N'John Travolta, Olivia Newton-John', N'En este musical Sandy y Danny protagonizan un amor de verano, pero cuando descubren que finalmente acaban en el mismo instituto deberán descubrir si serán capaces de continuar el romance.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (41, 1956, N'Fresas Salvajes', N'SE', N'Ingmar Bergman', N'V. Sjöstrom, B. Andersson', N'En un viaje físico y sentimental, un reputado profesor reconstruye los recuerdos de su vida.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (42, 1948, N'Carta de una Desconocida', N'US', N'Max Ophüls', N'Joan Fontaine, Louis Jourdan', N'En una carta póstuma, un hombre se entera de que una vieja amante se pasó toda la vida amándole.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (43, 1946, N'Monsieur Verdoux', N'US', N'Charles Chaplin', N'Charles Chaplin, Martha Raye', N'Es la historia de un hombre que mata a sus esposas para enriquecerse.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (44, 1953, N'Cuentos de la Luna Pálida', N'JP', N'Kenji Mizoguchi', N'Machiko Kyo, Masayuki Mori', N'Es la historia de una familia arruinada por la guerra que comienza a hacer lo indecible por sobrevivir.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (45, 1928, N'La Pasión de Juana de Arco', N'FR', N'Carl Theodor Dreyer', N'R. Falconetti, A. Artaud', N'Exalta la espiritualidad de la santa y alcanza momentos de auténtica plasticidad.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (46, 1941, N'Murieron Con Las Botas Puestas', N'US', N'Raoul Walsh', N'Errol Flynn, Olivia de Havilland, Anthony Quinn', N'Excelente reparto para una historia que cuenta la vida del general George Armstrong Custer, desde su entrenamiento en West Point hasta el conocido final acaecido en 1876.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (47, 1961, N'El Año Pasado en Marienbad', N'FR', N'Alain Resnais', N'G. Albertazzi, D. Seyrig', N'Fascinante y complejo puzzle con una pareja que jura amarse cada año en un lujoso hotel.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (48, 1992, N'1492, la Conquista del Paraiso', N'GB,ES,FR', N'Ridley Scott', N'Gerard Depardieu, Sigourney Weaver, Fernando Rey', N'Film histórico que narra la llegada de Cristóbal Colón a las Américas y los efectos de ésta en la población indígena.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (49, 1956, N'Los Diez Mandamientos', N'US', N'Cecil B. De Mille', N'Charlton Heston, Yul Brynner', N'Film épico por antonomasia. Charlton Heston da vida a Moisés en su éxodo, protagonizando una superproducción cuyo guión podría parecer hoy día algo artificial e incluso hortera.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (50, 1995, N'Braveheart', N'US', N'Mel Gibson', N'Mel Gibson', N'Film épico que narra la lucha de William Wallace por lograr la independencia de Escocia.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (51, 1961, N'El Cid', N'US', N'Anthony Mann', N'Charlton Heston- Sophia Loren', N'Film épico sobre el legendario héroe español Rodrigo Diaz de Vivar.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (52, 1959, N'Pickpocket', N'FR', N'Robert Bresson', N'M. Gree', N'Filme naturalista con actores no profesionales sobre un carterista que no roba por necesidad.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (53, 1942, N'Casablanca', N'US', N'Michael Curtiz', N'I. Bergman, H. Bogart', N'Historia de amor que devino en hito cultural del siglo, rodada en condiciones nefastas.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (54, 2000, N'Gladiator', N'US', N'Ridley Scott', N'Russell Crowe, Oliver Reed', N'Historia de un importante general romano traicionado por un príncipe corrupto, al que jura venganza. Para llevar a cabo ésta, deberá primero recuperar su libertad.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (55, 1961, N'Jules y Jim', N'FR', N'Francois Truffaut', N'J. Moreau, O. Werner, H. Serre', N'Historia de un triángulo amoroso y sus vicisitudes.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (56, 1975, N'Tiburón', N'US', N'Steven Spielberg', N'R. Shaw, R. Dreyfuss, R. Scheider', N'Hizo chillar de miedo a miles de espectadores con la historia de una playa invadida por un tiburón blanco. Primer gran éxito comercial de Spielberg.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (57, 1951, N'La Reina de África', N'US', N'John Huston', N'H. Bogart, K. Hepburn', N'Huyendo de los alemanes durante la guerra, la hija de un pastor y un mecánico se van al Congo.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (58, 1988, N'Inseparables', N'CA', N'David Cronenberg', N'Jeremy Irons, Genevieve Bujold', N'Inquietante y morboso relato acerca de unos vanguardistas ginecólogos gemelos.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (59, 1959, N'Río Bravo', N'US', N'Howard Hawks', N'J. Wayne, D. Martin, R. Nelson', N'Inusual western intimista sin praderas ni indios. Prácticamente transcurre en una prisión.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (60, 1923, N'Avaricia', N'US', N'Erich Von Stroheim', N'Gibson Gowland, Zasu Pitts', N'La ascensión de un pobre minero que llega a ser dentista. Detrás de él, su avara mujer instiga.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (61, 1925, N'La Quimera del Oro', N'US', N'Charles Chaplin', N'Charles Chaplin, Georgia Hale', N'La búsqueda de oro en Alaska para un filme que es el prototipo de las comedias creadas por Chaplin.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (62, 1987, N'Mujeres al Borde de un Ataque de Nervios', N'ES', N'Pedro Almodóvar', N'Carmen Maura Antonio Banderas', N'La comedia que abrió a Pedro Almodovar las puertas de Hollywood presenta a una mujer abandonada por su amante, en busca de respuestas.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (63, 1939, N'La Regla del Juego', N'FR', N'Jean Renoir', N'Marcel Dalio, Nora Gregor', N'La crónica de un mundo a punto de derrumbarse en un filme incomprendido y adelantado a su tiempo que fue un sonado fracaso en su momento.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (64, 1954, N'Ha Nacido una Estrella', N'US', N'George Cukor', N'J. Garland', N'La decadencia de un artista maduro y el ascenso de la artista joven y vital que él ha apoyado.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (65, 1993, N'La Lista de Schlinder', N'US', N'Steven Spielberg', N'L. Neeson, R. Fiennes, B. Kingsley', N'La emotiva historia de un industrial que logró salvar de los nazis a miles de judíos durante la guerra.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (66, 1925, N'El Acorazado Potemkin', N'RU', N'S. M. Eisenstein', N'A. Antonov, G. Aleksandrov', N'La historia del barco que fue decisivo para la Revolución de 1917, en Rusia, se convierte en un filme decisivo para la historia del cine.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (67, 1954, N'La Strada', N'IT', N'Federico Fellini', N'Giulietta Massina, Anthony Quinn', N'La historia triste y divertida de un par de cómicos de la legua que recorren la Italia rural.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (68, 1938, N'Robin de Los Bosques', N'US', N'Michael Curtiz', N'Errol Flynn, Olivia de Havilland', N'La mejor versión de la típica historia del ladrón que robaba a los ricos para favorecer a los pobres. Hasta ahora, permanece insuperable.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (69, 1964, N'Mary Poppins', N'US', N'Robert Stevenson', N'Julie Andrews, Dick Van Dyke', N'La mágica historia de una niñera que llega a la casa de un frío banquero y su infeliz familia.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (70, 1945, N'Breve Encuentro', N'UK', N'David Lean', N'Trevor Howard, Celia Johnson', N'La pasión entre un hombre y una mujer casados, orquestado al emotivo ritmo de Rachmaninoff.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (71, 1972, N'El Padrino I', N'US', N'Francis Ford Coppola', N'M. Brando, A. Pacino, J. Caan', N'La película sobre la Mafia por excelencia. Historia de la saga de la familia Corleone.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (72, 1939, N'El Mago de Oz', N'US', N'Victor Fleming', N'Judy Garland, Frank Morgan', N'La pequeña Dorothy es trasladada a un mundo de fantasía por un camino de ladrillos amarillos.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (73, 1960, N'La Aventura', N'IT,FR', N'Michelangelo Antonioni', N'Monica Vitti, Gabrielle Ferzetti', N'La relación cruel entre una pareja es un paseo por el mundo de la incomunicación.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (74, 1980, N'Toro Salvaje', N'US', N'Martin Scorsese', N'Robert De Niro, Joe Pesci', N'La triste y agitada historia del boxeador LaMotta se convierte en un relato de ascenso y caída de un héroe en las diestras manos de Scorsese.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (75, 1945, N'Los Niños del Paraíso', N'FR', N'Marcel Carné', N'Jean-Louis Barrault, P. Brasseur', N'La trágica y triste historia de un mimo que se enamora perdidamente de una prostituta.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (76, 1965, N'Doctor Zhivago', N'US', N'David Lean', N'Omar Sharif, Julie Christie, Alec Guinness', N'La vida de un doctor-poeta ruso que se enamora de la esposa de un activista político, a la vez que se ve inmerso en plena Revolución Bolchevique.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (77, 1962, N'Lawrence de Arabia', N'UK', N'David Lean', N'Peter O’Toole, Omar Shariff, Anthony Quinn', N'La vida extraña del extraño T. E. Lawrence es la base de una de las películas épicas más celebradas.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (78, 1959, N'Al Final de la Escapada', N'FR', N'Jean Luc Godard', N'Jean Paul Belmondo, Jean Seberg', N'Las películas sobre fugas le deben todo a Godard. Historia de perdedores y marginados.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (79, 1940, N'Historias de Filadelfia', N'US', N'George Cukor', N'Katharine Hepburn, Cary Grant, James Stewart', N'Las segundas nupcias de una mujer rica se ven frustradas por la presencia de su primer marido.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (80, 1929, N'Aleluya', N'US', N'King Vidor', N'Daniel Haynes, Nina Mae', N'Llena de espirituales y cánticos, es quizá la primera película norteamericana que intenta dignificar a los negros, aproximándose a su mundo con respeto.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (81, 1946, N'Narciso Negro', N'UK', N'Michael Powell, Emeric Pressburger', N'Deborah Kerr, David Farrar', N'Narra, con elegancia y precisión, los avatares de unas monjas en el Himalaya.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (82, 1979, N'Apocalypse Now', N'US', N'Francis Ford Coppola', N'M. Sheen, M. Brando, R. Duvall', N'No es un filme sobre Vietnam. Es una metáfora inmensa, sobrecogedora, sobre el horror de la guerra y la miseria humana.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (83, 1959, N'Con la Muerte en los Talones', N'US', N'Alfred Hitchcock', N'C. Grant, E. M. Saint, J. Mason', N'Nuevamente una confusión de identidad, ésta vez la de un publicista por un gángster.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (84, 1956, N'Centauros del Desierto', N'US', N'John Ford', N'J. Wayne, J. Hunter, N. Wood', N'Obra de culto para los amantes del western. Presenta una imagen de Wayne muy peculiar con un creciente odio hacia los indios.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (85, 1935, N'La Novia de Frankestein', N'US', N'James Whale', N'Boris Karloff, Elsa Lanchester', N'Obra maestra del cine de terror, capaz de enternecer y asustar todavía hoy. Para muchos, superior a su precedente.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (86, 1926, N'El Maquinista de la General', N'US', N'Buster Keaton', N'Buster Keaton', N'Pierde la novia y pierde el tren. Ambas cosas son graves para el maquinista de la locomotora.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (87, 1974, N'Chinatown', N'US', N'Roman Polanski', N'Jack Nicholson, Faye Dunaway', N'Polanski retoma la esencia del noir construyendo la historia de un detective y una vampira.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (88, 1927, N'El Cantor de Jazz', N'US', N'Alan Crosland', N'Al Jolson', N'Primer film sonoro.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (89, 1977, N'La Guerra de Las Galaxias', N'US', N'George Lucas', N'Harrison Ford, Carrie Fisher, Mark Hamill', N'Primera entrega de la archifamosa doble trilogía en la que Luke Skywalker intentará salvar a la Princesa Leia del malvado Darth Vader.', 2);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (90, 1948, N'Las Zapatillas Rojas', N'UK', N'E. Pressburger, Michael Powell', N'Moira Shearer, Anton Walkbrook', N'Prodigiosa narración, adelantada a su tiempo, que funde con inteligencia danza, música y melo.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (91, 1929, N'El Perro Andaluz', N'FR,ES', N'Luis Buñuel', N'S. Mareuil, P. Batcheff', N'Producción surrealista ideada por Buñuel y Dalí.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (92, 1948, N'El Ladrón de Bicicletas', N'IT', N'Vittorio de Sica', N'Lamberto Magionari, Enzo Staiola', N'Quintaesencia del neorrealismo italiano, narra el doloroso periplo de un padre de familia que ha sufrido un robo.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (93, 1958, N'Cenizas y Diamantes', N'PL', N'Andrej Wajda', N'Z. Zybulski, E. Kryzewska', N'Sobre las dudas ideológicas de un líder derechista al que le han encargado asesinar a un comunista.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (94, 1999, N'American Beauty', N'US', N'Sam Mendes', N'Kevin Spacey, Annette Bening', N'Sátira crítica de la sociedad norteamericana que narra en tono de comedia negra la decadencia de un matrimonio.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (95, 1992, N'Instinto Basico', N'US', N'Paul Verhoeven', N'Michael Douglas, Sharon Stone', N'Thriller erótico en el que un detective a cargo de una investigación de asesinato encuentra a una bella y seductora mujer que podría estar implicada en el caso.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (96, 1981, N'Fuego en el Cuerpo', N'US', N'Lawrence Kasdan', N'William Hurt, Kathleen Turner, Mickey Rourke', N'Thriller erótico en el que una mujer convence a su amante, un abogado de una pequeña ciudad, de asesinar a su rico esposo.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (97, 1990, N'Ghost', N'US', N'Jerry Zucker', N'Demi Moore, Patrick Swayze', N'Tras ser asesinado durante un intento de robo, un hombre logra permanecer en la tierra como un fantasma gracias al amor por su mujer.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (98, 1937, N'Horizontes Perdidos', N'US', N'Frank Capra', N'Ronald Colman, Jane Wyatt', N'Tras un accidente aéreo, un grupo cree haber perdido toda esperanza de sobrevivir bajo la nieve.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (99, 1999, N'Matrix', N'US', N'Andy/Larry Wachowsky', N'Keanu Reeves', N'Trilogía futurista protagonizada por un hacker que descubre la verdadera naturaleza de su ser a través de unos rebeldes.', 2);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (100, 2001, N'El Señor de los Anillos I,II,III', N'US', N'Peter Jackson', N'Elijah Wood, Orlando Bloom, Christopher Lee, Viggo Mortensen', N'Trilogía épica en la que el hobbit Frodo es encomendado destruir un anillo vital para el triunfo del bien sobre el mal.', 2);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (101, 1946, N'Gilda', N'US', N'Charles Vidor', N'Rita Hayworth Glenn Ford', N'Triángulo amoroso protagonizado por Rita Hayworth, encarnando el papel que definirá el resto de su carrera. Para los anales queda la bofetada que le propina Glenn Ford, y el striptease encubierto al cantar -Put the blame on me-.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (102, 1931, N'El Vampiro de Düsseldorf', N'DE', N'Fritz Lang', N'Peter Lorre, Otto Wenricke', N'Un asesino de niñas tiene a la policía en jaque. Una clara premonición del nazismo por venir.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (103, 1946, N'A Vida o Muerte', N'UK', N'E. Pressburger, Michael Powell', N'David Niven, Kim Hunter', N'Un aviador se enamora en el momento en que va a morir y un juicio celestial falla a su favor.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (104, 1946, N'¡Qué Bello Es Vivir!', N'US', N'Frank Capra', N'James Steward, Lionel Barrymore', N'Un banquero querido por su pueblo está a punto de suicidarse por una pérdida de dinero.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (105, 1930, N'La Tierra', N'RU', N'Alexander Dovzhenko', N'S. Svachenko, S. Chkourat', N'Un campesino ucraniano ha de morir y ser enterrado en la tierra que él ha fecundado y que heredarán sus hijos.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (106, 1971, N'La Naranja Mecanica', N'UK', N'Stanley Kubrick', N'Malcolm McDowell', N'Un carismático delincuente de una Gran Bretaña futurista se presenta voluntario para un programa experimental que promete resolver el problema del crimen en la sociedad.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (107, 1956, N'El Séptimo Sello', N'SE', N'Ingmar Bergman', N'M. Von Sydow, Gunnar Bjöstrand', N'Un cruzado en busca de la verdad inicia una partida de ajedrez con La Muerte.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (108, 1974, N'Amarcord', N'IT', N'Fedrico Fellini', N'A. Brancia, P. Maggio', N'Un emotivo collage de imágenes sobre un pueblo italiano sin mayor entramado argumental.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (109, 1958, N'La Gata sobre el Tejado de Zinc', N'US', N'Richard Brooks', N'Paul Newman, Elizabeth Taylor', N'Un ex-jugador de fútbol americano alcoholizado se reúne con su padre que está muriendo de cáncer, en lo que supondrá una cadena de revelaciones para ambos.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (110, 1930, N'Luces de la Ciudad', N'US', N'Charles Chaplin', N'Charles Chaplin, Virginia Cherill', N'Un filme mudo en pleno apogeo del sonoro que se convirtió en un éxito y, de allí, a ser un clásico.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (111, 1982, N'Blade Runner', N'US', N'Ridley Scott', N'H. Ford, S. Young, R. Hauer', N'Un futuro apocalíptico donde robots serviciales, los replicantes, se revelan contra su naturaleza.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (112, 1942, N'Ser o No Ser', N'US', N'Ernst Lubistch', N'Carole Lombard, Jack Benny', N'Un grupo de actores que monta Hamlet, un espía y un piloto coinciden en esta sátira antinazi.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (113, 1937, N'La Gran Ilusión', N'FR', N'Jean Renoir', N'Erich Von Stroheim, Jean Gabin', N'Un grupo de aristócratas presos en un castillo durante la guerra planean una fuga.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (114, 1982, N'E. T. el Extraterrestre', N'US', N'Steven Spielberg', N'Dee Wallace, Drew Barrymore', N'Un grupo de niños de la Tierra ayudan a un despistado alien a volver a su planeta.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (115, 1969, N'Grupo Salvaje', N'US', N'Sam Peckinpah', N'William Holden, Ernest Brognine', N'Un grupo de perdedores y el acoso de un sheriff sediento de justicia.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (116, 1955, N'La Noche del Cazador', N'US', N'Charles Laughton', N'Robert Mitchun, Shelley Winters', N'Un implacable y siniestro cuento de hadas con ogro, un predicador que acosa a unos hermanos.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (117, 1994, N'Cadena Perpetua', N'US', N'Frank Darabont', N'Tim Robbins, Morgan Freeman', N'Un joven banquero es acusado de asesinar a su esposa y sentenciado a cadena perpetua. En la cárcel encontrará a un compañero poco convencional que cambiará su visión de la vida.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (118, 1935, N'39 Escalones', N'US', N'Alfred Hitchcock', N'Robert Donat, Madeleine Carroll', N'Un joven común se ve involucrado en el asesinato de una miembro del servicio secreto.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (119, 1960, N'La Dolce Vita', N'IT', N'Federico Fellini', N'Anita Ekberg, Marcello Mastroianni', N'Un joven periodista-playboy acostumbrado a rodearse de famosos y ricos en busca de fiestas y sexo, conoce a una estrella de cine y cae locamente enamorado.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (120, 1946, N'Cadenas Rotas', N'UK', N'David Lean', N'John Mills, Valerie Hobson', N'Un joven pobre triunfa en la vida con el apoyo anónimo de un delincuente. Quizá la mejor adaptación de Grandes esperanzas, de Dickens.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (121, 1953, N'Te Querré Siempre', N'IT', N'Roberto Rossellini', N'Ingrid Bergman, George Sanders', N'Un matrimonio inglés viaja a Nápoles y allí, en tierra ajena, han de enfrentar la crisis a la que ha llegado su relación.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (122, 1967, N'Doce Del Patibulo', N'US', N'Robert Aldrich', N'Lee Marvin, Charles Bronson', N'Un Mayor del ejercito norteamericano debe entrenar a una docena de convictos asesinos para llevar a cabo una misión de asesinato en masa de oficiales de la Alemania Nazi.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (123, 1986, N'El Nombre de la Rosa', N'DE,IT', N'J. J. Annaud', N'Sean Connery, Christian Slater', N'Un monje inconformista investiga una serie de muertes misteriosas en una aislada abadía.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (124, 1961, N'Viridiana', N'MX,ES', N'Luis Buñuel', N'Silvia Pinal, Francisco Rabal', N'Un morboso juego que pone en tela de juicio la caridad cristiana. Polémica, perfecta y censurada.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (125, 1961, N'Psicosis', N'US', N'Alfred Hitchcok', N'Anthony Perkins, Vera Miles', N'Un motel, una ladrona, un psicópata, una ducha y un crimen. Terror en estado puro.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (126, 1971, N'Mi Querida Señorita', N'ES', N'Jaime de Armiñan', N'J. L. López Vázquez, Antonio Ferrandis', N'Un prestigioso profesor de fonética conoce a una descarada florista y apuesta amigo que es capaz de convertirla en una dama.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (127, 1954, N'Los Siete Samuráis', N'JP', N'Akira Kurosawa', N'Toshiro Mifune, Takashi Shimura', N'Un pueblo contrata siete samuráis para que le defiendan de los bandidos. Una pieza magistral.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (128, 1939, N'La Diligencia', N'US', N'John Ford', N'John Wayne, Claire Trevor', N'Un variopinto grupo ha de atravesar un territorio plagado de indios ocupando la diligencia.', 4);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (129, 1969, N'2001 Odisea del Espacio', N'US', N'Stanley Kubrick', N'Keir Dullea, Gary Lockwood', N'Un viaje espacial con una misión secreta que es custodiada por el Hal 9000, ordenador inteligente.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (130, 1936, N'Tiempos Modernos', N'US', N'Charles Chaplin', N'Charles Chaplin, Paulette Goddar', N'Una crítica voraz a la sociedad industrial.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (131, 1952, N'Cantando Bajo la Lluvia', N'US', N'Stanley Donen', N'Gene Kelly, Debbie Reynolds', N'Una de las películas más famosas del musical y un auténtico icono cultural del cine del siglo XX.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (132, 1949, N'El Tercer Hombre', N'US', N'Carol Reed', N'J. Cotten, Orson Welles, Alida Valli', N'Una historia en apariencia sencilla sobre un escritor que busca un hombre a en una Viena desolada.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (133, 1991, N'El Silencio de los Corderos', N'US', N'Jonathan Demme', N'Anthony Hopkins, Jodie Foster', N'Una joven agente del FBI busca ayuda en un asesino para resolver el caso de una mujer desaparecida.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (134, 1973, N'El Ultimo Tango en Paris', N'IT', N'Bernardo Bertolucci', N'Marlon Brando, Maria Schneider', N'Una joven parisina y un hombre de negocios americano acuerdan que su relación secreta se basará exclusivamente en el sexo.', 1);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (135, 1950, N'El Crepúsculo de los Dioses', N'US', N'Billy Wilder', N'William Holden, Gloria Swanson', N'Una mirada ácida al mundo del cine, al glamour y a la decadencia de Hollywood. Notable la Swanson.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (136, 1939, N'Lo que el Viento se Llevó', N'US', N'Víctor Fleming', N'Vivien Leigh, Clark Gable', N'Una mujer voluntariosa lucha para sobrevivir.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (137, 1941, N'Ciudadano Kane', N'US', N'Orson Welles', N'Orson Welles, Joseph Cotten', N'Una muy libre biografía del magnate de los medios Randolph Hearst. Un filme mítico y complejo que ha hecho historia, con sus múltiples aportaciones.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (138, 1973, N'El Espíritu de la Colmena', N'ES', N'Victor Erice', N'A. Torrent, F. Fernán-Gómez', N'Una niña mira el mundo con atención. Un filme poético que tiene, al fondo, la imagen de Frankenstein.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (139, 1944, N'Perdición', N'US', N'Billy Wilder', N'B. Stanwyck, F. McMurray', N'Una película clave para el cine negro, con vampira asesina y rubia (la inconmensurable Stanwyck).', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (140, 1933, N'Sopa de Ganso', N'US', N'Leo McCarey', N'Los hermanos Marx', N'Una sucesión de gags desternillantes armados alrededor de un país imaginario llamado Libertonia.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (141, 1950, N'Eva Al Desnudo', N'US', N'Joseph L. Mankiewicz', N'Bette Davis, Anne Baxter', N'Una visión mordaz del mundo del espectáculo.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (142, 1935, N'Sombrero de Copa', N'US', N'Mark Sandrich', N'Fred Astaire, Ginger Rogers', N'Uno de los más representativos filmes bailados por la mítica pareja Rogers & Astaire.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (143, 1942, N'El Cuarto Mandamiento', N'US', N'Orson Welles', N'Tim Holt, Joseph Cotten', N'Welles abandona la densidad de Ciudadano Kane para adentrarse exitoso en la ruta del melodrama.', 3);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (144, 2012, N'Argo', N'US', N'Ben Affleck', N'Ben Affleck, John Goodman, Alan Arkin, Bryan Cranston, Taylor Schilling, Kyle Chandler, Victor Garber, Michael Cassidy', N'Irán 1977. El gobierno canadiense organizaron una operación para rescatar a seis diplomáticos estadounidenses que se habían refugiado en la casa del embajador de Canadá.', 2);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (145, 2012, N'Skyfall', N'UK', N'Sam Mendes', N'Neal Purvis, Robert Wade, John Logan', N'La lealtad de James Bond (Daniel Craig), el mejor agente de los servicios británicos, hacia su superiora M (Judi Dench) se verá puesta a prueba.', 2);
INSERT INTO [PEL_T_Peliculas] ([idPelicula], [agno], [Titulo], [Pais], [Director], [Actores], [Sinopsis], [idTipo]) VALUES (146, 2012, N'Paranormal Activity 4', N'US', N'Henry Joost, Ariel Schulman', N'Katie Featherston, Kathryn Newton, Matt Shively, Brady Allen, Alisha Boe, Tommy Miranda', N'En la actualidad, Katie y Hunter, que ahora se llama ''Robbie'', se han trasladado a una nueva casa y sus vecinos, Alicia y su madre, comienzan a experimentar sucesos paranormales que ocurren en su casa.', 2);
-- 146 records

SET IDENTITY_INSERT [PEL_T_Peliculas] OFF
GO

CREATE INDEX [id] ON [PEL_T_Peliculas] ([idPelicula])
GO

CREATE INDEX [idTipo] ON [PEL_T_Peliculas] ([idTipo])
GO

--
-- Table structure for table 'PEL_T_Prestamo'
--



CREATE TABLE [PEL_T_Prestamo] (
  [IdPrestamo] INT NOT NULL IDENTITY, 
  [idcliente] INT, 
  [idpelicula] INT, 
  [FechaPrestamo] DATETIME, 
  [FechaDevolucion] DATETIME, 
  [PrecioDiaEfectuado] DECIMAL(6,2) DEFAULT 0, 
  [DiasPrestamoEfectuado] INT, 
  PRIMARY KEY ([IdPrestamo])
)

SET IDENTITY_INSERT [PEL_T_Prestamo] ON
GO

--
-- Dumping data for table 'PEL_T_Prestamo'
--
set dateformat ymd
go
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (1, 9, 40, '2012-11-19 00:00:00', '2012-11-21 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (2, 2, 56, '2012-08-07 00:00:00', '2012-08-15 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (3, 16, 8, '2012-12-03 00:00:00', '2012-12-06 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (4, 20, 69, '2012-12-30 00:00:00', '2013-01-03 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (5, 1, 97, '2012-10-17 00:00:00', '2012-10-25 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (6, 13, 34, '2013-02-20 00:00:00', '2013-02-22 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (7, 19, 114, '2012-07-04 00:00:00', '2012-07-07 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (8, 5, 109, '2013-01-09 00:00:00', '2013-01-14 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (9, 11, 100, '2012-12-11 00:00:00', '2012-12-13 00:00:00', 2, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (10, 7, 23, '2012-10-01 00:00:00', '2012-10-07 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (11, 14, 21, '2012-07-30 00:00:00', '2012-08-02 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (12, 8, 72, '2013-03-01 00:00:00', '2013-03-03 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (13, 9, 45, '2012-09-10 00:00:00', '2012-09-13 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (14, 19, 103, '2013-01-08 00:00:00', '2013-01-14 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (15, 15, 104, '2012-06-12 00:00:00', '2012-06-22 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (16, 10, 20, '2012-10-16 00:00:00', '2012-10-26 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (17, 17, 100, '2012-05-16 00:00:00', '2012-05-27 00:00:00', 2, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (18, 2, 96, '2012-09-05 00:00:00', '2012-09-10 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (19, 14, 75, '2012-05-10 00:00:00', '2012-05-18 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (20, 16, 114, '2013-02-04 00:00:00', '2013-02-22 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (21, 9, 102, '2012-12-12 00:00:00', '2012-12-18 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (22, 8, 112, '2012-07-14 00:00:00', '2012-07-16 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (23, 12, 99, '2012-11-06 00:00:00', '2012-11-13 00:00:00', 2, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (24, 16, 28, '2012-09-29 00:00:00', '2012-10-03 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (25, 12, 51, '2013-01-09 00:00:00', '2013-01-10 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (26, 5, 87, '2012-11-05 00:00:00', '2012-11-08 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (27, 20, 145, '2013-02-18 00:00:00', '2013-02-21 00:00:00', 2, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (28, 1, 143, '2012-08-24 00:00:00', '2012-09-01 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (29, 16, 41, '2013-03-01 00:00:00', NULL, 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (30, 16, 139, '2013-01-30 00:00:00', '2013-02-03 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (31, 18, 68, '2013-03-04 00:00:00', NULL, .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (32, 6, 74, '2012-10-18 00:00:00', '2012-10-20 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (33, 3, 139, '2012-12-28 00:00:00', '2013-01-03 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (34, 4, 69, '2012-11-01 00:00:00', '2012-11-03 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (35, 10, 100, '2012-11-22 00:00:00', '2012-11-27 00:00:00', 2, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (36, 17, 47, '2012-05-16 00:00:00', '2012-05-18 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (37, 11, 49, '2012-12-03 00:00:00', '2012-12-07 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (38, 19, 31, '2013-01-16 00:00:00', '2013-01-25 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (39, 5, 125, '2012-09-14 00:00:00', '2012-09-16 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (40, 8, 130, '2012-06-05 00:00:00', '2012-06-14 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (41, 9, 121, '2013-02-26 00:00:00', '2013-03-01 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (42, 17, 71, '2012-11-08 00:00:00', '2012-11-13 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (43, 15, 135, '2013-02-28 00:00:00', NULL, 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (44, 10, 13, '2012-06-29 00:00:00', '2012-07-04 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (45, 15, 59, '2012-11-29 00:00:00', '2012-12-04 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (46, 11, 129, '2012-09-04 00:00:00', '2012-09-08 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (47, 1, 20, '2013-02-05 00:00:00', '2013-02-06 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (48, 8, 51, '2012-10-01 00:00:00', '2012-10-05 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (49, 5, 41, '2012-08-13 00:00:00', '2012-08-19 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (50, 9, 101, '2013-02-11 00:00:00', '2013-02-15 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (51, 13, 4, '2012-11-08 00:00:00', '2012-11-09 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (52, 13, 30, '2013-02-16 00:00:00', '2013-02-28 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (53, 3, 56, '2012-10-08 00:00:00', '2012-10-18 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (54, 20, 32, '2012-08-27 00:00:00', '2012-09-03 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (55, 14, 78, '2012-12-06 00:00:00', '2012-12-16 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (56, 10, 25, '2013-03-02 00:00:00', NULL, 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (57, 19, 109, '2013-01-09 00:00:00', '2013-01-13 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (58, 7, 97, '2012-11-13 00:00:00', '2012-11-19 00:00:00', 1.5, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (59, 8, 52, '2012-07-04 00:00:00', '2012-07-14 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (60, 3, 106, '2013-02-28 00:00:00', NULL, 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (61, 8, 44, '2012-12-30 00:00:00', '2013-01-03 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (62, 2, 67, '2012-10-09 00:00:00', '2012-10-15 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (63, 16, 33, '2013-02-05 00:00:00', '2013-02-09 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (64, 5, 55, '2012-07-02 00:00:00', '2012-07-06 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (65, 7, 141, '2013-03-01 00:00:00', NULL, 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (66, 3, 80, '2012-11-29 00:00:00', '2012-12-07 00:00:00', .75, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (67, 18, 144, '2012-11-03 00:00:00', '2012-11-05 00:00:00', 2, 1);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (68, 6, 24, '2013-01-29 00:00:00', '2013-02-03 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (69, 7, 48, '2013-02-25 00:00:00', '2013-03-01 00:00:00', 1, 3);
INSERT INTO [PEL_T_Prestamo] ([IdPrestamo], [idcliente], [idpelicula], [FechaPrestamo], [FechaDevolucion], [PrecioDiaEfectuado], [DiasPrestamoEfectuado]) VALUES (70, 14, 38, '2012-12-03 00:00:00', '2012-12-13 00:00:00', 1.5, 3);
-- 70 records
SET IDENTITY_INSERT [PEL_T_Prestamo] OFF
GO

CREATE INDEX [idcliente] ON [PEL_T_Prestamo] ([idcliente])
GO

CREATE INDEX [idpelicula] ON [PEL_T_Prestamo] ([idpelicula])
GO

CREATE INDEX [IdPrestamo] ON [PEL_T_Prestamo] ([IdPrestamo])
GO

--
-- Table structure for table 'PEL_T_TipoPelicula'
--


CREATE TABLE [PEL_T_TipoPelicula] (
  [IdTipo] INT NOT NULL IDENTITY, 
  [Tipo] NVARCHAR(255), 
  [PrecioDia] DECIMAL(6,2) DEFAULT 0, 
  [DiasPrestamo] INT, 
  PRIMARY KEY ([IdTipo])
)

SET IDENTITY_INSERT [PEL_T_TipoPelicula] ON
GO

--
-- Dumping data for table 'PEL_T_TipoPelicula'
--

INSERT INTO [PEL_T_TipoPelicula] ([IdTipo], [Tipo], [PrecioDia], [DiasPrestamo]) VALUES (1, N'Actualidad', 1.5, 3);
INSERT INTO [PEL_T_TipoPelicula] ([IdTipo], [Tipo], [PrecioDia], [DiasPrestamo]) VALUES (2, N'Novedad', 2, 1);
INSERT INTO [PEL_T_TipoPelicula] ([IdTipo], [Tipo], [PrecioDia], [DiasPrestamo]) VALUES (3, N'Clásicos', 1, 3);
INSERT INTO [PEL_T_TipoPelicula] ([IdTipo], [Tipo], [PrecioDia], [DiasPrestamo]) VALUES (4, N'Oferta', .75, 1);
-- 4 records

SET IDENTITY_INSERT [PEL_T_TipoPelicula] OFF
GO

CREATE INDEX [IdTipo] ON [PEL_T_TipoPelicula] ([IdTipo])
GO


alter table PEL_T_Peliculas
add constraint FK_PEL_T_Peliculas_tipo
foreign key (idtipo)
references PEL_T_TipoPelicula (idtipo);
go

alter table PEL_T_Prestamo
add constraint FK_PEL_T_Prestamo_PEL_T_Clientes
foreign key (idcliente)
references PEL_T_Clientes (idcliente);
go

alter table PEL_T_Prestamo
add constraint FK_PEL_T_Prestamo_PEL_T_Peliculas
foreign key (idpelicula)
references PEL_T_Peliculas (idpelicula);
go

