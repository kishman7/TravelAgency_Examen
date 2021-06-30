use TravelAgency;

create table Hotel (
	id INT primary key IDENTITY(1,1),
	NameHotel NVARCHAR(50),
	InfoHotel NVARCHAR(MAX),
	ImageHotel NVARCHAR(50)
);

SET IDENTITY_INSERT Hotel ON;

insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (1, 'Mohr-Crooks', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien', 'Interdum.txt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (2, 'Moen-Volkman', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 'SapienInSapien.avi');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (3, 'Hermann Group', 'commodo vulputate justo in blandit ultrices enim', 'AdipiscingMolestieHendrerit.avi');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (4, 'Kirlin, Conroy and Nicolas', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', 'Risus.png');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (5, 'Kiehn, Altenwerth and Jaskolski', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec', 'CongueEtiamJusto.tiff');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (6, 'Zemlak, Hagenes and Anderson', 'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 'EtCommodoVulputate.gif');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (7, 'Stanton, Cremin and Denesik', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', 'TurpisAPede.jpeg');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (8, 'Morissette Group', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus', 'PrimisInFaucibus.txt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (9, 'Herzog, Durgan and Lowe', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', 'DolorQuisOdio.mp3');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (10, 'Keebler, Baumbach and Connelly', 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Est.txt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (11, 'Hodkiewicz-Bruen', 'ultrices aliquet maecenas leo odio condimentum id', 'OrnareImperdietSapien.txt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (12, 'Macejkovic LLC', 'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et', 'TellusInSagittis.ppt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (13, 'Koch and Sons', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', 'Nam.tiff');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (14, 'Bogisich, Walter and Terry', 'vestibulum velit id pretium iaculis diam erat', 'LectusVestibulum.avi');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (15, 'Mitchell LLC', 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam', 'MetusArcu.ppt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (16, 'Spinka-Gerlach', 'semper porta volutpat quam pede lobortis ligula', 'PlateaDictumst.ppt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (17, 'Balistreri-Mante', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed', 'LoremInteger.tiff');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (18, 'Jacobi Inc', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', 'In.txt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (19, 'Bergstrom-Koch', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 'Cras.mp3');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (20, 'O''Keefe, Batz and Schaden', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'LoremVitae.ppt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (21, 'West Inc', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', 'TurpisElementumLigula.mp3');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (22, 'McGlynn LLC', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', 'PraesentBlandit.jpeg');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (23, 'Becker LLC', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'PedeMorbiPorttitor.tiff');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (24, 'Bernhard Inc', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'Odio.gif');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (25, 'Boehm Group', 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla', 'OrciVehiculaCondimentum.mov');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (26, 'Lubowitz, Powlowski and Hauck', 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', 'FusceCongue.pdf');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (27, 'Gorczany, Haag and Sipes', 'suspendisse ornare consequat lectus in est risus auctor', 'Curae.doc');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (28, 'Hirthe Group', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', 'Aliquet.mp3');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (29, 'Cartwright-Jenkins', 'aenean auctor gravida sem praesent id massa id nisl', 'NullaInteger.ppt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (30, 'Reilly-Sipes', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', 'InImperdiet.pdf');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (31, 'Spencer-Fahey', 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum', 'EgetVulputateUt.ppt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (32, 'Schroeder and Sons', 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 'LectusVestibulumQuam.xls');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (33, 'Bins, Satterfield and Reynolds', 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', 'Tortor.png');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (34, 'Heathcote-Considine', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget', 'ConsequatMetusSapien.gif');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (35, 'Becker-Welch', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum', 'NonSodales.tiff');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (36, 'Tromp, Osinski and Maggio', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 'PedeMorbi.doc');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (37, 'Barton-Carroll', 'at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', 'UltricesAliquetMaecenas.xls');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (38, 'Greenfelder, Farrell and Turner', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', 'Odio.avi');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (39, 'Kulas LLC', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna', 'TurpisDonecPosuere.jpeg');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (40, 'Bartell-Pfannerstill', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', 'LiberoNamDui.tiff');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (41, 'Cummerata and Sons', 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', 'PrimisInFaucibus.avi');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (42, 'Prosacco Inc', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', 'SapienVarius.xls');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (43, 'Emard, Hansen and Powlowski', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', 'UltricesPosuereCubilia.mp3');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (44, 'Gusikowski, Macejkovic and Macejkovic', 'diam in magna bibendum imperdiet nullam orci', 'Lacinia.txt');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (45, 'Kunde-Streich', 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', 'Non.avi');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (46, 'Beier, Bashirian and Champlin', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', 'QuamTurpisAdipiscing.mpeg');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (47, 'VonRueden, Mayer and Klocko', 'nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', 'Vestibulum.gif');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (48, 'Runte-Fay', 'vivamus vel nulla eget eros elementum pellentesque', 'Quisque.xls');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (49, 'Bartell Inc', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', 'AeneanSitAmet.jpeg');
insert into Hotel (id, NameHotel, InfoHotel, ImageHotel) values (50, 'Berge-Stark', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 'DuiLuctus.mp3');

SET IDENTITY_INSERT Hotel OFF;
