SELECT dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE dept_name IN ('Sales', 'Development');