CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(id)
);

create table trainers(
id int primary key
);

alter table Members
add column WorkoutSession time;

INSERT INTO Members (id, name, age, WorkoutSession) VALUES 
(1, 'John Smith', 28, '09:00:00'),
(2, 'Maria Garcia', 32, '06:30:00'),
(3, 'Chen Wei', 24, '10:00:00'),
(4, 'Olivia Jones', 27, '07:15:00'),
(5, 'Lucas Brown', 31, '05:45:00'),
(6, 'Emily White', 26, '08:00:00'),
(7, 'Ethan Taylor', 35, '18:00:00'),
(8, 'Isabella Wilson', 22, '20:00:00'),
(9, 'Mia Johnson', 30, '19:00:00'),
(10, 'Noah Miller', 29, '17:30:00');

delete from Members where id = 1;

select * from members;
