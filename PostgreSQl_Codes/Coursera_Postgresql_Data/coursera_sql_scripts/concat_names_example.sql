select concat(firstname, ' ', lastname), hiredate, date_part('year', hiredate)
	from employees;

select concat(firstname, ' ', lastname), birthdate, to_char(birthdate, 'month')
	from employees;
