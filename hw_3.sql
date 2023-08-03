1. Вывести всех работников employees чьи зарплаты salary есть в базе employee_salary, вместе с зарплатами.

Работники employees и зарплаты salary

select * from employees

select * from salary

select * from employee_salary


select employee_name, monthly_salary 
 from employees 
 join employee_salary 
 on employees.id = employee_salary.employee_id 
 join salary  
 on employee_salary.salary_id = salary.id

 2. Вывести всех работников employees у которых ЗП salary меньше 2000. employee_salary
 
 select employee_name, monthly_salary 
 from employees 
 join employee_salary 
 on employees.id = employee_salary.employee_id 
 join salary  
 on employee_salary.salary_id = salary.id
where monthly_salary < '2000'
 
 3. Вывести все зарплатные позиции salary.monthly_salary, но работник employee_id по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select salary.monthly_salary, employee_salary.employee_id 
 from salary 
 left join employee_salary
 on salary.id = employee_salary.salary_id
 where employee_id is null
 
 
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
  select salary.monthly_salary, employee_salary.employee_id 
 from salary 
 left join employee_salary
 on salary.id = employee_salary.salary_id
 where salary.monthly_salary < '2000' and employee_id is null

 
 5. Найти всех работников кому не начислена ЗП.
 
 select employees.employee_name, salary.monthly_salary
 from employees
 left join salary
 on employees.id = salary.id
where salary.monthly_salary is null
 
 6. Вывести всех работников с названиями их должности.
 
 select * from roles
 
 select employees.employee_name, roles.role_name
 from roles_employee
 inner join employees
 on roles_employee.employee_id = employees.id
inner join roles
on roles_employee.role_id = roles.id
 
 7. Вывести имена и должность только Java разработчиков.
 
 select employees.employee_name, roles.role_name
 from roles_employee
 inner join employees
 on roles_employee.employee_id = employees.id
inner join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Java%'
 
 8. Вывести имена и должность только Python разработчиков.
 
 select employees.employee_name, roles.role_name
 from roles_employee
 inner join employees
 on roles_employee.employee_id = employees.id
inner join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Python%'
 
 9. Вывести имена и должность всех QA инженеров.
 
 select employees.employee_name, roles.role_name
 from roles_employee
 inner join employees
 on roles_employee.employee_id = employees.id
inner join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%QA%'
 
 10. Вывести имена и должность ручных QA инженеров.
 
 select employees.employee_name, roles.role_name
 from roles_employee
 inner join employees
 on roles_employee.employee_id = employees.id
inner join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA%'
 
 11. Вывести имена и должность автоматизаторов QA
 
 select employees.employee_name, roles.role_name
 from roles_employee
 inner join employees
 on roles_employee.employee_id = employees.id
inner join roles
on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA%'
 
 12. Вывести имена и зарплаты Junior специалистов
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 					inner join roles on roles.id = roles_employee.role_id
 					inner join employee_salary on employee_salary.employee_id = employees.id
 					inner join salary on salary.id = employee_salary.salary_id
 where roles.role_name like '%Junior%'
 

 13. Вывести имена и зарплаты Middle специалистов
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 					inner join roles on roles.id = roles_employee.role_id
 					inner join employee_salary on employee_salary.employee_id = employees.id
 					inner join salary on salary.id = employee_salary.salary_id
 where roles.role_name like '%Middle%'
 
 14. Вывести имена и зарплаты Senior специалистов
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
						inner join roles on roles.id = roles_employee.role_id
						inner join employee_salary on employee_salary.employee_id = employees.id
						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Senior%'

 15. Вывести зарплаты Java разработчиков
 
 select roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 					inner join roles on roles.id = roles_employee.role_id
 					inner join employee_salary on employee_salary.employee_id = employees.id
 					inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Java%' and roles.role_name like '%developer%'
 
 16. Вывести зарплаты Python разработчиков
 
 
 select roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 					inner join roles on roles.id = roles_employee.role_id
 					inner join employee_salary on employee_salary.employee_id = employees.id
 					inner join salary on salary.id = employee_salary.salary_id
 where roles.role_name like '%Python%'

 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
					inner join roles on roles.id = roles_employee.role_id
					inner join employee_salary on employee_salary.employee_id = employees.id
					inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Junior Python developer%'

 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on  salary.id = employee_salary.salary_id
 where roles.role_name like '%Middle Java%'
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
 where roles.role_name like '%Senior Java%'
 
 20. Вывести зарплаты Junior QA инженеров
 
 select roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Junior%' and roles.role_name like '%QA%'
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
 select avg(salary.monthly_salary) as avg_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 					inner join roles on roles.id = roles_employee.employee_id
 					inner join employee_salary on employee_salary.employee_id = employees.id
 					inner join salary on salary.id = employee_salary.salary_id
 where roles.role_name like '%Junior%'
 					
 
 22. Вывести сумму зарплат JS разработчиков
 
 select sum(salary.monthly_salary) as sum_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Java%'
 
 23. Вывести минимальную ЗП QA инженеров
 
 select min(salary.monthly_salary) as min_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%'
 
 24. Вывести максимальную ЗП QA инженеров
 
  select max(salary.monthly_salary) as max_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%'
 
 25. Вывести количество QA инженеров
 
  select count(employees.employee_name) as count_QA
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%'

 26. Вывести количество Middle специалистов.
 
 select count(employees.employee_name) as count_Middle
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Middle%'

 
 27. Вывести количество разработчиков
 
  select count(employees.employee_name) as count_developer
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%developer%'
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select sum(salary.monthly_salary) as sum_developer
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%developer%'
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
order by salary.monthly_salary
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
  select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary >= 1700 and salary.monthly_salary <= 2300
 						order by salary.monthly_salary
 
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2300
 						order by salary.monthly_salary
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

 select employees.employee_name, roles.role_name, salary.monthly_salary
 from roles_employee inner join employees on employees.id = roles_employee.employee_id
 						inner join roles on roles.id = roles_employee.role_id
 						inner join employee_salary on employee_salary.employee_id = employees.id
 						inner join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary in(1100, 1500, 2000)
 						order by salary.monthly_salary
