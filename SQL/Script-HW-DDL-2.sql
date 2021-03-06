create table employees (
id serial primary key,
employee_name varchar(50) not null
);

insert into employees (employee_name) values ('Акимов Фёдор Тимофеевич'), ('Александров Михаил Даниилович'),('Алексеева Кира Ильинична'),
('Архипова Кира Александровна'),('Баранов Фёдор Егорович'),('Баранов Артём Станиславович'),
('Беляков Матвей Александрович'),('Березина Екатерина Матвеевна'),('Борисова Юлия Егоровна'),
('Борисова Екатерина Артёмовна'),('Быкова Александра Артёмовна'),('Вишневский Артём Никитич'),
('Волков Марк Даниилович'),('Воробьева Валерия Матвеевна'),('Глебов Дмитрий Максимович'),
('Давыдова Анастасия Александровна'),('Егоров Никита Александрович'),('Егорова Мирослава Никитична'),
('Жарова Ульяна Леоновна'),('Зайцев Фёдор Артёмович'),('Зайцева Мария Ивановна'),
('Иванов Кирилл Глебович'),('Иванова Надежда Юрьевна'),('Ильин Артемий Романович'),
('Исаева Василиса Ильинична'),('Калачев Андрей Ильич'),('Калмыкова Полина Артёмовна'),
('Капустин Даниил Дмитриевич'),('Кириллова Анастасия Данииловна'),('Клюева Евгения Максимовна'),
('Ковалева Ульяна Кирилловна'),('Кононова Милана Михайловна'),('Копылов Михаил Филиппович'),
('Кочергин Яков Владимирович'),('Кудрявцев Андрей Александрович'),('Кудряшов Егор Андреевич'),
('Кузнецов Иван Григорьевич'),('Леонов Роман Григорьевич'),('Леонова Анна Ивановна'),
('Литвинов Глеб Степанович'),('Лукина Милана Матвеевна'),('Лукьянова Мария Ильинична'),
('Макеева Елизавета Фёдоровна'),('Максимов Егор Фёдорович'),('Маслова Екатерина Тимуровна'),
('Михайлова Дарья Максимовна'),('Моисеев Владимир Владиславович'),('Моисеева Ева Сергеевна'),
('Молчанов Никита Макарович'),('Москвин Степан Всеволодович'),('Мухина Александра Демидовна'),
('Никитина Варвара Елисеевна'),('Никитина Татьяна Артемьевна'),('Никитина Яна Константиновна'),
('Новиков Иван Егорович'),('Новикова Анна Семёновна'),('Носова Полина Львовна'),
('Орлова Ульяна Фёдоровна'),('Орлова Алиса Александровна'),('Павлов Владимир Максимович'),
('Павлов Фёдор Александрович'),('Панова Лидия Степановна'),('Панова Диана Фёдоровна'),
('Петров Максим Романович'),('Петров Андрей Егорович'),('Петрова Варвара Михайловна'),
('Платонова Любовь Романовна'),('Попова Александра Матвеевна'),('Романов Григорий Фёдорович'),
('Романова Алиса Николаевна'),('Рубцов Сергей Павлович'),('Рыбаков Кирилл Даниилович'),
('Рябов Роман Савельевич'),('Семенов Макар Тимофеевич'),('Синицына Вероника Петровна'),
('Скворцова Анна Андреевна'),('Соколов Владимир Алексеевич'),('Соловьева София Максимовна'),
('Сорокина Ева Кирилловна'),('Сухов Евгений Дмитриевич'),('Титов Яков Фёдорович'),
('Титов Владимир Кириллович'),('Тихонов Тимур Максимович'),('Трофимов Тимофей Елисеевич'),
('Уткин Иван Романович'),('Фадеева Екатерина Ильинична'),('Федорова Мария Марковна'),
('Федосеева Анастасия Вячеславовна'),('Фетисов Александр Алексеевич'),('Фетисов Илья Макарович'),
('Филатов Арсений Тимофеевич'),('Филимонов Гордей Дмитриевич'),('Хохлов Григорий Андреевич'),
('Царев Даниил Георгиевич'),('Шевелева Анна Максимовна'),('Ширяев Даниил Артёмович'),
('Шишкина Екатерина Марковна'),('Шувалова Кира Николаевна'),('Щербакова Анастасия Алексеевна'),
('Яковлев Марк Иванович');


create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary (monthly_salary) values (1000),(1100),(1200),(1300),
(1400),(1500),(1600),(1700),(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id, salary_id) values (3,7),
(1,4),(5,9),(40,13),(23,4),(11,2),(52,10),(15,13),(26,4),(16,1),
(33,7),(13,7),(2,4),(50,9),(4,13),(6,4),(7,2),(8,10),(9,13),(10,4),
(28,7),(29,4),(30,9),(31,13),(32,4),(34,2),(35,10),(36,13),(37,4),(38,1),
(39,7),(49,4),(41,9),(42,13),(43,4),(44,2),(45,10),(46,13),(47,4),(48,1);

insert into employee_salary (employee_id, salary_id) values
(120,7),(119,4),(118,9),(117,13),(116,4),(115,2),(114,10),(113,13),(112,4),(111,1);


create table roles (
id serial primary key,
role_name int not null unique
);

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

Insert into roles (role_name) values ('Junior Python developer'),('Middle Python developer'),('Senior Python developer'),
('Junior Java developer'),('Middle Java developer'),('Senior Java developer'),
('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),
('Junior Manual QA engineer'),('Middle Manual QA engineer'),('Senior Manual QA engineer'),
('Project Manager'),('Designer'),('HR'),('CEO'),('Sales manager'),
('Junior Automation QA engineer'),('Middle Automation QA engineer'),('Senior Automation QA engineer');


create table roles_employee (
id serial primary key,
employee_id int not null unique,
foreign key(employee_id)references employees(id),
role_id int not null,
foreign key(role_id) references roles(id)
);

insert into roles_employee (employee_id, role_id) values (7,2),
(20,4),(3,9),(5,13),(23,4),(11,2),(10,9),(22,13),(21,3),(34,4),(6,7),
(35,14),(36,15),(37,16),(40,17),(38,18),(39,19),(9,20),(30,1),(31,2),
(32,3),(33,4),(41,5),(24,6),(25,7),(26,8),(45,9),(28,10),(29,11),(42,12),
(43,11),(44,12),(27,13),(46,14),(47,15),(1,16),(2,17),(4,18),(50,19),(8,20);

select * from roles_employee;