USE company_dba;

EXPLAIN ANALYZE SELECT * FROM employees where dept_id=1;

SELECT * FROM employees where dept_id=1;

SHOW profiles;

CREATE INDEX idx_dept ON employees(dept_id);

EXPLAIN ANALYZE SELECT * from employees WHERE dept_id=1;

