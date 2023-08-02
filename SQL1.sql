SQL. 1 HW. Create table

1. Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500

create table salary(
    id serial primary key,
	monthly_salary int not null
);
insert into salary (monthly_salary)
values 
           (1000),
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


2. Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.



create table employees(
    id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (employee_name) 
values ('John Smith'),
    ('Jane Doe'),
    ('Michael Johnson'),
    ('Emily Brown'),
    ('James Wilson'),
    ('Olivia Martinez'),
    ('Robert Taylor'),
    ('Sophia Anderson'),
    ('William Hernandez'),
    ('Ava Lopez'),
    ('Ethan Adams'),
    ('Mia Scott'),
    ('Benjamin Lewis'),
    ('Isabella Gonzalez'),
    ('Alexander Lee'),
    ('Grace Hall'),
    ('Daniel White'),
    ('Lily Martinez'),
    ('Christopher Hill'),
    ('Chloe Mitchell'),
    ('Matthew Young'),
    ('Emma Turner'),
    ('Samuel Baker'),
    ('Harper Green'),
    ('David Carter'),
    ('Zoey Adams'),
    ('Joseph Rivera'),
    ('Nora Lewis'),
    ('Andrew Cooper'),
    ('Ella Murphy'),
    ('Joshua Nelson'),
    ('Scarlett Wright'),
    ('Ryan Robinson'),
    ('Hazel Phillips'),
    ('Logan Kelly'),
    ('Lila Clark'),
    ('Nathan Hayes'),
    ('Stella Rodriguez'),
    ('Isaac Cook'),
    ('Aria Simmons'),
    ('Caleb Price'),
    ('Savannah Adams'),
    ('Henry Brooks'),
    ('Addison Flores'),
    ('Owen Long'),
    ('Penelope Reed'),
    ('Gabriel Patterson'),
    ('Brooklyn Ward'),
    ('Dylan Perry'),
    ('Paisley Simmons'),
    ('Isaac Graham'),
    ('Ellie Bell'),
    ('Nathan Ross'),
    ('Violet Foster'),
    ('Caleb Ramirez'),
    ('Madeline Coleman'),
    ('David Barnes'),
    ('Bella Martinez'),
    ('Samuel Evans'),
    ('Sadie Turner');
    
select * from employees;



3. Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id


create table employee_salary (
	 id serial primary key,
	 id_employee int not null UNIQUE,
	 id_salary int not null
);

insert into employee_salary (id_employee,id_salary)
values    (2, 3),
          (1, 1),
          (3, 5),
          (9, 40),
          (5, 23),
          (11, 11),
          (65, 52),
          (98, 15),
          (21, 26),
          (10, 16);
         
select * from employee_salary;

4. Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:


create table roles(
id serial primary key,
role_name varchar (30) unique not null
);

insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java  developer'),
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
      
       select * from roles;



5. Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:



create table roles_employee (
	 id serial primary key,
	 employee_id int not null unique,
	 role_id int not null,
	 foreign key (employee_id)
	 	references employees (id),
	 foreign key (role_id)
	 	references roles (id)
);

insert into roles_employee (employee_id, role_id)
      values 
    (7, 2),
    (20, 4),
    (3, 9),
    (4, 5),
    (13, 5),
    (23, 4),
    (6, 7),
    (2, 9),
    (22, 13),
    (21, 3),
    (34, 4),
    (1, 7),
    (12, 11),
    (8, 15),
    (29, 2),
    (42, 6),
    (28, 3),
    (60, 2),
    (15, 16),
    (11, 14),
    (9, 1),
    (30, 12),
    (5, 16),
    (16, 2),
    (10, 9),
    (32, 1),
    (26, 4),
    (65, 19),
    (17, 12),
    (24, 8),
    (27, 13),
    (14, 6),
    (35, 5),
    (31, 10),
    (33, 11),
    (38, 2),
    (36, 14),
    (39, 20),
    (37, 3),
    (52, 7),
    (19, 1),
    (41, 8);
   
   
