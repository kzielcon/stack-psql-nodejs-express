
-- From the table above, Using a subquery, list the name of the employees, paid less than 'Jake' from the employee's table.
-- Note there are multiple 'Jakes' in the dataset pick the 'Jake' with the highest salary.
-- In your SQL file include the queries and output.CREATE DATABASE subQueriesExercise;

CREATE TABLE(
    id serial PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary INT NOT NULL
)

INSERT INTO employee (first_name, last_name, salary)
VALUES ('Tj', 'Olson', '50000');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Steven', 'Markle', '30000');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Jake', 'The Dog', '3002');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Jake', 'The Dog', '3002');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Fin', 'The Human', '300002');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Alexander', 'The great', '320');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Son', 'Goku', '30000');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Tj', 'Olsones', '4550000');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Steven', 'Markleses', '530000');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Jake', 'The Dog 4', '300222');
INSERT INTO employee (first_name, last_name, salary)
VALUES ('Jake', 'The Dog 3', '3002');

-- first name | last_name | salary
-- Tj          Olson        50000
-- Steven      Markle       30000
-- Jake        The Dog      3002
-- Jake        The Dog      3002
-- Fin         The Human    300002
-- Alexander   The great    320
-- Son         Goku         30000
-- Tj          Olsones      4550000
-- Steven      Markleses    530000
-- Jake        The Dog 4    300222
-- Jake        The Dog 3    3002

SELECT * FROM employee
WHERE salary < (
SELECT MAX (salary) FROM employee
WHERE first_name = 'Jake'
);

-- first name | last_name | salary
-- Tj          Olson        50000
-- Steven      Markle       30000
-- Jake        The Dog      3002
-- Jake        The Dog      3002
-- Fin         The Human    300002
-- Alexander   The great    320
-- Son         Goku         30000
-- Jake        The Dog 3    3002