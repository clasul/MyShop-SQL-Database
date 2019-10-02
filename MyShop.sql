CREATE DATABASE IF NOT EXISTS MyShop;
USE MyShop;

create table kategorie (
		id serial,
		name VARCHAR(255) not null,
		primary key(id)
		
		);

create table produkte (
		id serial,
        kategorie_id bigint unsigned,
        name varchar (255),
        preis varchar(255),
		primary key(id),
		foreign key (kategorie_id) references kategorie(id)
		on update cascade on delete cascade
		
		);
		
		
create table kunde (
		id serial, 
		Vorname VARCHAR(255) not null,
		Nachname VARCHAR(255) not null,
		Strasse VARCHAR(255) not null,
		PLZ CHAR(5) not null,
		Email VARCHAR(255) not null unique,
		password VARCHAR(255) not null,
		Telefon VARCHAR(255) not null,
		primary key(id)
		);
		

create table bestellungen (
		id serial,
        kunde_id bigint unsigned not null,
		primary key(id),
        foreign key(kunde_id) references kunde(id)
		
		);
        
insert into kunde (vorname, nachname, strasse, PLZ, email, password, telefon) 
values
("Marlon","Loretz", "Wettswilerstrasse 69", "8600", "moltgott@gmail.com", "ichbinplat123", "03284452"),
("Milliz","Mattsson", "Buckystrasse 3", "8014", "milliziscool@gmail.com", "goodpassword123", "0798459256"),
("James","Cairns", "Huzlenstrasse 69", "8007", "dwarfdudepcg@gmail.com", "loveplayingxcom123", "34535256"),
("Leo","Ferrari", "Wettswilerstrasse 70", "8600", "leoantsmith@gmail.com", "eurovision123", "426465478"),
("Kiran","Kratz", "Zelgstrasse 3", "8069", "kiran1@gmail.com", "imaingaren123", "0790790779"),
("Aurora","Gelsomino", "Josefsstrasse 7", "8005", "auroracathy@gmail.com", "billieeilish123", "0774981395"),
("Matvey","Lakonkin", "Siegestrasse 58", "8050", "st0rmr4id3r@gmail.com", "kommsiege123", "03284452");

insert into kategorie (name) 
values
("Aperture Gear"),
("Vocaloid Voicebanks"),
("Games")
;

insert into produkte (kategorie_id, name, preis) 
values
(1, "Portal Gun", 4000),
(1, "500ML Conversion Gel", 50),
(1, "Companion Cube", 1000),
(1, "500ML Repulsion Gel", 100),
(1, "500ML Propulsion Gel", 100),
(1, "500ML Cleansing Gel", 500),
(1, "Radio", 1),
(1, "Boots", 2000),
(1, "Sentry Turret", 2000),
(1, "Defective Turret", 1),
(1, "Frankenturret", 1),
(1, "Space core", 1),
(1, "Turret", 2000),
(2, "Hatsune Miku", 200),
(2, "Kagamine Rin", 200),
(2, "Kagamine Len", 2000),
(2, "Kaito", 200),
(2, "Gackpoid", 200),
(2, "VY2V3", 200),
(2, "Megurine Luka", 200),
(2, "Cyber Songman", 200),
(3, "Rust", 30),
(3, "Grand Theft Auto V", 60),
(3, "Project Diva X", 20000),
(3, "Osu", 0),
(3, "Overwatch", 30),
(3, "Portal", 10),
(3, "Portal 2", 15),
(3, "Half-Life", 10),
(3, "Half-Life 2", 20),
(3, "Stellaris", 30),
(3, "XCOM", 30),
(3, "Warhammer: Total War", 60),
(3, "Bully", 10),
(3, "Untitled Goose Game", 15),
(3, "Rust", 30),
(3, "Fortnite", 0)
;