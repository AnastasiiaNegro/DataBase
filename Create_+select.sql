CREATE TABLE people (person_id integer, first_name text, last_name text, address_id INTEGER, FOREIGN key (address_id) REFERENCES addresses (address_id), FOREIGN KEY (person_id) REFERENCES car (person_id));
CREATE table addresses (address_id INTEGER PRIMARY KEY, house_number VARCHAR (10), street VARCHAR (250), city VARCHAR (250), country VARCHAR (100), postal_code INTEGER);
CREATE TABLE car (person_id INTEGER PRIMARY KEY, name_car_creator text, model VARCHAR (100), number_car VARCHAR (100), FOREIGN KEY (person_id) REFERENCES people (person_id));
Insert into people (person_id, first_name, last_name, address_id) values  (1, 'Maria', 'Ivanova', 2);
Insert into people (person_id, first_name, last_name, address_id) values  (2, 'Alex', 'Ivanov', 2);
Insert into people (person_id, first_name, last_name, address_id) values  (3, 'Vadim', 'Rogalkin', 1);
Insert into people (person_id, first_name, last_name, address_id) values  (4, 'Vladimir', 'Rachkov', 3);
Insert into people (person_id, first_name, last_name, address_id) values  (5, 'Elen', 'Panphilova', 3);
INSERT INTO addresses (address_id, house_number, street, city, country, postal_code) VALUES (1, '77', 'Lenina', 'Gomel', 'BLR', 246000);
INSERT INTO addresses (address_id, house_number, street, city, country, postal_code) VALUES (2, '4', 'Katunina', 'Gomel', 'BLR', 246000);
INSERT INTO addresses (address_id, house_number, street, city, country, postal_code) VALUES (3, '14', 'Rogachovskaya', 'Gomel', 'BLR', 246000);
INSERT INTO car (person_id, name_car_creator, model, number_car) VALUES (1, "Volvo", 'S-4', 'EO5444-7');
INSERT INTO car (person_id, name_car_creator, model, number_car) VALUES (2, "ZAZ", 'LADA', 'EH1114-7');
INSERT INTO car (person_id, name_car_creator, model, number_car) VALUES (3, "Ford", 'Focus2018', 'PP9904-7');
INSERT INTO car (person_id, name_car_creator, model, number_car) VALUES (4, "Volvo", 'S-5', 'OT3517-7');




1.	SELECT first_name FROM people ORDER BY person_id DESC;
2.	SELECT number_car FROM car WHERE person_id = (SELECT person_id FROM people WHERE first_name = 'Maria');
3.	SELECT house_number, street, city, country, postal_code FROM addresses WHERE address_id = (SELECT address_id FROM people WHERE last_name LIKE 'I%');
