-- WHERE, DISTINCT, ORDER BY, LIMIT, LIKE


SELECT * FROM employees;


-- WHERE CLAUSE with Relational Operators (<, >, <=, >=, =, !=)

SELECT * FROM employees
WHERE emp_id = 5;

SELECT * FROM employees
WHERE dept = 'HR';

SELECT * FROM employees
WHERE salary >= 50000.00;

-- where clause with logical operator OR (either condition true), AND (both condition should be true)

SELECT emp_id, fname, lname FROM employees
WHERE dept = 'HR' OR dept = 'Finance';

SELECT * FROM employees
WHERE dept = 'IT' AND salary >= 50000.00;

SELECT * FROM employees
WHERE dept = 'IT' AND salary < 50000.00;

SELECT * FROM employees
WHERE dept != 'HR' AND dept != 'Marketing';


-- where with IN, NOT IN operator

SELECT * FROM employees
WHERE dept IN ('Finance', 'Marketing', 'HR');

SELECT * FROM employees
WHERE dept NOT IN ('Marketing', 'HR');

-- where with BETWEEN operator

SELECT * FROM employees
WHERE salary BETWEEN 35000 AND 55000;






-- DISTINCT (the DISTINCT clause is used to eliminate duplicate rows from a query's result set, ensuring that only unique records are returned)

SELECT DISTINCT dept FROM employees;





--ORDER BY (the ORDER BY clause is used to sort the rows returned by a query)

SELECT * FROM employees ORDER BY fname;

SELECT * FROM employees ORDER BY salary DESC;





-- LIMIT (the LIMIT clause is used to restrict the number of rows returned by a query)

SELECT * FROM employees LIMIT 4;

SELECT * FROM employees ORDER BY emp_id DESC LIMIT 3;





-- LIKE (LIKE clause is used in a WHERE paragraph to search for a specified pattern in a column)
            --To construct a pattern, you use two special wildcard characters:
            --• % (Percent sign): Represents zero, one, or multiple characters.
            --• _ (Underscore): Represents a single, specific character.

SELECT * FROM employees
WHERE fname LIKE '%n';

SELECT * FROM employees
WHERE fname LIKE '%i%';

SELECT * FROM employees
WHERE dept LIKE '__';

SELECT fname FROM employees
WHERE dept LIKE '_R';

SELECT * FROM employees 
WHERE fname LIKE '_a%';