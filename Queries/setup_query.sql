create database AcademyDb
go

use AcademyDb
go

create table Teachers (
	Id int primary key identity,
	Fullname nvarchar(200) not null,
)

insert into Teachers (Fullname) values ('Nancie Give');
insert into Teachers (Fullname) values ('Angela Crummy');
insert into Teachers (Fullname) values ('Rory Heady');
insert into Teachers (Fullname) values ('Mireielle Gretton');
insert into Teachers (Fullname) values ('Carlie Giacovetti');
insert into Teachers (Fullname) values ('Ginnie Sandle');
insert into Teachers (Fullname) values ('Lorine Honsch');
insert into Teachers (Fullname) values ('Angelita MacCathay');
insert into Teachers (Fullname) values ('Philly Stiling');
insert into Teachers (Fullname) values ('Briney Evert');
insert into Teachers (Fullname) values ('Anne Hughesdon');
insert into Teachers (Fullname) values ('Eloise De Cruce');
insert into Teachers (Fullname) values ('Amelina Francombe');
insert into Teachers (Fullname) values ('Mirilla Gullivent');
insert into Teachers (Fullname) values ('Fairleigh Kershow');
insert into Teachers (Fullname) values ('Bing Pennyman');
insert into Teachers (Fullname) values ('Marga Cleland');
insert into Teachers (Fullname) values ('Von Carnie');
insert into Teachers (Fullname) values ('Maighdiln Milkins');
insert into Teachers (Fullname) values ('Liv Canland');
insert into Teachers (Fullname) values ('Quincy Dregan');
insert into Teachers (Fullname) values ('Nancey Cluckie');
insert into Teachers (Fullname) values ('Karrie Scartifield');
insert into Teachers (Fullname) values ('Osborne Ranyelld');
insert into Teachers (Fullname) values ('Othello Allgood');
insert into Teachers (Fullname) values ('Natividad Luna');
insert into Teachers (Fullname) values ('Queenie Hissie');
insert into Teachers (Fullname) values ('Rudd Hoofe');
insert into Teachers (Fullname) values ('Dallon Prigg');
insert into Teachers (Fullname) values ('Rab Sainthill');
insert into Teachers (Fullname) values ('Elissa Stenbridge');
insert into Teachers (Fullname) values ('Ramona Fowler');
insert into Teachers (Fullname) values ('Margret Silberschatz');
insert into Teachers (Fullname) values ('Barnebas Chmarny');
go

create table Groups (
	Id int primary key identity,
	[Name] nvarchar(200) not null,
	TeacherId int foreign key references Teachers(Id)
)

insert into Groups (Name, TeacherId) values ('A1', 24);
insert into Groups (Name, TeacherId) values ('A2', 33);
insert into Groups (Name, TeacherId) values ('A3', 12);
insert into Groups (Name, TeacherId) values ('A4', 7);
insert into Groups (Name, TeacherId) values ('B1', 31);
insert into Groups (Name, TeacherId) values ('B2', 7);
insert into Groups (Name, TeacherId) values ('B3', 12);
insert into Groups (Name, TeacherId) values ('B4', 17);
insert into Groups (Name, TeacherId) values ('B5', 11);
insert into Groups (Name, TeacherId) values ('C1', 34);
insert into Groups (Name, TeacherId) values ('C2', 10);
insert into Groups (Name, TeacherId) values ('C3', 26);
insert into Groups (Name, TeacherId) values ('D1', 27);
insert into Groups (Name, TeacherId) values ('D2', 18);
insert into Groups (Name, TeacherId) values ('E1', 35);
insert into Groups (Name, TeacherId) values ('E2', 33);
insert into Groups (Name, TeacherId) values ('E3', 28);
go


create table Students (
	Id int primary key identity,
	FullName nvarchar(200) not null,
	GroupId int foreign key references Groups(Id)
)

