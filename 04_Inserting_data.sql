USE college;

-- Inserting multiple records into the students table
INSERT INTO students(name, email, age, city) VALUES
("Alice John", "alice@gmail.com", 22, "New York"),
("Bob Smith", "bobsmith@gmail.com", 24, "Los Angeles"),
("Charlie Brown", "brown@gmail.com", 21, "Chicago");

INSERT INTO students(full_name, email, age, city) VALUES
("Akash","akash@gmail.com",23,"Delhi"),
("Ravi","ravi@gmail.com",22,"Mumbai"),
("Sita","sita@gmail.com",20,"Bangalore"),
("Anita","anita@gmail.com",21,"Vizag"),
("Rahul","rahul@gmail.com",24,"Kadapa"),
("Riya","riya@gmail.com",22,"Hyderabad");



-- Inserting a single record into the students table
INSERT INTO students (name , email, age, city) VALUES ("Akhileswar", "akhil@gmail.com",20,"Hyderabad");


INSERT INTO students (student_id, name , email, age, city) VALUES (5, "Vishnu", "vishnu@gmail.com", 23, "Bangalore"),(6, "Deepak", "deepak@gmail.com", 22, "Mumbai");   

SELECT * FROM students;



-- Inserting records into the sales table
INSERT INTO sales VALUES
(1, "oil",2, 500.00),
(2, "bread",5, 150.00),
(3, "milk",3, 200.00),
(4, "eggs",12, 300.00),
(5, "butter",1, 250.00),
(6, "cheese",4, 600.00),
(7, "yogurt",6, 180.00);

SELECT * FROM sales;