CREATE TABLE Departments (
      department_id INT auto_increment PRIMARY KEY,
      department_name VARCHAR(100)
    );
    
    CREATE TABLE Employees (
      employee_id INT auto_increment PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
INSERT INTO Departments (department_name) VALUES 
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('Research and Development'),
('Customer Service'),
('IT'),
('Product Management'),
('Operations'),
('Legal');

INSERT INTO Employees (name, age, department_id) VALUES 
('John Doe', 28, 1),
('Jane Smith', 32, 1),
('Alice Johnson', 29, 1),
('Chris Lee', 24, 2),
('David Kim', 30, 2),
('Emma Wilson', 35, 2),
('Liam Chen', 31, 3),
('Olivia Lopez', 26, 3),
('Benjamin Clark', 27, 3),
('Mia Wang', 22, 4),
('Mason Lewis', 33, 4),
('Sophia Hall', 36, 4),
('Ethan Young', 40, 5),
('Isabella Martinez', 25, 5),
('Jacob Moore', 23, 5),
('Michael Brown', 38, 6),
('Alexander Garcia', 29, 6),
('Emily Davis', 41, 6),
('James Wilson', 45, 7),
('Charlotte Thomas', 37, 7),
('Amelia Hernandez', 34, 7),
('Evelyn Jones', 28, 8),
('Harper Rodriguez', 31, 8),
('Abigail Lee', 30, 8),
('Elijah Perez', 27, 9),
('Noah Sanchez', 33, 9),
('William Patel', 29, 9),
('Lucas Wright', 28, 10),
('Henry King', 35, 10),
('Gabriel Scott', 30, 10);

select department_id, count(*) as employee_count
from employees
group by department_id
order by department_id;

select name, age, department_id
from employees
where age between 25 and 30;