insert into Students (Fullname, GroupId) values ('Lem Woloschinski', 1);
insert into Students (Fullname, GroupId) values ('Tisha Quakley', 11);
insert into Students (Fullname, GroupId) values ('Derron Wheelton', 9);
insert into Students (Fullname, GroupId) values ('Elvis Hammel', 13);
insert into Students (Fullname, GroupId) values ('Jeffie Shutler', 6);
insert into Students (Fullname, GroupId) values ('Glenn Cassidy', 9);
insert into Students (Fullname, GroupId) values ('Cassondra Bewicke', 11);
insert into Students (Fullname, GroupId) values ('Daphene Kemitt', 16);
insert into Students (Fullname, GroupId) values ('Saundra Redpath', 4);
insert into Students (Fullname, GroupId) values ('Anabal Chesnut', 4);
insert into Students (Fullname, GroupId) values ('Merrill Simper', 10);
insert into Students (Fullname, GroupId) values ('Miof mela Baseggio', 16);
insert into Students (Fullname, GroupId) values ('Dale Christin', 9);
insert into Students (Fullname, GroupId) values ('Terrel Gozzard', 7);
insert into Students (Fullname, GroupId) values ('Cathyleen Matlock', 6);
insert into Students (Fullname, GroupId) values ('Pepillo Benit', 16);
insert into Students (Fullname, GroupId) values ('Alikee Duplain', 7);
insert into Students (Fullname, GroupId) values ('Oby Assaf', 14);
insert into Students (Fullname, GroupId) values ('Shellie Andell', 2);
insert into Students (Fullname, GroupId) values ('Giovanna Rollo', 1);
insert into Students (Fullname, GroupId) values ('Winifred Bridgland', 1);
insert into Students (Fullname, GroupId) values ('Cristin Sheard', 6);
insert into Students (Fullname, GroupId) values ('Sharline Cooke', 13);
insert into Students (Fullname, GroupId) values ('Mable Plane', 16);
insert into Students (Fullname, GroupId) values ('Lane McSparran', 6);
insert into Students (Fullname, GroupId) values ('Vin Seid', 11);
insert into Students (Fullname, GroupId) values ('Gardner Bradie', 15);
insert into Students (Fullname, GroupId) values ('Colver Stollen', 2);
insert into Students (Fullname, GroupId) values ('Gage Lenaghen', 9);
insert into Students (Fullname, GroupId) values ('Mozes Bille', 6);
insert into Students (Fullname, GroupId) values ('Dionne Ingon', 13);
insert into Students (Fullname, GroupId) values ('Delmer De Giorgi', 15);
insert into Students (Fullname, GroupId) values ('Demetra Wheadon', 6);
insert into Students (Fullname, GroupId) values ('Waite Freckelton', 10);
insert into Students (Fullname, GroupId) values ('Virgil Fearneley', 2);
insert into Students (Fullname, GroupId) values ('Erinn Folland', 7);
insert into Students (Fullname, GroupId) values ('Madelene MacVanamy', 2);
insert into Students (Fullname, GroupId) values ('Ysabel Kollach', 10);
insert into Students (Fullname, GroupId) values ('Benedetto Kopfer', 12);
insert into Students (Fullname, GroupId) values ('Ketty Fradgley', 12);
insert into Students (Fullname, GroupId) values ('Marna Bassano', 4);
insert into Students (Fullname, GroupId) values ('Bobbee Given', 3);
insert into Students (Fullname, GroupId) values ('Christoffer Hannah', 6);
insert into Students (Fullname, GroupId) values ('Carlynn Partner', 13);
insert into Students (Fullname, GroupId) values ('Ashlie Clitheroe', 2);
insert into Students (Fullname, GroupId) values ('Kore Ganforthe', 4);
insert into Students (Fullname, GroupId) values ('Griz Kaszper', 1);
insert into Students (Fullname, GroupId) values ('Simona Rarity', 11);
insert into Students (Fullname, GroupId) values ('Mei Gresswood', 4);
insert into Students (Fullname, GroupId) values ('Hesther But', 1);
insert into Students (Fullname, GroupId) values ('Nicole Bleasdille', 8);
insert into Students (Fullname, GroupId) values ('Lanny Westpfel', 8);
insert into Students (Fullname, GroupId) values ('Umeko Bastistini', 4);
insert into Students (Fullname, GroupId) values ('Olav Winsor', 12);
insert into Students (Fullname, GroupId) values ('Baillie Duferie', 4);
insert into Students (Fullname, GroupId) values ('Marlo Kretschmer', 4);
insert into Students (Fullname, GroupId) values ('Leanor Andrzejowski', 2);
insert into Students (Fullname, GroupId) values ('Alistair Orth', 4);
insert into Students (Fullname, GroupId) values ('Aggie MacLure', 7);
insert into Students (Fullname, GroupId) values ('Reidar Endon', 13);
insert into Students (Fullname, GroupId) values ('Belicia Santorini', 2);
insert into Students (Fullname, GroupId) values ('Reese Frankom', 10);
insert into Students (Fullname, GroupId) values ('Gay Yashin', 10);
insert into Students (Fullname, GroupId) values ('Bernardo Simison', 13);
insert into Students (Fullname, GroupId) values ('Harwilll Hedworth', 7);
insert into Students (Fullname, GroupId) values ('Johnna Catton', 13);
insert into Students (Fullname, GroupId) values ('Ranice Mabbott', 16);
insert into Students (Fullname, GroupId) values ('Wini Mottley', 16);
insert into Students (Fullname, GroupId) values ('Emmy Farrance', 4);
insert into Students (Fullname, GroupId) values ('Jeno Galia', 7);
insert into Students (Fullname, GroupId) values ('Jeffrey Hartwright', 7);
insert into Students (Fullname, GroupId) values ('Ernesta Courcey', 9);
insert into Students (Fullname, GroupId) values ('Leeland Uren', 5);
insert into Students (Fullname, GroupId) values ('Sandie Hartless', 2);
insert into Students (Fullname, GroupId) values ('Ilyse Edgson', 8);
insert into Students (Fullname, GroupId) values ('Cassaundra Norster', 9);
insert into Students (Fullname, GroupId) values ('Zara Roser', 14);
insert into Students (Fullname, GroupId) values ('Enoch Densey', 7);
insert into Students (Fullname, GroupId) values ('Carline de Banke', 4);
insert into Students (Fullname, GroupId) values ('Giustino O''Growgane', 3);
insert into Students (Fullname, GroupId) values ('Quintina Menichi', 15);
insert into Students (Fullname, GroupId) values ('Gaspar Thickens', 7);
insert into Students (Fullname, GroupId) values ('Inglis Forrington', 14);
insert into Students (Fullname, GroupId) values ('Willi Maisey', 1);
insert into Students (Fullname, GroupId) values ('Wendell Cammis', 4);
insert into Students (Fullname, GroupId) values ('Charmion Bartczak', 12);
insert into Students (Fullname, GroupId) values ('Ashlan Jimeno', 1);
insert into Students (Fullname, GroupId) values ('Conway Headford', 12);
insert into Students (Fullname, GroupId) values ('Sawyer Burburough', 16);
insert into Students (Fullname, GroupId) values ('Gerome Mixture', 3);
insert into Students (Fullname, GroupId) values ('Isabelita Putnam', 8);
insert into Students (Fullname, GroupId) values ('Matilde MacKellar', 14);
insert into Students (Fullname, GroupId) values ('Christine Doniso', 9);
insert into Students (Fullname, GroupId) values ('Rafaellle Whatley', 14);
insert into Students (Fullname, GroupId) values ('Javier Alexander', 15);
insert into Students (Fullname, GroupId) values ('Adaline Leyre', 9);
insert into Students (Fullname, GroupId) values ('Jeanette Pauley', 14);
insert into Students (Fullname, GroupId) values ('Brannon Minnis', 6);
insert into Students (Fullname, GroupId) values ('Aidan Phittiplace', 12);
insert into Students (Fullname, GroupId) values ('Lorna Jordin', 4);
insert into Students (Fullname, GroupId) values ('Tracey Laible', 8);
insert into Students (Fullname, GroupId) values ('Abbe Phythien', 3);
insert into Students (Fullname, GroupId) values ('Kendre Drinkhall', 16);
insert into Students (Fullname, GroupId) values ('Jonathan Duinbleton', 6);
insert into Students (Fullname, GroupId) values ('Ardella Heaford', 3);
insert into Students (Fullname, GroupId) values ('Nonah Romain', 15);
insert into Students (Fullname, GroupId) values ('Lilli Dumbelton', 11);
insert into Students (Fullname, GroupId) values ('Maryjo Ben', 1);
insert into Students (Fullname, GroupId) values ('Jolene Lush', 13);
insert into Students (Fullname, GroupId) values ('Ritchie Suermeiers', 2);
insert into Students (Fullname, GroupId) values ('Walt Hilhouse', 13);
insert into Students (Fullname, GroupId) values ('Carmel Drawmer', 1);
insert into Students (Fullname, GroupId) values ('Ailsun Print', 6);
insert into Students (Fullname, GroupId) values ('Harmonie Landeaux', 5);
insert into Students (Fullname, GroupId) values ('Sharyl Geroldi', 10);
insert into Students (Fullname, GroupId) values ('Pen Morant', 8);
insert into Students (Fullname, GroupId) values ('Emmey Dransfield', 3);
insert into Students (Fullname, GroupId) values ('Mirilla Statersfield', 6);
insert into Students (Fullname, GroupId) values ('Cazzie Grinin', 6);
insert into Students (Fullname, GroupId) values ('Gillian Heistermann', 7);
insert into Students (Fullname, GroupId) values ('Chaunce Fildery', 2);
insert into Students (Fullname, GroupId) values ('Kore Ryles', 16);
insert into Students (Fullname, GroupId) values ('Iggy Northall', 5);
insert into Students (Fullname, GroupId) values ('Gayelord Hebborn', 2);
insert into Students (Fullname, GroupId) values ('Chucho Beilby', 4);
insert into Students (Fullname, GroupId) values ('Liam Burnham', 12);
insert into Students (Fullname, GroupId) values ('Raynor Brisland', 15);
insert into Students (Fullname, GroupId) values ('Ailsun Redhouse', 5);
insert into Students (Fullname, GroupId) values ('Kylynn Masser', 1);
insert into Students (Fullname, GroupId) values ('Myranda Burris', 1);
insert into Students (Fullname, GroupId) values ('Terri Deppe', 4);
insert into Students (Fullname, GroupId) values ('Nance Ashingden', 5);
insert into Students (Fullname, GroupId) values ('Talia Quemby', 3);
insert into Students (Fullname, GroupId) values ('Page Devonshire', 11);
insert into Students (Fullname, GroupId) values ('Ingeberg Leppard', 2);
insert into Students (Fullname, GroupId) values ('Clevie Brettoner', 8);
insert into Students (Fullname, GroupId) values ('Harp Quiddinton', 2);
insert into Students (Fullname, GroupId) values ('Rosette Learmount', 9);
insert into Students (Fullname, GroupId) values ('Adella Coster', 2);
insert into Students (Fullname, GroupId) values ('Halette Allman', 7);
insert into Students (Fullname, GroupId) values ('Vinnie Scarce', 1);
insert into Students (Fullname, GroupId) values ('Iggy Ewen', 7);
insert into Students (Fullname, GroupId) values ('Birdie Zimmer', 7);
insert into Students (Fullname, GroupId) values ('Marsha Fronzek', 6);
insert into Students (Fullname, GroupId) values ('Madelaine Lloyd', 16);
insert into Students (Fullname, GroupId) values ('Sharia Wrangle', 12);
insert into Students (Fullname, GroupId) values ('Alaric Aikin', 8);
insert into Students (Fullname, GroupId) values ('Mireille Kildahl', 11);
insert into Students (Fullname, GroupId) values ('Glenda Sicily', 10);
insert into Students (Fullname, GroupId) values ('Perceval Pigden', 5);
insert into Students (Fullname, GroupId) values ('Kristal Bagniuk', 3);
insert into Students (Fullname, GroupId) values ('Sonnnie McGillacoell', 16);
insert into Students (Fullname, GroupId) values ('Ree Lucchi', 12);
insert into Students (Fullname, GroupId) values ('Melba Iacopetti', 8);
insert into Students (Fullname, GroupId) values ('Aggy Baxstare', 6);
insert into Students (Fullname, GroupId) values ('Iormina Wallwork', 6);
insert into Students (Fullname, GroupId) values ('Elisa Brister', 10);
insert into Students (Fullname, GroupId) values ('Fancie Skillanders', 15);
insert into Students (Fullname, GroupId) values ('Zolly Huthart', 10);
insert into Students (Fullname, GroupId) values ('Sal Filochov', 8);
insert into Students (Fullname, GroupId) values ('Colin Clipsham', 2);
insert into Students (Fullname, GroupId) values ('Collete Major', 7);
insert into Students (Fullname, GroupId) values ('Riley Warrington', 3);
insert into Students (Fullname, GroupId) values ('Barny Gainsbury', 12);
insert into Students (Fullname, GroupId) values ('Maribelle holmes', 11);
insert into Students (Fullname, GroupId) values ('Hewe Hanhard', 1);
insert into Students (Fullname, GroupId) values ('Crosby Swalough', 2);
insert into Students (Fullname, GroupId) values ('Thor Pahler', 7);
insert into Students (Fullname, GroupId) values ('Milli Kwietek', 16);
insert into Students (Fullname, GroupId) values ('Jud Gorcke', 6);
insert into Students (Fullname, GroupId) values ('Isadore Frankiewicz', 6);
insert into Students (Fullname, GroupId) values ('Timmie Antyshev', 9);
insert into Students (Fullname, GroupId) values ('Tobias Cuesta', 12);
insert into Students (Fullname, GroupId) values ('Sylvan Titchen', 13);
insert into Students (Fullname, GroupId) values ('Luis Wabe', 2);
insert into Students (Fullname, GroupId) values ('Raoul Dragge', 13);
insert into Students (Fullname, GroupId) values ('Charis Lemarie', 16);
insert into Students (Fullname, GroupId) values ('Crissy Wick', 10);
insert into Students (Fullname, GroupId) values ('Stefania Overy', 9);
insert into Students (Fullname, GroupId) values ('Mariellen Jans', 7);
insert into Students (Fullname, GroupId) values ('Augusto Rabbe', 7);
insert into Students (Fullname, GroupId) values ('Husain Perigo', 2);
insert into Students (Fullname, GroupId) values ('Paolo Atlay', 10);
insert into Students (Fullname, GroupId) values ('Cacilia Quilleash', 4);
insert into Students (Fullname, GroupId) values ('Kaila Fuster', 10);
insert into Students (Fullname, GroupId) values ('Pavla Northin', 16);
insert into Students (Fullname, GroupId) values ('Jorie Shillabear', 4);
insert into Students (Fullname, GroupId) values ('Camila Ducastel', 14);
insert into Students (Fullname, GroupId) values ('Gale Huton', 16);
insert into Students (Fullname, GroupId) values ('Danie Townley', 12);
insert into Students (Fullname, GroupId) values ('Katlin Vanes', 3);
insert into Students (Fullname, GroupId) values ('Jessalin Durant', 16);
insert into Students (Fullname, GroupId) values ('Beckie Haffner', 12);
insert into Students (Fullname, GroupId) values ('Corbie Orwin', 6);
insert into Students (Fullname, GroupId) values ('Hubey Kearley', 12);
insert into Students (Fullname, GroupId) values ('Robena Farnell', 1);
insert into Students (Fullname, GroupId) values ('Corie Seiler', 7);
insert into Students (Fullname, GroupId) values ('Benedikta Hulburd', 9);
insert into Students (Fullname, GroupId) values ('Alvira Nobriga', 8);
insert into Students (Fullname, GroupId) values ('Gib Fairbank', 13);
insert into Students (Fullname, GroupId) values ('Esme Welldrake', 3);
insert into Students (Fullname, GroupId) values ('Deina Nichol', 11);
insert into Students (Fullname, GroupId) values ('Amy Plinck', 2);
insert into Students (Fullname, GroupId) values ('Sam Francois', 12);
insert into Students (Fullname, GroupId) values ('Portia Hamner', 8);
insert into Students (Fullname, GroupId) values ('Brandie Fookes', 8);
insert into Students (Fullname, GroupId) values ('Kurtis Davydenko', 7);
insert into Students (Fullname, GroupId) values ('Jarrod Raylton', 7);
insert into Students (Fullname, GroupId) values ('Sarina Satterley', 13);
insert into Students (Fullname, GroupId) values ('Aigneis Bohlsen', 1);
insert into Students (Fullname, GroupId) values ('Simeon Whyffen', 6);
insert into Students (Fullname, GroupId) values ('Tripp Stables', 3);
insert into Students (Fullname, GroupId) values ('Frants Ledbetter', 15);
insert into Students (Fullname, GroupId) values ('Jorie Fishpool', 7);
insert into Students (Fullname, GroupId) values ('Adele Pohlke', 9);
insert into Students (Fullname, GroupId) values ('Troy Iacoviello', 7);
insert into Students (Fullname, GroupId) values ('Brina Dennerley', 5);
insert into Students (Fullname, GroupId) values ('Bowie Baggott', 13);
insert into Students (Fullname, GroupId) values ('Stanislaus Crann', 15);
insert into Students (Fullname, GroupId) values ('Dorotea Curley', 15);
insert into Students (Fullname, GroupId) values ('Shea Ketchell', 8);
insert into Students (Fullname, GroupId) values ('Merrilee Papierz', 9);
insert into Students (Fullname, GroupId) values ('Faye Tutin', 15);
insert into Students (Fullname, GroupId) values ('Yank Gayton', 2);
insert into Students (Fullname, GroupId) values ('Shurlocke Twort', 16);
insert into Students (Fullname, GroupId) values ('Rosabel Tieman', 13);
insert into Students (Fullname, GroupId) values ('Rena Bliven', 11);
insert into Students (Fullname, GroupId) values ('Christalle Borrington', 2);
insert into Students (Fullname, GroupId) values ('Jamie McKain', 16);
insert into Students (Fullname, GroupId) values ('Leeland Hodgen', 3);
insert into Students (Fullname, GroupId) values ('Drud Giral', 12);
insert into Students (Fullname, GroupId) values ('Bord O''Rudden', 10);
insert into Students (Fullname, GroupId) values ('Rutger Longland', 14);
insert into Students (Fullname, GroupId) values ('Sammy Hackforth', 14);
insert into Students (Fullname, GroupId) values ('Evyn Shallo', 2);
insert into Students (Fullname, GroupId) values ('Weber Iwanicki', 12);
insert into Students (Fullname, GroupId) values ('Teresina Andriveaux', 2);
insert into Students (Fullname, GroupId) values ('Riannon Mellmoth', 16);
insert into Students (Fullname, GroupId) values ('Debi Pluvier', 9);
insert into Students (Fullname, GroupId) values ('Stella Pride', 14);
insert into Students (Fullname, GroupId) values ('Clara Timbs', 12);
insert into Students (Fullname, GroupId) values ('Ivan Pembridge', 11);
insert into Students (Fullname, GroupId) values ('Kariotta Pilmer', 11);
insert into Students (Fullname, GroupId) values ('Tome Klossmann', 14);
insert into Students (Fullname, GroupId) values ('Enid Borg-Bartolo', 11);
insert into Students (Fullname, GroupId) values ('Ardelia Brimm', 5);
insert into Students (Fullname, GroupId) values ('Aldus Fitzhenry', 6);
insert into Students (Fullname, GroupId) values ('Willdon Struis', 5);
insert into Students (Fullname, GroupId) values ('Timmie Zanni', 10);
insert into Students (Fullname, GroupId) values ('Charmaine Algeo', 6);
insert into Students (Fullname, GroupId) values ('Hilarius Simla', 12);
insert into Students (Fullname, GroupId) values ('Sofie Extill', 3);
insert into Students (Fullname, GroupId) values ('Wyndham Owbrick', 7);
insert into Students (Fullname, GroupId) values ('Austine Eshelby', 13);
insert into Students (Fullname, GroupId) values ('Carey Cutcliffe', 10);
insert into Students (Fullname, GroupId) values ('Stanwood Deason', 2);
insert into Students (Fullname, GroupId) values ('Robert Waberer', 10);
insert into Students (Fullname, GroupId) values ('Karylin Walczak', 14);
insert into Students (Fullname, GroupId) values ('Karen Lethibridge', 9);
insert into Students (Fullname, GroupId) values ('Cherise McKibben', 15);
insert into Students (Fullname, GroupId) values ('Sheffie Elward', 12);
insert into Students (Fullname, GroupId) values ('Pall Kupisz', 12);
insert into Students (Fullname, GroupId) values ('Luther Burgan', 7);
insert into Students (Fullname, GroupId) values ('Julian Scane', 15);
insert into Students (Fullname, GroupId) values ('Radcliffe Shellibeer', 13);
insert into Students (Fullname, GroupId) values ('Krishnah Mallord', 13);
insert into Students (Fullname, GroupId) values ('Ettie Loveland', 11);
insert into Students (Fullname, GroupId) values ('Silva Coping', 13);
insert into Students (Fullname, GroupId) values ('Coriss Heggadon', 14);
insert into Students (Fullname, GroupId) values ('Sal Whyberd', 4);
insert into Students (Fullname, GroupId) values ('Conrado Winfred', 16);
insert into Students (Fullname, GroupId) values ('Evelyn Petrik', 4);
insert into Students (Fullname, GroupId) values ('Ellynn Doog', 11);
insert into Students (Fullname, GroupId) values ('Shanie Fronczak', 10);
insert into Students (Fullname, GroupId) values ('Troy Waszczyk', 2);
insert into Students (Fullname, GroupId) values ('Morley Ramm', 11);
insert into Students (Fullname, GroupId) values ('Rolf Raynor', 8);
insert into Students (Fullname, GroupId) values ('Michael Luckie', 15);
insert into Students (Fullname, GroupId) values ('Pierson Strangwood', 11);
insert into Students (Fullname, GroupId) values ('Abbie Persey', 14);
insert into Students (Fullname, GroupId) values ('Tad Maccraw', 6);
insert into Students (Fullname, GroupId) values ('Simmonds Purdon', 15);
insert into Students (Fullname, GroupId) values ('Raimund Picton', 6);
insert into Students (Fullname, GroupId) values ('Grannie Thaw', 14);
insert into Students (Fullname, GroupId) values ('Quintin Rispin', 13);
insert into Students (Fullname, GroupId) values ('Krishnah Burchett', 5);
insert into Students (Fullname, GroupId) values ('Tedie Georgeon', 13);
insert into Students (Fullname, GroupId) values ('Rolfe Klaessen', 12);
insert into Students (Fullname, GroupId) values ('Iona Beddow', 3);
go