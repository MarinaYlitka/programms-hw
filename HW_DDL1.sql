create table if not exists employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values('Федор'),
	  ('Маргарита'),
	  ('Федор'),
	  ('Антонина'),
	  ('Петр'),
	  ('Андрей'),
	  ('Любовь'),
	  ('Кирилл'),
	  ('Руслана'),
	  ('Дарья'),
	  ('Гавриил'),
	  ('Лидия'),
	  ('Макар'),
	  ('Анатолий'),
	  ('Иван'),
	  ('Галина'),
	  ('Юлия'),
	  ('Ирина'),
	  ('Тамара'),
	  ('Надежда'),
	  ('Софья'),
	  ('Кирилл'),
	  ('Макар'),
	  ('Арсений'),
	  ('Любовь'),
	  ('Константин'),
	  ('Валерий'),
	  ('Валерий'),
	  ('Роман'),
	  ('Злата'),
	  ('Глеб'),
	  ('Таисия'),
	  ('Григорий'),
	  ('Антон'),
	  ('Ульяна'),
	  ('Наталья'),
	  ('Евгения'),
	  ('Елена'),
	  ('Денис'),
	  ('Глеб'),
	  ('Ольга'),
	  ('Владислав'),
	  ('Сергей'),
	  ('Ангелина'),
	  ('Елизавета'),
	  ('Филипп'),
	  ('Мария'),
	  ('Татьяна'),
	  ('Степан'),
	  ('Артем'),
	  ('Кристина'),
	  ('Екатерина'),
	  ('Полина'),
	  ('Виталий'),
	  ('Валентин'),
	  ('Полина'),
	  ('Людмила'),
	  ('Светлана'),
	  ('Максим'),
	  ('Илья'),
	  ('Глеб'),
	  ('Руслана'),
	  ('Руслана'),
	  ('Маргарита'),
	  ('Владислав'),
	  ('Ульяна'),
	  ('Роман'),
	  ('Петр'),
	  ('Татьяна'),
	  ('Таисия');
	  
	 select* from employees;
	 
	create table if not exists salary2(
	id serial primary key,
	monthly_salary_ int not null
	);
	
	insert into salary2(monthly_salary_)
	values(1000),
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
		 
select * from salary2;

create table if not exists employee_salary(
id serial primary key,
employee_id int not null unique,
salary2_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary2_id)
		references salary2(id)
);

insert into employee_salary(employee_id, salary2_id)
values(58, 10),
	(36, 7),
	(31, 10),
	(456, 2),
(5, 7),
(52, 9),
(75, 1),
(80, 10),
(23, 15),
(13, 12),
(72, 13),
(73, 3),
(7, 5),
(60, 2),
(4, 2),
(44, 5),
(94, 1),
(69, 8),
(42, 15),
(21, 9),
(71, 8),
(88, 5),
(1, 5),
(90, 4),
(14, 8),
(65, 16),
(8, 14),
(101, 8),
(9, 7),
(59, 2),
(22, 4),
(66, 3),
(49, 8),
(70, 14),
(18, 13),
(20, 4),
(30, 10),
(11, 2),
(43, 14),
(24, 2);

select * from employee_salary;

create table if not exists roles2(
id serial primary key,
role_name int not null unique
);
	

alter table roles2 
alter column role_name type varchar(30);
	
	
select * from roles2;
	
	
insert into roles2(role_name)
values('Junior Python developer'),
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

	
select * from roles2;
	
create table if not exists roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles2(id)
);

insert into roles_employee(employee_id, role_id)
values(9,12),
(32,10),
(4,19),
(20,12),
(60,6),
(44,6),
(61,9),
(39,17),
(35,11),
(66,7),
(59,5),
(16,3),
(17,1),
(33,8),
(67,20),
(69,2),
(42,2),
(46,8),
(43,1),
(58,18),
(70,19),
(11,3),
(63,7),
(10,4),
(24,18),
(64,7),
(49,11),
(23,4),
(19,12),
(65,13),
(30,1),
(54,17),
(36,10),
(55,19),
(3,19),
(47,1),
(15,4),
(14,20),
(57,16),
(6,4);


select * from roles_employee;








