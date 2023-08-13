1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
SELECT employees.employee_name, salary.monthly_salary
FROM employees
JOIN salary ON employees.id = salary.id;

 
 2. Вывести всех работников у которых ЗП меньше 2000.
 
SELECT employees.employee_name, salary.monthly_salary
FROM employees
JOIN salary ON employees.id = salary.id
WHERE salary.monthly_salary < 2000;

 
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 

select id_employee, employee_name, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
right join salary on salary.id = id_salary
where employee_name is null;

 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select id_employee, employee_name, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
right join salary on salary.id = id_salary
where employee_name is null and monthly_salary < 2000;

 5. Найти всех работников кому не начислена ЗП.
 
select employee_name, monthly_salary from salary
inner join employee_salary on salary.id = id_salary
right join employees on employees.id = id_employee
where monthly_salary is null;


 6. Вывести всех работников с названиями их должности.
 
SELECT employees.employee_name, roles.role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles_employee.role_id = roles.id;

 

 
 7. Вывести имена и должность только Java разработчиков.
 
SELECT employees.employee_name, roles.role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Java developer%';

 8. Вывести имена и должность только Python разработчиков.
 
SELECT employees.employee_name, roles.role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Python developer%';
 
 9. Вывести имена и должность всех QA инженеров.
 
 SELECT employees.employee_name, roles.role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%QA%';
 
 10. Вывести имена и должность ручных QA инженеров.
 
SELECT employees.employee_name, roles.role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Manual QA engineer%';
 
 11. Вывести имена и должность автоматизаторов QA
 
 SELECT employees.employee_name, roles.role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Automation QA engineer%';
 
 12. Вывести имена и зарплаты Junior специалистов
 

select employee_salary.id_employee, employee_name, monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';






 13. Вывести имена и зарплаты Middle специалистов
 
 select employee_salary.id_employee, employee_name, monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';
 
 14. Вывести имена и зарплаты Senior специалистов
 
 select employee_salary.id_employee, employee_name, monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%';
 
 15. Вывести зарплаты Java разработчиков
 
  select monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Java%';
 
 16. Вывести зарплаты Python разработчиков
 
 
 select monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';
 
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select employee_salary.id_employee, employee_name, monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Junior Python%';

 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select employee_salary.id_employee, employee_name, monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Middle JavaScript%';
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
  select employee_salary.id_employee, employee_name, monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Senior Java%';
 
 
 20. Вывести зарплаты Junior QA инженеров
 
  select monthly_salary from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';
 
 
 
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
  select AVG (monthly_salary) from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';
 
 
 22. Вывести сумму зарплат JS разработчиков
 
  select SUM (monthly_salary) from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%JavaScript%';
 

 23. Вывести минимальную ЗП QA инженеров
 
 select MIN (monthly_salary) from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';
 
 
 
 24. Вывести максимальную ЗП QA инженеров
 
  select MAX (monthly_salary) from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';
 
 
 25. Вывести количество QA инженеров

SELECT COUNT(role_name) AS qa_engineer_count
FROM roles
WHERE role_name LIKE '%QA engineer%';



 26. Вывести количество Middle специалистов.
 
SELECT COUNT(role_name) AS qa_engineer_count
FROM roles
WHERE role_name LIKE '%Middle%';
 
 27. Вывести количество разработчиков
 
SELECT COUNT(role_name) AS qa_engineer_count
FROM roles
WHERE role_name LIKE '%developer%';
 
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select SUM (monthly_salary) from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select employee_salary.id_employee, monthly_salary,employee_name,role_name  from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
 order by monthly_salary asc
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select employee_salary.id_employee, monthly_salary,employee_name,role_name  from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
 where monthly_salary between 1700 and 2300
 order by monthly_salary asc
 
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 
 select employee_salary.id_employee, monthly_salary,employee_name,role_name  from employees
 join roles_employee on employees.id = roles_employee.employee_id
 join employee_salary on employees.id = employee_salary.id_employee
 join salary on salary.id = employee_salary.id_salary
 join roles on roles_employee.role_id = roles.id
WHERE salary.monthly_salary < 2300 
order by monthly_salary asc


 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000


select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on roles.id = salary.id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;







