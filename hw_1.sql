/Таблица employees

/Создать таблицу employees

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

/Наполнить таблицу employee 70 строками.

insert into employees
values ('Olivia'),
		('Ethan'),
		('Ava'),
		('Liam'),
		('Sophia'),
		('Noah'),
		('Isabella'),
		('Jackson'),
		('Mia'),
		('Aiden'),
		('Charlotte'),
		('Lucas'),
		('Harper'),
		('Elijah'),
		('Amelia'),
		('Mason'),
		('Evelyn'),
		('Caden'),
		('Abigail'),
		('Grayson'),
		('Scarlett'),
		('Declan'),
		('Grace'),
		('Wyatt'),
		('Chloe'),
		('James'),
		('Zoe'),
		('Alexander'),
		('Penelope'),
		('William'),
		('Layla'),
		('Michael'),
		('Hazel'),
		('Benjamin'),
		('Aria'),
		('Elijah'),
		('Aubrey'),
		('Nathan'),
		('Riley'),
		('Logan'),
		('Ella'),
		('Gabriel'),
		('Lily'),
		('Henry'),
		('Nora'),
		('Owen'),
		('Savannah'),
		('Dylan'),
		('Brooklyn'),
		('Jayden'),
		('Makayla'),
		('Caleb'),
		('Kennedy'),
		('Ryan'),
		('Paisley'),
		('Isaac'),
		('Faith'),
		('Samuel'),
		('Vivienne'),
		('Julian'),
		('Adalynn'),
		('Dylan'),
		('Skylar'),
		('Levi'),
		('Elizabeth'),
		('Christian'),
		('Mila'),
		('Hunter'),
		('Addison'),
		('David');


/ Вывести таблицу employees
select * from employees;

Таблица salary

Создать таблицу salary

create table salary (
	id serial primary key,
	monthly_salary int not null
);

/ Наполнить таблицу salary 15 строками:

insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

/Вывести таблицу salary
select * from salary

/Таблица employee_salary

/Создать таблицу employee_salary
	
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id Int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary(id)
);

/Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

update into employee_salary (employee_id, salary_id)
values (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 1),
		(17, 2),
		(18, 3),
		(19, 4),
		(20, 5),
		(21, 6),
		(22, 7),
		(23, 8),
		(24, 9),
		(25, 10),
		(26, 11),
		(27, 12),
		(28, 13),
		(29, 14),
		(30, 15),
		(75, 1),
		(76, 2),
		(77, 3),
		(78, 4),
		(79, 5),
		(80, 6);

/Таблица roles

/Создать таблицу roles


create table roles (
	id serial primary key,
	role_name int not null unique
);

/Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

/Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

/Вывести таблицу roles

select * from roles

/Таблица roles_employee

/Создать таблицу roles_employee

	
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

/Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (1, 20),
		(2,	19),
		(3,	18),
		(4,	17),
		(5,	16),
		(6,	15),
		(7,	14),
		(8,	13),
		(9,	12),
		(10, 11),
		(11, 10),
		(12, 9),
		(13, 8),
		(14, 7),
		(15, 6),
		(16, 5),
		(17, 4),
		(18, 3),
		(19, 2),
		(20, 1),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 12),
		(30, 11),
		(31,	10),
		(32,	9),
		(33,	8),
		(34,	7),
		(35,	6),
		(36,	5),
		(37,	4),
		(38,	3),
		(39,	2),
		(40,	1);

/Вывести таблицу roles_employee
select * from roles_employee



