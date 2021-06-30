use TravelAgency;

create table Client (
	ID INT primary key IDENTITY(1,1),
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Email NVARCHAR(50),
	Phone NVARCHAR(50),
	BirthDay DATE
);

SET IDENTITY_INSERT Client ON;

insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (1, 'Leslie', 'Talby', 'ltalby0@cafepress.com', '+994 483 965 5885', '1968-05-04');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (2, 'Barb', 'Nizet', 'bnizet1@oakley.com', '+62 524 933 3109', '1995-08-14');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (3, 'Ebba', 'Hagston', 'ehagston2@ebay.com', '+46 799 574 0265', '2000-01-18');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (4, 'West', 'Bordman', 'wbordman3@dailymotion.com', '+86 446 609 4072', '1978-02-15');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (5, 'Gerome', 'Yarrington', 'gyarrington4@deliciousdays.com', '+7 672 662 0484', '1963-06-16');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (6, 'Karoline', 'McKmurrie', 'kmckmurrie5@ed.gov', '+351 767 273 5865', '1998-03-25');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (7, 'Farah', 'Folli', 'ffolli6@wordpress.org', '+381 892 959 7657', '1970-08-04');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (8, 'Crystal', 'Passmore', 'cpassmore7@slideshare.net', '+62 835 118 6080', '1975-07-30');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (9, 'Gene', 'McPhillimey', 'gmcphillimey8@pen.io', '+48 979 652 5886', '1966-11-09');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (10, 'Patrizio', 'Laflin', 'plaflin9@sciencedaily.com', '+62 857 551 3352', '1971-05-04');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (11, 'Lian', 'Bicker', 'lbickera@sogou.com', '+373 621 190 0192', '1986-06-08');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (12, 'Danny', 'Fennessy', 'dfennessyb@xing.com', '+372 191 691 4343', '1988-07-11');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (13, 'Nolan', 'Proger', 'nprogerc@businesswire.com', '+86 115 420 5704', '1974-09-27');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (14, 'Andrea', 'Cartmell', 'acartmelld@statcounter.com', '+62 240 965 5132', '1981-07-24');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (15, 'Ulick', 'Pidgley', 'upidgleye@tamu.edu', '+1 704 353 8281', '1980-04-16');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (16, 'Kirstyn', 'Deville', 'kdevillef@sfgate.com', '+64 250 473 3478', '1981-03-16');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (17, 'Agathe', 'Whitchurch', 'awhitchurchg@samsung.com', '+86 931 421 1384', '1994-10-12');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (18, 'Claudina', 'Caught', 'ccaughth@goo.ne.jp', '+255 731 185 3908', '1983-10-09');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (19, 'Erhard', 'Ollarenshaw', 'eollarenshawi@newyorker.com', '+244 113 159 4335', '1998-04-20');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (20, 'Hirsch', 'Spilsted', 'hspilstedj@wikispaces.com', '+63 854 175 9954', '1974-05-22');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (21, 'Debi', 'Adami', 'dadamik@narod.ru', '+62 834 296 5789', '1991-12-10');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (22, 'Blinni', 'Stegel', 'bstegell@1688.com', '+62 339 118 8428', '1967-12-08');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (23, 'Laina', 'Lebel', 'llebelm@amazon.co.uk', '+86 208 576 7326', '1981-09-14');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (24, 'Ilse', 'Bails', 'ibailsn@oaic.gov.au', '+62 281 236 5395', '1983-01-10');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (25, 'Karine', 'Deverson', 'kdeversono@examiner.com', '+63 559 253 0380', '1981-05-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (26, 'Bobby', 'Minchenton', 'bminchentonp@wp.com', '+1 404 540 9393', '1960-04-01');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (27, 'Brody', 'Elliot', 'belliotq@economist.com', '+62 588 900 6555', '1969-01-24');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (28, 'Violetta', 'Loverock', 'vloverockr@feedburner.com', '+86 853 183 4444', '1974-06-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (29, 'Loy', 'Lade', 'llades@apple.com', '+86 210 330 8990', '1987-07-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (30, 'Dalis', 'Gland', 'dglandt@jugem.jp', '+48 762 871 7605', '1994-11-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (31, 'Con', 'Throughton', 'cthroughtonu@ameblo.jp', '+51 395 160 5398', '1976-05-12');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (32, 'Janela', 'Duckerin', 'jduckerinv@archive.org', '+970 478 330 4807', '2003-05-25');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (33, 'Brigham', 'Andriesse', 'bandriessew@mysql.com', '+7 824 901 1936', '1963-09-24');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (34, 'Aleece', 'Giorgio', 'agiorgiox@1und1.de', '+66 843 665 6280', '1960-03-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (35, 'Rafi', 'Robberecht', 'rrobberechty@nba.com', '+212 572 683 7069', '1974-11-24');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (36, 'Brenden', 'Strelitzer', 'bstrelitzerz@thetimes.co.uk', '+7 232 439 0894', '1966-12-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (37, 'Crin', 'Grassick', 'cgrassick10@arstechnica.com', '+39 884 397 7693', '1995-05-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (38, 'Nolly', 'Brydell', 'nbrydell11@statcounter.com', '+57 882 240 9205', '1996-07-11');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (39, 'Dionis', 'Batcock', 'dbatcock12@stanford.edu', '+964 820 371 0108', '1993-06-05');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (40, 'Margarette', 'MacWilliam', 'mmacwilliam13@t.co', '+55 767 689 8279', '1979-04-25');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (41, 'Carissa', 'Simmance', 'csimmance14@wikipedia.org', '+86 145 212 4685', '1963-11-28');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (42, 'Patty', 'Ovenden', 'povenden15@nytimes.com', '+351 575 708 0400', '1987-06-08');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (43, 'Salmon', 'Becarra', 'sbecarra16@prnewswire.com', '+33 890 624 9437', '1970-05-30');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (44, 'Yuma', 'Kebell', 'ykebell17@ted.com', '+86 116 672 2017', '2002-06-07');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (45, 'Pen', 'Tait', 'ptait18@archive.org', '+33 980 673 8743', '1970-10-05');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (46, 'Torrance', 'Peasegood', 'tpeasegood19@360.cn', '+86 801 293 2426', '1973-05-16');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (47, 'Tabbatha', 'Paynes', 'tpaynes1a@vk.com', '+380 917 414 7200', '1971-01-02');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (48, 'Jilly', 'Guyot', 'jguyot1b@mediafire.com', '+62 231 316 1534', '2000-02-12');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (49, 'Fionna', 'Gimlet', 'fgimlet1c@artisteer.com', '+95 660 629 7333', '1985-11-20');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (50, 'Mora', 'Adamovicz', 'madamovicz1d@instagram.com', '+20 311 757 4220', '1960-02-14');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (51, 'Nicky', 'Orman', 'norman1e@artisteer.com', '+52 984 239 5107', '1991-02-28');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (52, 'Michal', 'Laurie', 'mlaurie1f@mashable.com', '+86 880 761 4482', '1980-08-15');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (53, 'Ethelda', 'Bareham', 'ebareham1g@naver.com', '+62 203 328 5960', '1979-12-23');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (54, 'Stevena', 'Renne', 'srenne1h@soup.io', '+351 797 369 2093', '1993-01-29');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (55, 'Leticia', 'Hulson', 'lhulson1i@spiegel.de', '+48 833 283 8755', '1985-01-15');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (56, 'Loralie', 'Pouton', 'lpouton1j@slate.com', '+351 336 369 2289', '2000-07-16');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (57, 'Lucia', 'Quye', 'lquye1k@google.es', '+62 324 500 3930', '1961-08-02');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (58, 'Beltran', 'Gores', 'bgores1l@yahoo.co.jp', '+62 442 539 4994', '1965-09-10');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (59, 'Farah', 'Emburey', 'femburey1m@squarespace.com', '+92 450 609 0772', '1988-11-17');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (60, 'Wilhelmina', 'McGovern', 'wmcgovern1n@drupal.org', '+82 700 364 1944', '1990-03-12');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (61, 'Bernardo', 'Gronou', 'bgronou1o@liveinternet.ru', '+62 135 124 6801', '1985-03-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (62, 'Drud', 'Daybell', 'ddaybell1p@apache.org', '+229 644 211 4963', '1977-12-04');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (63, 'Joline', 'Bircher', 'jbircher1q@elegantthemes.com', '+593 273 477 4112', '1971-05-05');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (64, 'Sawyere', 'Brunroth', 'sbrunroth1r@microsoft.com', '+855 285 836 7637', '2002-04-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (65, 'Faber', 'Gaskin', 'fgaskin1s@cafepress.com', '+374 976 144 8114', '1980-05-12');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (66, 'Dominique', 'Maundrell', 'dmaundrell1t@un.org', '+591 249 753 1656', '1963-03-29');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (67, 'Ermentrude', 'Banyard', 'ebanyard1u@a8.net', '+62 352 744 7521', '1971-08-05');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (68, 'Natal', 'Massen', 'nmassen1v@simplemachines.org', '+63 250 770 6700', '1985-08-19');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (69, 'Tyrone', 'Sambell', 'tsambell1w@bigcartel.com', '+48 188 931 7508', '1976-05-15');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (70, 'Adams', 'Ashbey', 'aashbey1x@soundcloud.com', '+86 385 406 2092', '1965-10-25');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (71, 'Heather', 'Levett', 'hlevett1y@google.co.jp', '+998 535 246 8743', '1969-12-27');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (72, 'Lyssa', 'Gurge', 'lgurge1z@dion.ne.jp', '+351 144 855 1756', '1962-05-15');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (73, 'Gina', 'Yandle', 'gyandle20@psu.edu', '+94 984 541 5628', '1989-05-23');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (74, 'Giff', 'Leahy', 'gleahy21@apple.com', '+63 328 644 9597', '1980-06-21');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (75, 'Modestia', 'Tommasetti', 'mtommasetti22@amazon.de', '+62 860 960 8160', '1971-09-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (76, 'Holmes', 'Eake', 'heake23@cyberchimps.com', '+86 692 356 6211', '1987-07-13');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (77, 'Sukey', 'Farmloe', 'sfarmloe24@163.com', '+7 758 960 8454', '1986-07-21');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (78, 'Conni', 'Alders', 'calders25@nasa.gov', '+970 970 911 7649', '2001-07-09');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (79, 'Rouvin', 'Estick', 'restick26@google.com.hk', '+46 950 280 3911', '1984-07-12');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (80, 'Sharia', 'Farlambe', 'sfarlambe27@gmpg.org', '+86 411 860 3784', '1970-11-01');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (81, 'Johnny', 'Arrington', 'jarrington28@cnn.com', '+355 524 321 9935', '1996-06-10');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (82, 'Ulla', 'Ingamells', 'uingamells29@google.com.br', '+7 140 381 0317', '1972-10-15');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (83, 'Gwyn', 'Mcwhinney', 'gmcwhinney2a@domainmarket.com', '+56 581 142 7865', '1966-07-23');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (84, 'Land', 'Giacobilio', 'lgiacobilio2b@home.pl', '+86 990 690 9645', '1983-07-08');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (85, 'Melantha', 'Gouth', 'mgouth2c@thetimes.co.uk', '+33 523 400 9043', '1974-09-27');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (86, 'Hillel', 'Lalley', 'hlalley2d@amazon.co.uk', '+358 219 265 1707', '2000-12-11');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (87, 'Alexa', 'Rodge', 'arodge2e@howstuffworks.com', '+380 788 448 0912', '1988-08-30');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (88, 'Porty', 'Everson', 'peverson2f@about.me', '+86 166 295 1780', '1988-04-24');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (89, 'Kimberlee', 'Bayford', 'kbayford2g@mac.com', '+7 113 326 6175', '1969-03-27');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (90, 'Alma', 'Benediktsson', 'abenediktsson2h@cdbaby.com', '+33 999 391 5841', '1995-05-03');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (91, 'Katinka', 'Baser', 'kbaser2i@xing.com', '+86 173 621 2989', '2000-08-21');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (92, 'Claudie', 'Siney', 'csiney2j@baidu.com', '+86 273 259 1061', '1978-11-05');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (93, 'Gerrie', 'Edmeads', 'gedmeads2k@posterous.com', '+86 996 706 1786', '1997-10-21');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (94, 'Perice', 'O''Donoghue', 'podonoghue2l@marriott.com', '+51 141 732 9602', '1982-02-02');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (95, 'Georgy', 'Ricketts', 'gricketts2m@e-recht24.de', '+66 620 822 7143', '1983-07-18');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (96, 'Brenda', 'Lawlan', 'blawlan2n@bbb.org', '+86 676 353 7239', '1982-12-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (97, 'Sully', 'Littlekit', 'slittlekit2o@php.net', '+30 256 861 6134', '1983-02-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (98, 'Pammi', 'Gellert', 'pgellert2p@pagesperso-orange.fr', '+62 295 821 4395', '1979-12-13');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (99, 'Crystie', 'Ovendale', 'covendale2q@domainmarket.com', '+46 188 916 5149', '1977-10-26');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (100, 'Antonio', 'Considine', 'aconsidine2r@princeton.edu', '+93 485 614 2604', '1994-03-02');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (101, 'Domingo', 'Patten', 'dpatten2s@techcrunch.com', '+86 820 241 5980', '2003-04-18');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (102, 'Tracy', 'Fairlem', 'tfairlem2t@phpbb.com', '+44 407 112 1308', '1962-12-02');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (103, 'Yorke', 'Walsh', 'ywalsh2u@microsoft.com', '+234 658 666 3351', '1981-10-05');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (104, 'Charis', 'Olek', 'colek2v@army.mil', '+49 928 591 0697', '1993-10-07');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (105, 'Devina', 'Eagle', 'deagle2w@wunderground.com', '+86 356 417 8458', '1994-03-25');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (106, 'Dahlia', 'Eddis', 'deddis2x@tripod.com', '+998 893 146 5069', '1984-10-20');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (107, 'Rubin', 'Elsmore', 'relsmore2y@telegraph.co.uk', '+55 436 187 9452', '1993-09-24');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (108, 'Roth', 'Profit', 'rprofit2z@yahoo.com', '+86 377 268 9579', '1983-04-06');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (109, 'Jereme', 'Noar', 'jnoar30@imdb.com', '+86 348 334 5121', '1979-01-16');
insert into Client (ID, FirstName, LastName, Email, Phone, BirthDay) values (110, 'Hort', 'Garratt', 'hgarratt31@livejournal.com', '+86 316 224 9440', '1964-07-16');

SET IDENTITY_INSERT Client OFF;
