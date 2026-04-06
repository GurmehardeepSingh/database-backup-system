USE company_dba;

-- Remove index if exists (for clean test)
DROP INDEX idx_dept ON employees;

-- BEFORE INDEX TEST
EXPLAIN ANALYZE
SELECT * FROM employees WHERE dept_id=1;

-- CREATE INDEX
CREATE INDEX idx_dept ON employees(dept_id);

-- AFTER INDEX TEST
EXPLAIN ANALYZE
SELECT * FROM employees WHERE dept_id=1;