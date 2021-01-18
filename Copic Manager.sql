CREATE DATABASE IF NOT EXISTS CopicManager;
USE CopicManager;

create table pentypes (
		id serial,
		name VARCHAR(255) not null,
        description VARCHAR (255) not null,
		primary key(id)
		);
        
create table colorgrouptypes (
		id serial,
		name VARCHAR(255) not null,
        description VARCHAR (255) not null,
		primary key(id)
		);

create table mypens (
		pen_id serial,   
        pentype VARCHAR(255),
        number VARCHAR(5),
        colorgroup VARCHAR(255),
		primary key(pen_id)
		);
		

insert into pentypes (name, description) 
values
("Ciao", "Brush tip, cheaper alternative to Sketch, less ink"),
("Sketch", "Brush tip pen"),
("Classic", "Standard tip pen"),
("Wide", "Super wide pen nib, good for calligraphy and the like")
;

insert into colorgrouptypes (name, description) 
values
("E", "EARTH"),
("BG", "BLUE GREEN"),
("B", "BLUE"),
("BV", "BLUE VIOLET"),
("V", "VIOLET"),
("RV", "RED VIOLET"),
("R", "RED"),
("YR", "YELLOW RED"),
("Y", "YELLOW"),
("YG", "YELLOW GREEN"),
("G", "GREEN"),
("F", "FLUORESCENT"),
("W", "WARM GRAY"),
("C", "COOL GRAY"),
("N", "NEUTRAL GRAY"),
("T", "TONER GRAY")
;

insert into mypens (pentype, number, colorgroup) 
values
("Sketch", "0", "COLORLESS BLENDER"),
("Sketch", "R14", "RED"),
("Sketch", "E93", "EARTH"),
("Sketch", "B04", "BLUE"),
("Sketch", "R05", "RED"),
("Sketch", "R39", "RED"),
("Sketch", "R22", "RED"),
("Sketch", "R02", "RED"),
("Sketch", "R01", "RED"),
("Sketch", "R00", "RED"),
("Ciao", "R20", "RED"),
("Sketch", "RV25", "RED VIOLET"),
("Sketch", "RV09", "RED VIOLET"),
("Sketch", "RV66", "RED VIOLET"),
("Sketch", "RV14", "RED VIOLET"),
("Sketch", "RV17", "RED VIOLET"),
("Sketch", "RV04", "RED VIOLET"),
("Sketch", "RV21", "RED VIOLET"),
("Sketch", "E00", "EARTH"),
("Sketch", "E02", "EARTH"),
("Sketch", "E17", "EARTH"),
("Sketch", "E19", "EARTH"),
("Sketch", "E43", "EARTH"),
("Sketch", "E18", "EARTH"),
("Sketch", "E77", "EARTH"),
("Sketch", "V04", "VIOLET"),
("Sketch", "V17", "VIOLET"),
("Ciao", "V91", "VIOLET"),
("Sketch", "BV02", "BLUE VIOLET"),
("Sketch", "BV04", "BLUE VIOLET"),
("Classic", "B02", "BLUE"),
("Sketch", "B00", "BLUE"),
("Sketch", "B16", "BLUE"),
("Sketch", "BG32", "BLUE GREEN"),
("Sketch", "G28", "GREEN"),
("Sketch", "G21", "GREEN"),
("Sketch", "YG05", "YELLOW GREEN"),
("Sketch", "BG32", "BLUE GREEN"),
("Sketch", "Y13", "YELLOW"),
("Sketch", "YR14", "YELLOW RED"),
("Sketch", "C7", "COOL GRAY"),
("Sketch", "C4", "COOL GRAY"),
("Sketch", "C3", "COOL GRAY"),
("Sketch", "C5", "COOL GRAY"),
("Sketch", "C2", "COOL GRAY"),
("Classic", "C9", "COOL GRAY")

;