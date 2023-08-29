CREATE DATABASE cars;
USE cars;

CREATE TABLE car 
(
	id INT UNSIGNED UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
    make VARCHAR(45),
    model VARCHAR(45),
    year INT(4),
    deleted_flag TINYINT(1) ZEROFILL UNSIGNED NOT NULL
);

SELECT * FROM car;

ALTER TABLE car
MODIFY make VARCHAR(45) NOT NULL;

ALTER TABLE car 
MODIFY model VARCHAR(45) NOT NULL;

ALTER TABLE car
MODIFY year INT NOT NULL;

SELECT * FROM cars;

INSERT INTO car (make, model, year, deleted_flag)
VALUES ('Ford', 'Ranger', 1998, 0),
	   ('Chevrolet', 'Bel Air', 1957, 0),
	   ('Honda', 'Civic', 2020, 0),
       ('Ford', 'Mustang', 2018, 0),
       ('Chevrolet', 'Impala', 2016, 0),
       ('Nissan', 'Altima', 2019, 0);
       

  ALTER TABLE car
  ALTER deleted_flag SET DEFAULT 0;
