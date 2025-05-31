SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, last_name, first_name
FROM dept_manager
INNER JOIN departments on dept_manager.dept_no = departments.dept_no
INNER JOIN employees on dept_manager.emp_no = employees.emp_no;