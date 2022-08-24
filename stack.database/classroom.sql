CREATE DATABASE classroom;

CREATE TABLE subjects(
    id serial PRIMARY KEY NOT NULL,
    subject_name VARCHAR(60) NOT NULL
);

INSERT INTO subjects (subject_name) VALUES ('Science'), ('Math'), ('Spanish'), ('Literature'), ('Filipino');


CREATE TABLE teachers(
    id serial PRIMARY KEY NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email_addr VARCHAR (60)
);


INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Jennette', 'Frissell', 'jfrissell0@vimeo.com');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Bernardina', 'Keeler', 'bkeeler1@ucoz.ru');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Nana', 'Reichardt', 'nreichardt2@psu.edu');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Tarrance', 'Dradey', 'tdradey3@webmd.com');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Aubert', 'Balmann', 'abalmann4@mashable.com');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Pooh', 'Calderon', 'pcalderon5@tiny.cc');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Allissa', 'McCullough', 'amccullough6@unicef.org');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Huey', 'Debrick', 'hdebrick7@creativecommons.org');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Maurita', 'Brent', 'mbrent8@networksolutions.com');
INSERT INTO teachers (first_name, last_name, email_addr) VALUES ('Emelen', 'Lapham', 'elapham9@yale.edu');

CREATE TABLE students(
    id serial PRIMARY KEY NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    year_level VARCHAR(60) NOT NULL,
    date_of_birth DATE NOT NULL
);

INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Reeba', 'Mooring', 'rmooring0@jimdo.com', '6/14/1998');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Pall', 'Sibylla', 'psibylla1@aboutads.info', '2/11/1987');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Kinna', 'Chiechio', 'kchiechio2@amazon.co.jp', '6/16/1995');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Bryanty', 'Cutmore', 'bcutmore3@vkontakte.ru', '12/19/1991');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Martainn', 'Tosdevin', 'mtosdevin4@chron.com', '2/12/2000');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Laurice', 'Allman', 'lallman5@mayoclinic.com', '10/2/1986');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Jenda', 'Kareman', 'jkareman6@goo.gl', '9/5/1987');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Catrina', 'Oake', 'coake7@nba.com', '12/12/1989');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Adolpho', 'Maidlow', 'amaidlow8@springer.com', '7/9/1987');
INSERT INTO students (first_name, last_name, year_level, date_of_birth) VALUES ('Maggee', 'Treneman', 'mtreneman9@tiny.cc', '1/16/1993');

CREATE TABLE class(
    id serial PRIMARY KEY NOT NULL,
    classname VARCHAR(60) NOT NULL,
    subject_id INTEGER REFERENCES subjects(id),
    tchr_id INTEGER REFERENCES teachers(id)
);

CREATE TABLE class_students (
    id serial PRIMARY KEY NOT NULL,
    class_id INTEGER REFERENCES class(id),
    students_id INTEGER REFERENCES students(id)
);
