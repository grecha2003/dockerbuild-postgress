CREATE TABLE test_table (
  name VARCHAR(10) NOT NULL CHECK (char_length(name) >= 4 AND char_length(name) <= 10),
  surname VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  age INT NOT NULL CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('John', 'Doe', 'New York', 28),
('Alice', 'Johnson', 'Los Angeles', 34),
('Bob', 'Smith', 'Chicago', 45),
('Tom', 'Brown', 'Houston', 23),
('Jerry', 'Miller', 'Phoenix', 57),
('Anna', 'Davis', 'Philadelphia', 42),
('Mike', 'Garcia', 'San Antonio', 49),
('Chris', 'Martinez', 'San Diego', 38),
('Paul', 'Hernandez', 'Dallas', 51),
('Lucy', 'Lopez', 'San Jose', 29),
('Megan', 'Gonzalez', 'Austin', 36),
('Nancy', 'Wilson', 'Fort Worth', 33),
('David', 'Anderson', 'Jacksonville', 27),
('Kevin', 'Thomas', 'Columbus', 44),
('Diana', 'Taylor', 'Charlotte', 21),
('Oscar', 'Moore', 'Indianapolis', 30),
('Cara', 'Jackson', 'San Francisco', 35),
('Lisa', 'White', 'Seattle', 26),
('Eva', 'Harris', 'Denver', 37),
('Andy', 'Martin', 'Boston', 25);
