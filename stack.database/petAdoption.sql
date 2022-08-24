CREATE DATABASE pet_adoption;

CREATE TABLE customers(
    id serial PRIMARY KEY NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email_addr VARCHAR(60) NOT NULL
);

INSERT INTO customers (first_name, last_name, email_addr) VALUES ('Nerissa', 'Grimmolby', 'ngrimmolby0@elegantthemes.com');
INSERT INTO customers (first_name, last_name, email_addr) VALUES ('Atlante', 'Swoffer', 'aswoffer1@webeden.co.uk');
INSERT INTO customers (first_name, last_name, email_addr) VALUES ('Emmalynne', 'Cattermole', 'ecattermole2@intel.com');
INSERT INTO customers (first_name, last_name, email_addr) VALUES ('Lorita', 'Hartas', 'lhartas3@alexa.com');

CREATE TABLE pets(
    id serial PRIMARY KEY NOT NULL,
    owner_id INTEGER REFERENCES customers(id),
    name VARCHAR(50) NOT NULL,
    age SMALLINT NOT NULL,
    breed VARCHAR(50) NOT NULL,
    type_of_pet VARCHAR(50) NOT NULL
);

INSERT INTO pets (owner_id, name, age, breed, type_of_pet) VALUES ('1', 'Squirrel', '5', 'Labrador Retrievers', 'dog');
INSERT INTO pets (owner_id, name, age, breed, type_of_pet) VALUES ('2', 'Aski', '14', 'Irish Setter', 'dog');
INSERT INTO pets (owner_id, name, age, breed, type_of_pet) VALUES ('3', 'Puss'1', y Cat', '8','Scottish Fold', 'cat');
INSERT INTO pets (owner_id,name, age, breed, type_of_pet) VALUES ('4', 'Daddy', '9','Abyssinian Guinea Pig', 'guinea pig');