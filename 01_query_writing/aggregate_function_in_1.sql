SELECT * FROM employees;

-- Aggregate Functions (aggregate functions perform a calculation on a set of values and return a single scalar value)
-- core aggregate functions (COUNT(), COUNT(*), COUNT(column), SUM(), AVG(), MAX(), MIN())
-- Postgres-Specific Aggregates (string_agg(column, delimiter), array_agg(column), json_agg(column) / jsonb_agg(column) )

SELECT COUNT(emp_id) FROM employees;
SELECT COUNT(dept) FROM employees;
SELECT COUNT(hire_date) FROM employees;



SELECT SUM(salary) FROM employees;


SELECT AVG(salary) FROM employees;

SELECT MIN(salary) FROM employees;

SELECT MAX(salary) FROM employees;



-- This is where PostgreSQL aggregate functions become useful.
-- - STRING_AGG() combines values into a text string.  (STRING_AGG(column, delimiter))
-- - ARRAY_AGG() combines values into a PostgreSQL array.
-- - JSON_AGG() combines values into a JSON array.
-- - JSONB_AGG() combines values into a JSONB array.
-- All four can be combined with GROUP BY to produce one result


-- STRING_AGG()

SELECT 
    dept, 
    STRING_AGG(fname, ', ') AS employees_list
FROM employees 
GROUP BY dept
ORDER BY dept;

