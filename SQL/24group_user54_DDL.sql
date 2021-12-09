--1 создать таблицу employees
create table employees(
id serial primary key,
employee_name varchar(50) not null
)

select * from employees;


--2 наполнить таблицу 70ю строками
insert into employees (employee_name)
values	('Regina'),
		('Henry'),
		('Kevin'),
		('Ruby'),
		('Debbie'),
		('Christopher'),
		('Anna'),
		('Martin'),
		('Earl'),
		('Patsy'),
		('Jared'),
		('Brenda'),
		('Gail'),
		('Dean'),
		('Cody'),
		('William'),
		('Francisco'),
		('Ronald'),
		('Stephanie'),
		('Janet'),
		('Dwight'),
		('Dorothy'),
		('James'),
		('James'),
		('Alfredo'),
		('Steven'),
		('Jennifer'),
		('Roy'),
		('Albert'),
		('Mary'),
		('Lonnie'),
		('Gertrude'),
		('Dorothy'),
		('James'),
		('Tommy'),
		('Karen'),
		('Gregory'),
		('Robert'),
		('Louise'),
		('Rita'),
		('Kathy'),
		('Alexander'),
		('Christopher'),
		('Anna'),
		('Patrick'),
		('Larry'),
		('Susan'),
		('Sylvia'),
		('Walter'),
		('Terry'),
		('Regina'),
		('Josephine'),
		('Paula'),
		('Thomas'),
		('Betty'),
		('Casey'),
		('Renee'),
		('Anthony'),
		('Janice'),
		('Kimberly'),
		('Virginia'),
		('Deborah'),
		('Edith'),
		('Norman'),
		('Delores'),
		('Mary'),
		('Irma'),
		('Wayne'),
		('Ricky'),
		('David');
		
	select * from employees 
	order by (id);
	
--3 создать таблицу salary
create table salary(
id serial primary key,
monthly_salary int not null
);
--4 Наполнить таблицу salary 15 строками(16?)
insert into salary (monthly_salary)
values  (1000),
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

select * from salary;

--5 создать таблицу employee_salary

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6 Наполнить таблицу employee_salary 40 строками:
---в 10 строк из 40 вставить несуществующие employee_id 
--нигде не написано что это должны быть рандомные значения, поэтому у меня по порядку

insert into employee_salary (employee_id, salary_id)
values  (1, 1),
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
		(16, 16),
		(17, 17),
		(18, 18),
		(19, 19),
		(20, 20),
		(21, 21),
		(22, 22),
		(23, 23),
		(24, 24),
		(25, 25),
		(26, 26),
		(27, 27),
		(28, 28),
		(29, 29),
		(30, 30),
		(71, 31),
		(72, 32),
		(73, 33),
		(74, 34),
		(75, 35),
		(76, 36),
		(77, 37),
		(78, 38),
		(79, 39),
		(80, 40);
	select * from employee_salary;


--7 создать таблицу roles
create table roles (
id serial primary key,
role_name int not null unique
);
select * from roles;


--8 Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);

--проверяем тип столбца
select data_type
from information_schema.columns
where table_name = 'roles'
and column_name = 'role_name';

--9 наполнить таблицу roles 20 строками
insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA enginee'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales Manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	select * from roles;

--10 Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);
select * from roles_employee;


--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values	(1, 1),
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
		(16, 16),
		(17, 17),
		(18, 18),
		(19, 19),
		(20, 20),
		(21, 1),
		(22, 2),
		(23, 3),
		(24, 4),
		(25, 5),
		(26, 6),
		(35, 7),
		(36, 8),
		(37, 9),
		(38, 10),
		(39, 11),
		(40, 12),
		(41, 13),
		(42, 14),
		(43, 15),
		(44, 16),
		(45, 17),
		(46, 18),
		(47, 19),
		(48, 20);
	select * from roles_employee;