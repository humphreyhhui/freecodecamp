CREATE TABLE galaxy(galaxy_id SERIAL UNIQUE NOT NULL PRIMARY KEY);
CREATE TABLE star(star_id SERIAL UNIQUE NOT NULL PRIMARY KEY);
CREATE TABLE planet(planet_id SERIAL UNIQUE NOT NULL PRIMARY KEY);
CREATE TABLE moon(moon_id SERIAL UNIQUE NOT NULL PRIMARY KEY);

ALTER TABLE galaxy ADD COLUMN name VARCHAR(30) UNIQUE;
ALTER TABLE galaxy ADD COLUMN has_life BOOLEAN;
ALTER TABLE galaxy ADD COLUMN type TEXT;
ALTER TABLE galaxy ADD COLUMN distance_to_earth_ly NUMERIC(4,1) NOT NULL;
ALTER TABLE galaxy ADD COLUMN diameter_ly_millions INT NOT NULL;

INSERT INTO galaxy(name,has_life,type,distance_to_earth_ly,diameter_ly_millions) VALUES('Galaxy 1',True,'Spiral',100,1),('Galaxy 2',False,'Barred Spiral',200,2),('Galaxy 3',True,'Dwarf',300,3);
INSERT INTO galaxy(name,has_life,type,distance_to_earth_ly,diameter_ly_millions) VALUES('Galaxy 4',True,'Spiral',400,1),('Galaxy 5',False,'Barred Spiral',500,5),('Galaxy 6',True,'Dwarf',600,6);

ALTER TABLE star ADD COLUMN name VARCHAR(30) UNIQUE;
ALTER TABLE star ADD COLUMN type TEXT;
ALTER TABLE star ADD COLUMN age_millions INT NOT NULL;
ALTER TABLE star ADD COLUMN diameter_km_millions INT NOT NULL;
ALTER TABLE star ADD COLUMN galaxy_id INT;
ALTER TABLE star ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);

INSERT INTO star(name,type,age_millions,diameter_km_millions,galaxy_id) VALUES('Star 1','Red Dwarf',100,100,1),('Star 2','Red Giant',200,200,2),('Star 3','Supernova',300,300,3);
INSERT INTO star(name,type,age_millions,diameter_km_millions,galaxy_id) VALUES('Star 4','Red Dwarf',400,400,4),('Star 5','Red Giant',500,500,5),('Star 6','Supernova',600,600,6);


ALTER TABLE planet ADD COLUMN name VARCHAR(30) UNIQUE;
ALTER TABLE planet ADD COLUMN has_life BOOLEAN;
ALTER TABLE planet ADD COLUMN age_millions INT NOT NULL;
ALTER TABLE planet ADD COLUMN diameter_km_millions INT NOT NULL;
ALTER TABLE planet ADD COLUMN star_id INT;
ALTER TABLE planet ADD FOREIGN KEY (star_id) REFERENCES star(star_id);

INSERT INTO planet(name,has_life,age_millions,diameter_km_millions,star_id) VALUES('Planet 1',True,10,10,1),('Planet 2',True,20,20,1);
INSERT INTO planet(name,has_life,age_millions,diameter_km_millions,star_id) VALUES('Planet 3',True,30,30,2),('Planet 4',True,40,40,2);
INSERT INTO planet(name,has_life,age_millions,diameter_km_millions,star_id) VALUES('Planet 5',True,50,50,3),('Planet 6',True,60,60,3);
INSERT INTO planet(name,has_life,age_millions,diameter_km_millions,star_id) VALUES('Planet 7',True,70,70,4),('Planet 8',True,80,80,4);
INSERT INTO planet(name,has_life,age_millions,diameter_km_millions,star_id) VALUES('Planet 9',True,90,90,5),('Planet 10',True,100,100,5);
INSERT INTO planet(name,has_life,age_millions,diameter_km_millions,star_id) VALUES('Planet 11',True,110,110,6),('Planet 12',True,120,120,6);

ALTER TABLE moon ADD COLUMN name VARCHAR(30) UNIQUE;
ALTER TABLE moon ADD COLUMN dist_to_planet_km_mil INT NOT NULL;
ALTER TABLE moon ADD COLUMN diameter_in_km_mil INT NOT NULL;
ALTER TABLE moon ADD COLUMN planet_id INT;
ALTER TABLE moon ADD FOREIGN KEY (planet_id) REFERENCES planet(planet_id);

INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 1',1,1,1),('Moon 2',2,2,1);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 3',3,3,2),('Moon 4',4,4,2);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 5',5,5,3),('Moon 6',6,6,3);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 7',7,7,4),('Moon 8',8,8,4);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 9',9,9,5),('Moon 10',10,10,5);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 11',11,11,6),('Moon 12',12,12,6);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 13',13,13,7),('Moon 14',14,14,7);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 15',15,15,8),('Moon 16',16,16,8);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 17',17,17,9),('Moon 18',18,18,9);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 19',19,19,10),('Moon 20',20,20,10);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 21',21,21,11),('Moon 22',22,22,11);
INSERT INTO moon(name,dist_to_planet_km_mil,diameter_in_km_mil,planet_id) VALUES('Moon 23',23,23,12),('Moon 24',24,24,12);


CREATE TABLE asteroid(asteroid_id SERIAL UNIQUE NOT NULL PRIMARY KEY);
ALTER TABLE asteroid ADD COLUMN name VARCHAR(30) UNIQUE;
ALTER TABLE asteroid ADD COLUMN distance_to_planet INT NOT NULL;
ALTER TABLE asteroid ADD COLUMN diameter_km INT NOT NULL;
INSERT INTO asteroid(name,distance_to_planet,diameter_km) VALUES('Asteroid 1',100,1),('Asteroid 2',200,2),('Asteroid 3',300,3);
