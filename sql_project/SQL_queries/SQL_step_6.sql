SELECT dept_emp.emp_no, last_name, first_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd007';