SELECT dept_emp.dept_no, dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
INNER JOIN employees on dept_emp.emp_no = employees.emp_no;