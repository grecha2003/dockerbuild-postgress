CREATE TABLE test_table (
  name VARCHAR(10) NOT NULL CHECK (LENGTH(name) >= 4 AND LENGTH(name) <= 10),
  surname VARCHAR(255),
  city VARCHAR(255),
  age INT CHECK (age > 0 AND age <= 150)
);

-- Вставка данных в таблицу
INSERT INTO test_table (name, surname, city, age) VALUES 
('Alice', 'Smith', 'New York', 25),
('John', 'Doe', 'Los Angeles', 50),
('Michael', 'Brown', 'Chicago', 35),
('David', 'Wilson', 'Miami', 42),
('Kate', 'Johnson', 'Dallas', 31),
('Laura', 'Miller', 'Atlanta', 28),
('Emily', 'Davis', 'Houston', 27),
('Daniel', 'Garcia', 'Phoenix', 60),
('Sophia', 'Martinez', 'Philadelphia', 15),
('Matthew', 'Lopez', 'San Antonio', 45),
('Joshua', 'Gonzalez', 'San Diego', 33),
('Olivia', 'Hernandez', 'San Jose', 26),
('Nathan', 'Moore', 'Austin', 38),
('Samuel', 'Taylor', 'Jacksonville', 29),
('Jack', 'Anderson', 'San Francisco', 49),
('Henry', 'Thomas', 'Columbus', 40),
('Mason', 'Lee', 'Fort Worth', 22),
('Chloe', 'White', 'Indianapolis', 36),
('Ella', 'Walker', 'Charlotte', 24),
('James', 'Martinez', 'Seattle', 39);
