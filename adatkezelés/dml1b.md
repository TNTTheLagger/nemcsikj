> Correct

1.  You need to display each employee\'s name in all uppercase letters.
    Which function should you use?

> ![](media/image1.png){width="0.125in" height="0.125in"}Mark for Review
>
> \(1\) Points
>
> ![](media/image2.png){width="0.13541666666666666in"
> height="0.13541666666666666in"} CASE
>
> ![](media/image2.png){width="0.13541666666666666in"
> height="0.13541666666666666in"} UCASE
>
> ![](media/image3.png){width="0.13541666666666666in"
> height="0.13541666666666666in"} UPPER
>
> ![](media/image2.png){width="0.13541666666666666in"
> height="0.13541666666666666in"}TOUPPER

2.  ![](media/image1.png){width="0.125in" height="0.125in"}You need to
    return a portion of each employee\'s last name, beginning with the
    first character up to the fifth character. Which character function
    should you use? Mark for Review

> \(1\) Points
>
> ![](media/image2.png){width="0.13541666666666666in"
> height="0.13541666666666666in"} INSTR
>
> ![](media/image3.png){width="0.13541666666666666in"
> height="0.13541666666666666in"}TRUNC
>
> ![](media/image2.png){width="0.13541666666666666in"
> height="0.13541666666666666in"}![](media/image2.png){width="0.13541666666666666in"
> height="0.13541666666666666in"}CONCAT

3.  Evaluate this SELECT statement:

> SELECT LENGTH(email)
>
> FROM employee;
>
> What will this SELECT statement display?
>
> Mark for Review
>
> \(1\) Points
>
> The longest e-mail address in the EMPLOYEE table.
>
> The email address of each employee in the EMPLOYEE table.
>
> The number of characters for each value in the EMAIL column in the
> employees table.
>
> The maximum number of characters allowed in the EMAIL column.

4.  You need to display the number of characters in each customer\'s
    last name. Which function should you use? Mark for Review

> \(1\) Points
>
> LENGTH
>
> LPAD
>
> COUNT
>
> SUBSTR

5.  Which functions can be used to manipulate character, number, and
    > date column values?

> Mark for Review
>
> \(1\) Points
>
> CONCAT, RPAD, and TRIM
>
> UPPER, LOWER, and INITCAP
>
> ROUND, TRUNC, and MOD
>
> ROUND, TRUNC, and ADD_MONTH

6.  You query the database with this SQL statement:

> SELECT LOWER(SUBSTR(CONCAT(last_name, first_name)), 1, 5) \"ID\" FROM
> employee;
>
> In which order are the functions evaluated?
>
> Mark for Review
>
> \(1\) Points
>
> LOWER, SUBSTR, CONCAT
>
> LOWER, CONCAT, SUBSTR
>
> SUBSTR, CONCAT, LOWER
>
> CONCAT, SUBSTR, LOWER

7.  Which three statements about functions are true? (Choose three.)
    Mark for Review

> \(1\) Points
>
> (Choose all correct answers)
>
> The SYSDATE function returns the Oracle Server date and time.
>
> The ROUND number function rounds a value to a specified decimal place
> or the nearest whole number.
>
> The CONCAT function can only be used on character strings, not on
> numbers.
>
> Which comparison operator retrieves a list of values? Mark for Review
>
> \(1\) Points
>
> IN
>
> LIKE
>
> BETWEEN\...IN\...
>
> IS NULL
>
> The SUBSTR character function returns a portion of a string beginning
> at a defined character position to a specified length.

10. Which two functions can be used to manipulate number or date column
    values, but NOT character column values? (Choose two.) Mark for
    Review

> \(1\) Points
>
> (Choose all correct answers)
>
> RPAD
>
> TRUNC
>
> ROUND
>
> INSTR
>
> CONCAT

11. Evaluate this SELECT statement:

> SELECT SYSDATE + 30
>
> FROM dual;
>
> Which value is returned by the query?
>
> Mark for Review
>
> \(1\) Points
>
> the current date plus 30 hours
>
> the current date plus 30 days
>
> the current date plus 30 months
>
> No value is returned because the SELECT statement generates an error.

12. You need to display the current year as a character value (for
    example: Two Thousand and One).

> Which element would you use? Mark for Review
>
> \(1\) Points
>
> RR
>
> YY
>
> YYYY
>
> YEAR

13. You need to display the number of months between today\'s date and
    each employee\'s hiredate. Which function should you use? Mark for
    Review

> \(1\) Points
>
> ROUND
>
> BETWEEN
>
> ADD_MONTHS
>
> MONTHS_BETWEEN

14. Which of the following SQL statements will correctly display the
    last name and the number of weeks employed for all employees in
    department 90? Mark for Review

> \(1\) Points
>
> SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS FROM employees
>
> WHERE department_id = 90;
>
> (\*)
>
> SELECT last name, (SYSDATE-hire_date)/7 DISPLAY WEEKS FROM employees
>
> WHERE department id = 90;
>
> SELECT last_name, \# of WEEKS FROM employees
>
> WHERE department_id = 90;
>
> SELECT last_name, (SYSDATE-hire_date)AS WEEK FROM employees
>
> WHERE department_id = 90;

16. Which statement concerning single row functions is true? Mark for
    > Review

> \(1\) Points
>
> Single row functions can accept only one argument, but can return
> multiple values.
>
> Single row functions cannot modify a data type.
>
> Single row functions can be nested.
>
> Single row functions return one or more results per row.

17. Which two statements concerning SQL functions are true? (Choose
    > two.)

> Mark for Review
>
> \(1\) Points
>
> (Choose all correct answers)
>
> Character functions can accept numeric input.
>
> Not all date functions return date values.
>
> Number functions can return number or character values.
>
> Conversion functions convert a value from one data type to another
> data type.
>
> Single-row functions manipulate groups of rows to return one result
> per group of rows.

18. Which three statements concerning explicit data type conversions are
    true? (Choose three.) Mark for Review

> \(1\) Points
>
> (Choose all correct answers)
>
> Use the TO_NUMBER function to convert a number to a character string.
>
> Use the TO_DATE function to convert a character string to a date
> value.
>
> Use the TO_NUMBER function to convert a character string of digits to
> a number.
>
> Use the TO_DATE function to convert a date value to character string
> or number.
>
> Use the TO_CHAR function to convert a number or date value to
> character string.

19. The EMPLOYEES table contains these columns:

> EMPLOYEE_ID NUMBER(9) LAST_NAME VARCHAR2 (25)
>
> FIRST_NAME VARCHAR2 (25) HIRE_DATE DATE
>
> You need to display HIRE_DATE values in this format:
>
> January 28, 2000
>
> Which SELECT statement could you use?
>
> Mark for Review
>
> \(1\) Points
>
> FROM employees;
>
> SELECT TO_CHAR(hire_date, \'Month DD, YYYY\') FROM employees;
>
> (\*)
>
> SELECT hire_date(TO_CHAR \'Month DD\', \' YYYY\') FROM employees;
>
> SELECT TO_CHAR(hire_date, \'Month DD\', \' YYYY\') FROM employees;

20. Which arithmetic operation will return a numeric value? Mark for
    Review

> \(1\) Points
>
> TO_DATE(\'01-JUN-2004\') - TO_DATE(\'01-OCT-2004\')
>
> SYSDATE - 6
>
> SYSDATE + 30 / 24

21. If you use the RR format when writing a query using the date
    27-OCT-17 and the year is 2001, what year would be the result? Mark
    for Review

> \(1\) Points
>
> 2001
>
> 1901
>
> 2017
>
> 1917
>
> Previous Page 21 of 100 Next Summary

22. The PRODUCT table contains this column: PRICE NUMBER(7,2) Evaluate
    this statement:

> SELECT NVL(10 / price, \'0\') FROM PRODUCT;
>
> What would happen if the PRICE column contains null values?
>
> Mark for Review
>
> \(1\) Points
>
> The statement would fail because values cannot be divided by 0.
>
> A value of 0 would be displayed.
>
> A value of 10 would be displayed.
>
> The statement would fail because values cannot be divided by null.

23. Which of the following General Functions will return the first
    non-null expression in the expression list? Mark for Review

> \(1\) Points
>
> NVL
>
> NVL2
>
> NULLIF
>
> COALESCE

24. You need to replace null values in the DEPT_ID column with the text
    > \"N/A\".

> Which functions should you use? Mark for Review
>
> \(1\) Points
>
> TO_CHAR and NVL
>
> TO_CHAR and NULL
>
> TO_CHAR and NULLIF

25. What happens when you create a Cartesian product? Mark for Review

> \(1\) Points
>
> All rows from one table are joined to all rows of another table
>
> The table is joined to itself, one column to the next column,
> exhausting all possibilities
>
> The table is joined to another equal table
>
> All rows that do not match in the WHERE clause are displayed
>
> Incorrect Incorrect. Refer to Section 3

26. The PATIENTS and DOCTORS tables contain these columns:

> PATIENTS
>
> PATIENT_ID NUMBER(9)
>
> LAST_NAME VARCHAR2 (20)
>
> FIRST_NAME VARCHAR2 (20)
>
> DOCTORS
>
> DOCTOR_ID NUMBER(9) LAST_NAME VARCHAR2 (20)
>
> FIRST_NAME VARCHAR2 (20)
>
> You issue this statement:
>
> SELECT patient_id, doctor_id FROM patients, doctors;
>
> Which result will this statement provide?
>
> Mark for Review
>
> \(1\) Points
>
> A report containing all possible combinations of the PATIENT_ID and
> DOCTOR_ID values
>
> A report containing each patient\'s id value and their doctor\'s id
> value
>
> A report with NO duplicate PATIENT_ID or DOCTOR_ID values
>
> A syntax error

27. When joining 3 tables in a SELECT statement, how many join
    conditions are needed in the WHERE clause? Mark for Review

> \(1\) Points
>
> 0
>
> 1
>
> 2
>
> 3
>
> Incorrect Incorrect. Refer to Section 3

28. You need to provide a list of the first and last names of all
    employees who work in the Sales department who earned a bonus and
    had sales over \$50,000. The company president would like the sales
    listed starting with the highest amount first. The EMPLOYEES table
    and the SALES_DEPT table contain the following columns:

> EMPLOYEES
>
> EMP_ID NUMBER(10) PRIMARY KEY LNAME VARCHAR2(20)
>
> FNAME VARCHAR2(20) DEPT VARCHAR2(20) HIRE_DATE DATE SALARY NUMBER(10)
>
> SALES_DEPT
>
> SALES_ID NUMBER(10) PRIMARY KEY SALES NUMBER(20)
>
> QUOTA NUMBER(20) MGR VARCHAR2(30) BONUS NUMBER(10)
>
> EMP_ID NUMBER(10) FOREIGN KEY
>
> Which SELECT statement will accomplish this task?
>
> Mark for Review
>
> \(1\) Points
>
> SELECT e.emp_id, e.lname, e.fname, s.emp_id, s.bonus, s.sales FROM
> employees e, sales_dept s
>
> ORDER BY sales DESC
>
> SELECT e.emp_id, e.lname, e.fname, s.emp_id, s.bonus, s. sales ORDER
> BY sales DESC
>
> FROM employees e, sales_dept s
>
> WHERE e.emp_id = s.emp_id AND s.bonus IS NOT NULL AND sales \> 50000;
>
> SELECT e.emp_id, e.lname, e.fname, s.emp_id, s.bonus, s. sales WHERE
> e.emp_id = s.emp_id
>
> FROM employees e, sales_dept s AND s.bonus IS NOT NULL AND sales \>
> 50000 ORDER BY sales DESC;
>
> SELECT e.emp_id, e.lname, e.fname, s.emp_id, s.bonus, s. sales FROM
> employees e, sales_dept s
>
> WHERE e.emp_id = s.emp_id AND s.bonus IS NOT NULL AND sales \> 50000
>
> ORDER BY sales DESC;
>
> (\*)

29. You need to create a report that lists all employees in the Sales
    department who do not earn

> \$25,000 per year. Which query should you issue to accomplish this
> task? Mark for Review
>
> SELECT last_name, first_name, salary FROM employees
>
> WHERE salary \> 25000 AND dept_id = 10;
>
> SELECT last_name, first_name, salary FROM employees
>
> WHERE salary = 25000 AND dept_id = 10;
>
> SELECT last_name, first_name, salary FROM employees
>
> WHERE salary \<= 25000 AND dept_id = 10;
>
> SELECT last_name, first_name, salary FROM employees
>
> WHERE salary != 25000 AND dept_id = 10;
>
> (\*)

30. The CUSTOMERS and SALES tables contain these columns:

> CUSTOMERS
>
> CUST_ID NUMBER(10) PRIMARY KEY COMPANY VARCHAR2(30) LOCATION
> VARCHAR2(20)
>
> SALES
>
> SALES_ID NUMBER(5) PRIMARY KEY CUST_ID NUMBER(10) FOREIGN KEY
> TOTAL_SALES NUMBER(30)
>
> Which SELECT statement will return the customer ID, the company and
> the total sales?
>
> Mark for Review
>
> \(1\) Points
>
> SELECT c.cust_id, c.company, s.total_sales FROM customers c, sales s
>
> WHERE c.cust_id = s.cust_id (+);
>
> SELECT cust_id, company, total_sales FROM customers, sales
>
> WHERE cust_id = cust_id;
>
> SELECT c.cust_id, c.company, s.total_sales FROM customers c, sales s
>
> WHERE c.cust_id = s.cust_id;
>
> (\*)
>
> SELECT cust_id, company, total_sales FROM customers c, sales s
>
> WHERE c.cust_id = s.cust_id;

31. The EMPLOYEE_ID column in the EMPLOYEE table corresponds to the
    EMPLOYEE_ID column of the ORDER table. The EMPLOYEE_ID column in the
    ORDER table contains null values for rows that you need to display.

> Which type of join should you use to display the data? Mark for Review
>
> \(1\) Points
>
> natural join
>
> self-join
>
> outer join
>
> equijoin

32. Which statement about outer joins is true? Mark for Review

> \(1\) Points
>
> The tables must be aliased.
>
> The FULL, RIGHT, or LEFT keyword must be included.
>
> The OR operator cannot be used to link outer join conditions.
>
> Outer joins are always evaluated before other types of joins in the
> query.

33. Which of the following best describes the function of an outer join?
    > Mark

> for Review
>
> \(1\) Points
>
> An outer join will return only those rows that do not meet the join
> criteria.
>
> An outer join will return only data from the far left column in one
> table and the far right column in the other table.
>
> An outer join will return data only if both tables contain an
> identical pair of columns.
>
> An outer join will return all rows that meet the join criteria and
> will return NULL values from one table if no rows from the other table
> satisfy the join criteria.

34. Which of the following conditions will cause an error on a NATURAL
    JOIN? Mark for Review

> \(1\) Points
>
> When you attempt to write it as an equijoin.
>
> When the NATURAL JOIN clause is based on all columns in the two tables
> that have the same
>
> name.
>
> If it selects rows from the two tables that have equal values in all
> matched columns.
>
> If the columns having the same names have different data types, then
> an error is returned.

35. A join between tables where the result set includes matching values
    from both tables but does NOT return any unmatched rows could be
    called which of the following? (Choose three)

> Mark for Review
>
> \(1\) Points
>
> (Choose all correct answers)
>
> Equijoin
>
> Self join
>
> Nonequijoin
>
> Simple join
>
> full outer join

36. You need to join two tables that have two columns with the same name
    and compatible data types. Which type of join would you create to
    join the tables on both of the columns? Mark for Review

> \(1\) Points
>
> Natural join
>
> Cross join
>
> Outer join
>
> Self-join

37. Which of the following statements is the simplest description of a
    nonequijoin? Mark for Review

> \(1\) Points
>
> A join condition containing something other than an equality operator
>
> A join condition that is not equal to other joins.
>
> A join condition that includes the (+) on the left hand side.
>
> A join that joins a table to itself

38. Evaluate this SELECT statement:

> SELECT a.lname \|\| \', \' \|\| a.fname as \"Patient\", b.lname \|\|
> \', \' \|\| b.fname as \"Physician\", c.admission FROM patient a
>
> JOIN physician b
>
> ON (b.physician_id = c.physician_id); JOIN admission c
>
> ON (a.patient_id = c.patient_id);
>
> Which clause generates an error?
>
> Mark for Review
>
> \(1\) Points
>
> JOIN physician b
>
> ON (b.physician_id = c.physician_id);
>
> JOIN admission c
>
> ON (a.patient_id = c.patient_id)

39. The primary advantage of using JOIN ON is: Mark for Review

> \(1\) Points
>
> The join happens automatically based on matching column names and data
> types
>
> It will display rows that do not meet the join condition
>
> It permits columns with different names to be joined
>
> It permits columns that don\'t have matching data types to be joined

40. For which condition would you use an equijoin query with the USING
    > keyword?

> Mark for Review
>
> \(1\) Points
>
> You need to perform a join of the CUSTOMER and ORDER tables but limit
> the number of columns in the join condition.
>
> The ORDER table contains a column that has a referential constraint to
> a column in the PRODUCT table.
>
> The CUSTOMER and ORDER tables have no columns with identical names.
>
> The CUSTOMER and ORDER tables have a corresponding column, CUST_ID.
> The CUST_ID column in the ORDER table contains null values that need
> to be displayed.

41. Which query will retrieve all the rows in the EMPLOYEES table, even
    if there is no match in the DEPARTMENTS table? Mark for Review

> \(1\) Points
>
> SELECT e.last_name, e.department_id, d.department_name FROM employees
> e
>
> RIGHT OUTER JOIN departments d ON (e.department_id = d.department_id);
>
> SELECT e.last_name, e.department_id, d.department_name FROM employees
> e
>
> NATURAL JOIN departments d;
>
> SELECT e.last_name, e.department_id, d.department_name FROM employees
> e
>
> LEFT OUTER JOIN departments d ON (e.department_id = d.department_id);
>
> (\*)
>
> SELECT e.last_name, e.department_id, d.department_name FROM employees
> e
>
> JOIN departments d USING (e.department_id = d.department_id);

42. Which type of join returns rows from one table that have NO direct
    match in the other table?

> Mark for Review
>
> \(1\) Points
>
> equijoin
>
> self join
>
> outer join
>
> natural join

43. What should be included in a SELECT statement to return NULL values
    > from all tables?

> Mark for Review
>
> \(1\) Points
>
> natural joins
>
> left outer joins
>
> full outer joins
>
> right outer joins

44. If a select list contains both a column as well as a group function
    then what clause is required? Mark for Review

> \(1\) Points
>
> having clause
>
> join clause
>
> order by clause
>
> group by clause

45. Evaluate this SELECT statement:

> SELECT MIN(hire_date), dept_id FROM employee
>
> GROUP BY dept_id;
>
> Which values are displayed?
>
> Mark for Review
>
> \(1\) Points
>
> The earliest hire date in each department.
>
> The the earliest hire date in the EMPLOYEE table.
>
> The latest hire date in the EMPLOYEE table.
>
> The hire dates in the EMPLOYEE table that contain NULL values

46. Which statement about group functions is true? Mark for Review

> \(1\) Points
>
> Group functions ignore null values.
>
> Group functions can only be used in a SELECT list.
>
> Group functions can be used in a WHERE clause.
>
> A query that includes a group function in the SELECT list must include
> a GROUP BY clause.

47. Group functions can be nested to a depth of? Mark for Review

> \(1\) Points
>
> three
>
> four
>
> two
>
> Group functions cannot be nested.

48. Which group function would you use to display the total of all
    salary values in the EMPLOYEE table? Mark for Review

> \(1\) Points
>
> SUM
>
> AVG
>
> COUNT
>
> MAX

49. The VENDORS table contains these columns:

> VENDOR_ID NUMBER Primary Key NAME VARCHAR2(30) LOCATION_ID NUMBER
> ORDER_DT DATE ORDER_AMOUNT NUMBER(8,2)
>
> Which two clauses represent valid uses of aggregate functions for this
> table?
>
> Mark for Review
>
> \(1\) Points
>
> (Choose all correct answers)
>
> FROM MAX(order_dt)
>
> SELECT SUM(order_dt)
>
> SELECT SUM(order_amount)
>
> WHERE MAX(order_dt) = order_dt
>
> SELECT location_id, MIN(AVG(order_amount))
>
> Incorrect Incorrect. Refer to Section 5

50. You need to calculate the standard deviation for the cost of
    products produced in the Birmingham facility. Which group function
    will you use? Mark for Review

> \(1\) Points
>
> STDEV
>
> STDDEV
>
> VAR_SAMP
>
> VARIANCE

51. Group functions return a value for and null values in their
    computations. Mark for Review

> \(1\) Points
>
> a row set, ignore
>
> each row, ignore
>
> a row set, include
>
> each row, include

52. You need to calculate the average salary of employees in each
    department. Which group function will you use? Mark for Review

> \(1\) Points
>
> AVG
>
> MEAN
>
> MEDIAN
>
> AVERAGE

53. The AVG, SUM, VARIANCE, and STDDEV functions can be used with which
    of the following?

> Mark for Review
>
> \(1\) Points
>
> Only numeric data types
>
> Integers only
>
> Any data type
>
> All except numeric

54. The PRODUCTS table contains these columns:

> PROD_ID NUMBER(4) PROD_NAME VARCHAR2(30) PROD_CAT VARCHAR2(30)
> PROD_PRICE NUMBER(3) PROD_QTY NUMBER(4)
>
> The following statement is issued:
>
> SELECT AVG(prod_price, prod_qty) FROM products;
>
> What happens when this statement is issued?
>
> Mark for Review
>
> \(1\) Points
>
> Both the average price and the average quantity of the products are
> returned.
>
> Only the average quantity of the products is returned.
>
> The values in the PROD_PRICE column and the PROD_QTY column are
> averaged together.
>
> An error occurs.

55. The EMPLOYEES table contains these columns:

> EMPLOYEE_ID NUMBER(9) LAST_NAME VARCHAR2(20) FIRST_NAME VARCHAR2(20)
> SALARY NUMBER(9,2) HIRE_DATE DATE
>
> BONUS NUMBER(7,2) COMM_PCT NUMBER(4,2)
>
> Which three functions could be used with the HIRE_DATE, LAST_NAME, or
> SALARY columns? (Choose three.)
>
> Mark for Review
>
> \(1\) Points
>
> (Choose all correct answers)
>
> MAX
>
> SUM
>
> AVG
>
> MIN
>
> COUNT

56. Which SELECT statement will calculate the number of rows in the
    PRODUCTS table? Mark for Review

> \(1\) Points
>
> SELECT COUNT(products);
>
> SELECT COUNT FROM products;
>
> SELECT COUNT FROM products;
>
> SELECT ROWCOUNT FROM products

57. Examine the data from the LINE_ITEM table:

<table>
<colgroup>
<col style="width: 45%" />
<col style="width: 24%" />
<col style="width: 12%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>LINE_ITEM_IDORDER_ID</p>
</blockquote></th>
<th><blockquote>
<p>PRODUCT_ID</p>
</blockquote></th>
<th><blockquote>
<p>PRICE</p>
</blockquote></th>
<th><blockquote>
<p>DISCOUNT</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>890898 847589 848399 8.99</p>
</blockquote></td>
<td><blockquote>
<p>0.10</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>768385 862459 849869 5.60</p>
</blockquote></td>
<td><blockquote>
<p>0.05</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>867950 985490 945809 5.60</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

> 954039 439203 438925 5.25 0.15
>
> 543949 349302 453235 4.50
>
> You query the LINE_ITEM table and a value of 5 is returned. Which SQL
> statement did you execute?
>
> Mark for Review
>
> \(1\) Points
>
> SELECT COUNT(discount) FROM line_item;
>
> SELECT COUNT(\*) FROM line_item;
>
> SELECT SUM(discount) FROM line_item;
>
> SELECT AVG(discount) FROM line_it

58. The EMPLOYEES table contains these columns:

> EMPLOYEE_ID NUMBER(9) LAST_NAME VARCHAR2(20) FIRST_NAME VARCHAR2(20)
> SALARY NUMBER(7,2)
>
> You need to display the number of employees whose salary is greater
> than \$50,000? Which SELECT would you use?
>
> Mark for Review
>
> \(1\) Points
>
> SELECT \* FROM employees WHERE salary \> 50000;
>
> SELECT \* FROM employees WHERE salary \< 50000;
>
> SELECT COUNT(\*) FROM employees WHERE salary \< 50000;
>
> SELECT COUNT(\*) FROM employees WHERE salary \> 50000;
>
> SELECT COUNT(\*) FROM employees WHERE salary \> 50000
>
> GROUP BY employee_id, last_name, first_name, salary, department_id;

59. Evaluate this SELECT statement:

> SELECT COUNT(\*)
>
> FROM products;

Which statement is true?

Mark for Review

> \(1\) Points
>
> The number of rows in the table is displayed.
>
> The number of unique PRODUCT_IDs in the table is displayed.
>
> An error occurs because no WHERE clause is included in the SELECT
> statement.

60. Evaluate this statement:

> SELECT department_id, AVG(salary) FROM employees
>
> WHERE job_id \<\> 69879
>
> GROUP BY job_id, department_id HAVING AVG(salary) \> 35000
>
> ORDER BY department_id;
>
> Which clauses restricts the result? Choose two.
>
> Mark for Review
>
> \(1\) Points
>
> (Choose all correct answers)
>
> SELECT department_id, AVG(salary)
>
> GROUP BY job_id, department_id
>
> HAVING AVG(salary) \> 35000

61. The PLAYERS and TEAMS tables contain these columns:

> PLAYERS
>
> PLAYER_ID NUMBER NOT NULL, Primary Key LAST_NAME VARCHAR2 (30) NOT
> NULL FIRST_NAME VARCHAR2 (25) NOT NULL TEAM_ID NUMBER
>
> POSITION VARCHAR2 (25)
>
> TEAMS
>
> TEAM_ID NUMBER NOT NULL, Primary Key TEAM_NAME VARCHAR2 (25)
>
> You need to create a report that lists the names of each team with
> more than five pitchers. Which SELECT statement will produce the
> desired result?
>
> Mark for Review
>
> \(1\) Points
>
> SELECT t.team_name, COUNT(p.player_id) FROM players p, teams t ON
> (p.team_id = t.team_id) WHERE UPPER(p.position) = \'PITCHER\'
>
> GROUP BY t.team_name;
>
> SELECT t.team_name, COUNT(p.player_id) FROM players JOIN teams t ON
> (p.team_id = t.team_id)
>
> WHERE UPPER(p.position) = \'PITCHER\' HAVING COUNT(p.player_id) \> 5;
>
> SELECT t.team_name, COUNT(p.player_id) FROM players p, teams t ON
> (p.team_id = t.team_id) WHERE UPPER(p.position) = \'PITCHER\'
>
> GROUP BY t.team_name HAVING COUNT(p.player_id) \> 5;
>
> SELECT t.team_name, COUNT(p.player_id)
>
> FROM players p JOIN teams t ON (p.team_id = t.team_id) WHERE
> UPPER(p.position) = \'PITCHER\'
>
> GROUP BY t.team_name HAVING COUNT(p.player_id) \> 5;
>
> (\*)

62. The MANUFACTURER table contains these columns:

> MANUFACTURER_ID NUMBER MANUFACTURER_NAME VARCHAR2(30) TYPE
> VARCHAR2(25)
>
> LOCATION_ID NUMBER
>
> You need to display the number of unique types of manufacturers at
> each location. Which SELECT statement should you use?
>
> Mark for Review
>
> \(1\) Points
>
> SELECT location_id, COUNT(DISTINCT type) FROM manufacturer
>
> GROUP BY location_id;
>
> (\*)
>
> SELECT location_id, COUNT(DISTINCT type) FROM manufacturer;
>
> SELECT location_id, COUNT(type) FROM manufacturer
>
> GROUP BY location_id;
>
> SELECT location_id, COUNT(DISTINCT type) FROM manufacturer
>
> GROUP BY type;

1.  The PLAYERS table contains these columns:

> PLAYER_ID NUMBER PK PLAYER_NAME VARCHAR2 (30) TEAM_ID NUMBER
>
> HIRE_DATE DATE SALARY NUMBER (8,2)
>
> Which two clauses represent valid uses of aggregate functions? (Choose
> three.)
>
> Mark for Review
>
> \(1\) Points
>
> (Choose all correct answers)
>
> ORDER BY AVG(salary)
>
> GROUP BY MAX(salary)
>
> SELECT AVG(NVL(salary, 0))
>
> HAVING MAX(salary) \> 10000
>
> WHERE hire_date \> AVG(hire_date)

65. Which statement about the GROUP BY clause is true? Mark for Review

> \(1\) Points
>
> To exclude rows before dividing them into groups using the GROUP BY
> clause, you use should a WHERE clause.
>
> You can use a column alias in a GROUP BY clause.
>
> By default, rows are not sorted when a GROUP BY clause is used.
>
> You must use the HAVING clause with the GROUP BY clause.

66. Evaluate this SELECT statement:

> SELECT SUM(salary), dept_id FROM employee
>
> GROUP BY dept_id;

How are the results of this statement sorted?

> Mark for Review
>
> \(1\) Points
>
> Ascending order by dept_id

Descending order by dept_id

> Ascending order by cumulative salary
>
> Descending order by cumulative salary

67. The EMPLOYEES table contains these columns:

> ID_NUMBER NUMBER Primary Key NAME VARCHAR2 (30) DEPARTMENT_ID NUMBER
> SALARY NUMBER (7,2)
>
> HIRE_DATE DATE
>
> Evaluate this SQL statement:
>
> SELECT id_number, name, department_id, SUM(salary) FROM employees
>
> WHERE salary \> 25000
>
> GROUP BY department_id, id_number, name ORDER BY hire_date;
>
> Why will this statement cause an error?
>
> Mark for Review
>
> \(1\) Points
>
> The HAVING clause is missing.
>
> The WHERE clause contains a syntax error.
>
> The SALARY column is NOT included in the GROUP BY clause.
>
> The HIRE_DATE column is NOT included in the GROUP BY clause.
>
> Incorrect Incorrect. Refer to Section 6
>
> Previous Page 67 of 100 Next Summary

68. Examine the structures of the CUSTOMER and ORDER_HISTORY tables:

> CUSTOMER
>
> CUSTOMER_ID NUMBER(5) NAME VARCHAR2(25) CREDIT_LIMIT NUMBER(8,2)
> OPEN_DATE DATE
>
> ORDER_HISTORY ORDER_ID NUMBER(5)
>
> CUSTOMER_ID NUMBER(5) ORDER_DATE DATE
>
> TOTAL NUMBER(8,2)
>
> Which of the following scenarios would require a subquery to return
> the desired results?
>
> Mark for Review
>
> \(1\) Points
>
> You need to display the date each customer account was opened.
>
> You need to display each date that a customer placed an order.
>
> You need to display all the orders that were placed on a certain date.
>
> You need to display all the orders that were placed on the same day as
> order number 25950.
>
> Incorrect Incorrect. Refer to Section 6
>
> Previous Page 68 of 100 Next Summary

69. Which operator can be used with a multiple-row subquery? Mark for
    Review

> \(1\) Points
>
> IN
>
> \<\>
>
> =
>
> LIKE

70. You need to create a report to display the names of products with a
    cost value greater than the average cost of all products. Which
    SELECT statement should you use? Mark for Review

> \(1\) Points
>
> SELECT product_name FROM products
>
> WHERE cost \> (SELECT AVG(cost) FROM product);
>
> (\*)
>
> SELECT product_name FROM products
>
> WHERE cost \> AVG(cost);
>
> SELECT AVG(cost), product_name FROM products
>
> WHERE cost \> AVG(cost) GROUP by product_name;
>
> SELECT product_name
>
> FROM (SELECT AVG(cost) FROM product) WHERE cost \> AVG(cost);

71. Using a subquery in which clause will return a syntax error? Mark
    for Review

> \(1\) Points
>
> WHERE
>
> FROM
>
> HAVING
>
> There are no places you cannot place subqueries.

72. You need to display all the players whose salaries are greater than
    or equal to John Brown\'s salary. Which comparison operator should
    you use? Mark for Review

> \(1\) Points
>
> =
>
> \>
>
> \<=
>
> \>=

73. Which best describes a single-row subquery? Mark for Review

> \(1\) Points
>
> a query that returns only one row from the inner SELECT statement
>
> a query that returns one or more rows from the inner SELECT statement
>
> a query that returns only one column value from the inner SELECT
> statement
>
> a query that returns one or more column values from the inner SELECT
> statement

74. Examine the structure of the EMPLOYEE, DEPARTMENT, and ORDERS
    tables.

> EMPLOYEE
>
> EMPLOYEE_ID NUMBER(9) LAST_NAME VARCHAR2(25) FIRST_NAME VARCHAR2(25)
> DEPARTMENT_ID NUMBER(9)
>
> DEPARTMENT
>
> DEPARTMENT_ID NUMBER(9) DEPARTMENT_NAME VARCHAR2(25) CREATION_DATE
> DATE
>
> ORDERS
>
> ORDER_ID NUMBER(9) EMPLOYEE_ID NUMBER(9) DATE DATE
>
> CUSTOMER_ID NUMBER(9)
>
> You want to display all employees who had an order after the Sales
> department was established. Which of the following constructs would
> you use?
>
> Mark for Review
>
> \(1\) Points
>
> a group function
>
> a single-row subquery
>
> the HAVING clause
>
> a MERGE statement

75. Which statement about the \<\> operator is true? Mark for Review

> \(1\) Points
>
> The \<\> operator is NOT a valid SQL operator.
>
> The \<\> operator CANNOT be used in a single-row subquery.
>
> The \<\> operator returns the same result as the ANY operator in a
> subquery.
>
> The \<\> operator can be used when a single-row subquery returns only
> one row.

76. Which operator or keyword cannot be used with a multiple-row
    subquery? Mark for Review

> \(1\) Points
>
> ALL
>
> ANY
>
> =
>
> \>

77. Which comparison operator would you use to compare a value to every
    value returned by a subquery? Mark for Review

> \(1\) Points
>
> SOME
>
> ANY
>
> ALL
>
> IN
>
> Correct Correct
>
> SELECT player_id, name FROM players
>
> WHERE team_id IN (SELECT team_id &nbspFROM teams
>
> &nbspWHERE team_id \> 300 AND salary_cap \> 400000);
>
> What would happen if the inner query returned a NULL value?
>
> Mark for Review
>
> \(1\) Points
>
> No rows would be returned by the outer query.
>
> A syntax error in the outer query would be returned.
>
> A syntax error in the inner query would be returned.
>
> All the rows in the PLAYER table would be returned by the outer query.

79. What would happen if you attempted to use a single-row operator with
    a multiple-row subquery? Mark for Review

> \(1\) Points
>
> An error would be returned.
>
> No rows will be selected.
>
> All the rows will be selected.
>
> The data returned may or may not be correct.
>
> Incorrect Incorrect. Refer to Section 6

80. Which best describes a multiple-row subquery? Mark for Review

> \(1\) Points
>
> A query that returns only one row from the inner SELECT statement
>
> A query that returns only one column value from the inner SELECT
> statement
>
> A query that returns one or more

81. Examine the structures of the PARTS and MANUFACTURERS tables:

> PARTS:
>
> PARTS_ID VARCHAR2(25)
>
> PK PARTS_NAME VARCHAR2(50) MANUFACTURERS_ID NUMBER COST NUMBER(5,2)
>
> PRICE NUMBER(5,2)
>
> MANUFACTURERS:
>
> ID NUMBER
>
> PK NAME VARCHAR2(30) LOCATION VARCHAR2(20)
>
> Which SQL statement correctly uses a subquery?
>
> Mark for Review
>
> \(1\) Points
>
> UPDATE parts SET price = price \* 1.15 WHERE manufacturers_id =
>
> (SELECT id
>
> &nbspFROM manufacturers
>
> &nbspWHERE UPPER(location) IN(\'ATLANTA \', \'BOSTON \', \'DALLAS
> \'));
>
> SELECT parts_name, price, cost FROM parts
>
> WHERE manufacturers_id != (SELECT id
>
> &nbspFROM manufacturers
>
> &nbspWHERE LOWER(name) = \'cost plus\');
>
> SELECT parts_name, price, cost FROM parts
>
> WHERE manufacturers_id IN (SELECT id
>
> &nbspFROM manufacturers m
>
> &nbspJOIN part p ON (m.id = p.manufacturers_id));
>
> (\*)
>
> SELECT parts_name
>
> FROM
>
> (SELECT AVG(cost)
>
> &nbspFROM manufacturers) &nbspWHERE cost \> AVG(cost);
>
> Correct Correct
>
> Previous Page 81 of 100 Next Summary

82. Which of the following best describes the meaning of the ANY
    operator? Mark for Review

> \(1\) Points
>
> Equal to any member in the list
>
> Compare value to each value returned by the subquery
>
> Compare value to every value returned by the subquery
>
> Equal to each value in the list

83. Which statement about single-row and multiple-row subqueries is
    true? Mark for Review

> \(1\) Points
>
> Multiple-row subqueries cannot be used with the LIKE operator.
>
> Single-row operators can be used with both single-row and multiple-row
> subqueries.
>
> Multiple-row subqueries can be used with both single-row and
> multiple-row operators.
>
> Multiple-row subqueries can only be used in SEL

84. Which statement about the ANY operator when used with a multiple-row
    subquery is true? Mark for Review

> \(1\) Points
>
> The ANY operator compares every value returned by the subquery.
>
> The ANY operator can be used with the DISTINCT keyword.
>
> The ANY operator is a synonym for the ALL operator.
>
> The ANY operator can be used with the LIKE and IN operators.

85. You need to create a SELECT statement that contains a multiple-row
    subquery, which comparison operator(s) can you use? Mark for Review

> \(1\) Points
>
> IN, ANY, and ALL
>
> LIKE
>
> BETWEEN\...AND\...
>
> =, \<, and \>

86. You need to display all the products that cost more than the maximum
    cost of every product produced in Japan. Which multiple-row
    comparison operator could you use? Mark for Review

> \(1\) Points
>
> \>ANY
>
> NOT=ALL
>
> IN
>
> \>IN

87. The STUDENTS table contains these columns:

> STU_ID NUMBER(9) NOT NULL LAST_NAME VARCHAR2 (30) NOT NULL FIRST_NAME
> VARCHAR2 (25) NOT NULL DOB DATE
>
> STU_TYPE_ID VARCHAR2(1) NOT NULL ENROLL_DATE DATE
>
> You create another table, named FT_STUDENTS, with an identical
> structure.You want to insert all full- time students, who have a
> STU_TYPE_ID value of \"F\", into the new table. You execute this
> INSERT statement:
>
> INSERT INTO ft_students
>
> (SELECT stu_id, last_name, first_name, dob, stu_type_id, enroll_date
> FROM students
>
> WHERE UPPER(stu_type_id) = \'F\');
>
> What is the result of executing this INSERT statement?
>
> Mark for Review
>
> \(1\) Points
>
> All full-time students are inserted into the FT_STUDENTS table.
>
> An error occurs because the FT_STUDENTS table already exists.
>
> An error occurs because the INSERT statement does NOT contain a VALUES
> clause.

88. The PRODUCTS table contains these columns:

> PROD_ID NUMBER(4) PROD_NAME VARCHAR2(25) PROD_PRICE NUMBER(3)
>
> You want to add the following row data to the PRODUCTS table:

(1) a NULL value in the PROD_ID column

(2) \"6-foot nylon leash\" in the PROD_NAME column

(3) \"10\" in the PROD_PRICE column

> You issue this statement:
>
> INSERT INTO products
>
> VALUES (null,\'6-foot nylon leash\', 10);
>
> What row data did you add to the table?
>
> Mark for Review

(1) Points

> The row was created with the correct data in two of three columns.
>
> The row was created with the correct data in one of the three columns.
>
> The row was created completely wrong. No data ended up in the correct
> columns.

89. You have been instructed to add a new customer to the CUSTOMERS
    table. Because the new customer has not had a credit check, you
    should not add an amount to the CREDIT column.

> The CUSTOMERS table contains these columns:
>
> CUST_ID NUMBER(10) COMPANY VARCHAR2(30) CREDIT NUMBER(10)
>
> POC VARCHAR2(30) LOCATION VARCHAR2(30)
>
> Which two INSERT statements will accomplish your objective?
>
> Mark for Review
>
> (Choose all correct answers)
>
> INSERT INTO customers (cust_id, company, poc, location) VALUES (200,
> \'InterCargo\', \'tflanders\', \'samerica\');
>
> (\*)
>
> INSERT INTO customers
>
> VALUES (200, \'InterCargo\', null, \'tflanders\', \'samerica\');
>
> (\*)
>
> INSERT INTO customers
>
> VALUES (cust_id, company, credit, poc, location) (200, \'InterCargo\',
> 0, \'tflanders\', \'samerica\');
>
> INSERT INTO customers
>
> VALUES (200, InterCargo, 0, tflanders, samerica);

90. You need to add a row to an existing table. Which DML statement
    should you use? Mark for Review

> UPDATE
>
> INSERT
>
> DELETE
>
> CREATE

91. You need to update both the DEPARTMENT_ID and LOCATION_ID columns in
    the EMPLOYEE table using one UPDATE statement. Which clause should
    you include in the UPDATE statement to update multiple columns? Mark
    for Review

> \(1\) Points
>
> the USING clause
>
> the ON clause
>
> the WHERE clause
>
> the SET clause

92. What keyword in an UPDATE statement speficies the columns you want
    to change? Mark for Review

> \(1\) Points
>
> SELECT
>
> WHERE
>
> SET
>
> HAVING

93. One of the sales representatives, Janet Roper, has informed you that
    she was recently married, and she has requested that you update her
    name in the employee database. Her new last name is Cooper. Janet is
    the only person with the last name of Roper that is employed by the
    company. The EMPLOYEES table contains these columns and all data is
    stored in lowercase:

> EMP_ID NUMBER(10) PRIMARY KEY LNAME VARCHAR2(20)
>
> FNAME VARCHAR2(20) DEPT VARCHAR2 (20) HIRE_DATE DATE SALARY NUMBER(10)
>
> Which UPDATE statement will accomplish your objective?
>
> Mark for Review
>
> \(1\) Points
>
> UPDATE employees SET lname = \'cooper\' WHERE lname = \'roper\';
>
> (\*)
>
> UPDATE employees lname = \'cooper\' WHERE lname = \'roper\';
>
> UPDATE employees SET lname = \'roper\'
>
> WHERE lname = \'cooper\';
>
> UPDATE employees SET cooper = \'lname\' WHERE lname = \'roper\';

94. Which two commands can be used to modify existing data in a database
    row? Mark for Review

> \(1\) Points
>
> (Choose all correct answers)
>
> DELETE
>
> INSERT
>
> SELECT
>
> UPDATE

95. You need to delete a record in the EMPLOYEES table for Tim Jones,
    whose unique employee identification number is 348. The EMPLOYEES
    table contains these columns:

> ID_NUM NUMBER(5) PRIMARY KEY LNAME VARCHAR2(20)
>
> FNAME VARCHAR2(20) ADDRESS VARCHAR2(30) PHONE NUMBER(10)
>
> Which DELETE statement will delete the appropriate record without
> deleting any additional records?
>
> Mark for Review
>
> \(1\) Points
>
> DELETE FROM employees WHERE id_num = 348;
>
> DELETE FROM employees WHERE lname = jones;
>
> DELETE \* FROM employees WHERE id_num = 348;
>
> DELETE \'jones\' FROM employees;
>
> Incorrect Incorrect. Refer to Section 7

96. The TEACHERS and CLASS_ASSIGNMENTS tables contain these columns:

> TEACHERS
>
> TEACHER_ID NUMBER(5) NAME VARCHAR2(25) SUBJECT_ID NUMBER(5) HIRE_DATE
> DATE SALARY NUMBER(9,2)
>
> CLASS_ASSIGNMENTS CLASS_ID NUMBER(5) TEACHER_ID NUMBER(5) START_DATE
> DATE MAX_CAPACITY NUMBER(3)
>
> Which scenario would require a subquery to return the desired results?
>
> Mark for Review
>
> \(1\) Points
>
> You need to display the start date for each class taught by a given
> teacher.
>
> You need to create a report to display the teachers who were hired
> more than five years ago.
>
> You need to display the names of the teachers who teach classes that
> start within the next
>
> week.
>
> You need to create a report to display the teachers who teach more
> classes than the average number of classes taught by each teacher.
>
> Incorrect Incorrect. Refer to Section 7

96. The TEACHERS and CLASS_ASSIGNMENTS tables contain these columns:

> TEACHERS
>
> TEACHER_ID NUMBER(5) NAME VARCHAR2(25) SUBJECT_ID NUMBER(5) HIRE_DATE
> DATE SALARY NUMBER(9,2)
>
> CLASS_ASSIGNMENTS CLASS_ID NUMBER(5)
>
> TEACHER_ID NUMBER(5) START_DATE DATE MAX_CAPACITY NUMBER(3)
>
> Which scenario would require a subquery to return the desired results?
>
> Mark for Review
>
> \(1\) Points
>
> You need to display the start date for each class taught by a given
> teacher.
>
> You need to create a report to display the teachers who were hired
> more than five years ago.
>
> You need to display the names of the teachers who teach classes that
> start within the next
>
> week.
>
> You need to create a report to display the teachers who teach more
> classes than the average number of classes taught by each teacher.

97. Examine the structures of the PRODUCTS and SUPPLIERS tables:

> SUPPLIERS
>
> SUPPLIER_ID NUMBER NOT NULL, Primary Key
>
> SUPPLIER_NAME VARCHAR2 (25)
>
> ADDRESS VARCHAR2 (30)
>
> CITY VARCHAR2 (25)
>
> REGION VARCHAR2 (10)
>
> POSTAL_CODE VARCHAR2 (11)
>
> PRODUCTS
>
> PRODUCT_ID NUMBER NOT NULL, Primary Key PRODUCT_NAME VARCHAR2 (25)
>
> SUPPLIER_ID NUMBER Foreign key to SUPPLIER_ID of the SUPPLIERS table
> CATEGORY_ID NUMBER
>
> QTY_PER_UNIT NUMBER UNIT_PRICE NUMBER (7,2) QTY_IN_STOCK NUMBER
> QTY_ON_ORDER NUMBER REORDER_LEVEL NUMBER
>
> You want to delete any products supplied by the five suppliers located
> in Atlanta. Which script should you use?
>
> Mark for Review
>
> \(1\) Points
>
> DELETE FROM products WHERE supplier_id IN
>
> (SELECT supplier_id
>
> FROM suppliers
>
> WHERE UPPER(city) = \'ATLANTA\');
>
> (\*)
>
> DELETE FROM products WHERE UPPER(city) = \'ATLANTA\';
>
> DELETE FROM products WHERE supplier_id =
>
> (SELECT supplier_id FROM suppliers
>
> WHERE UPPER(city) = \'ATLANTA\');
>
> DELETE FROM products WHERE supplier_id IN
>
> (SELECT supplier_id FROM suppliers
>
> WHERE UPPER(city) = \'ALANTA\');

97. Examine the structures of the PRODUCTS and SUPPLIERS tables:

> SUPPLIERS
>
> SUPPLIER_ID NUMBER NOT NULL, Primary Key SUPPLIER_NAME VARCHAR2 (25)
>
> ADDRESS VARCHAR2 (30)
>
> CITY VARCHAR2 (25)
>
> REGION VARCHAR2 (10)
>
> POSTAL_CODE VARCHAR2 (11)
>
> PRODUCTS
>
> PRODUCT_ID NUMBER NOT NULL, Primary Key PRODUCT_NAME VARCHAR2 (25)
>
> SUPPLIER_ID NUMBER Foreign key to SUPPLIER_ID of the SUPPLIERS table
> CATEGORY_ID NUMBER
>
> QTY_PER_UNIT NUMBER UNIT_PRICE NUMBER (7,2) QTY_IN_STOCK NUMBER
> QTY_ON_ORDER NUMBER REORDER_LEVEL NUMBER
>
> You want to delete any products supplied by the five suppliers located
> in Atlanta. Which script should you use?
>
> Mark for

98. What would happen if you issued a DELETE statement without a WHERE
    clause? Mark for Review

> \(1\) Points
>
> All the rows in the table would be deleted.
>
> An error message would be returned.
>
> No rows would be deleted.
>
> Only one row would be deleted.
>
> Incorrect Incorrect. Refer to Section 7

99. The EMPLOYEES table contains the following columns:

> EMP_ID NUMBER(10) PRIMARY KEY LNAME VARCHAR2(20)
>
> FNAME VARCHAR2(20) DEPT VARCHAR2(20) HIRE_DATE DATE SALARY NUMBER(9,2)
>
> BONUS NUMBER(9,2)
>
> You want to execute one DML statement to change the salary of all
> employees in department 10 to equal the new salary of employee number
> 89898. Currently, all employees in department 10 have the same salary
> value. Which statement should you execute?

Mark for Review

> \(1\) Points
>
> UPDATE employee SET salary = SELECT salary FROM employee

WHERE emp_id = 89898;

> UPDATE employee
>
> SET salary = (SELECT salary FROM employee WHERE emp_id = 89898);
>
> UPDATE employee
>
> SET salary = (SELECT salary FROM employee WHERE emp_id = 89898) WHERE
> dept = 10;
>
> (\*)
>
> UPDATE employee
>
> SET salary = (SELECT salary FROM employee WHERE emp_id = 89898 AND
> dept = 10);

100. Which of the following represents the correct syntax for an INSERT
     statement? Mark for Review

> \(1\) Points
>
> INSERT VALUES INTO customers (3178 J. Smith 123 Main Street Nashville
> TN 37777;
>
> INSERT INTO customers VALUES \'3178\' \'J.\' \'Smith\' \'123 Main
> Street\' \'Nashville\' \'TN\' \'37777\';
>
> INSERT INTO customers VALUES (\'3178\', \'J.\', \'Smith\', \'123 Main
> Street\', \'Nashville\', \'TN\', \'37777\');
>
> (\*)
>
> INSERT customers VALUES 3178, J., Smith, 123 Main Street, Nashville,
> TN, 37777;
>
> Test: Mid Term Exam - Database Programming with SQL
>
> Review your answers, feedback, and question scores below. An asterisk
> indicates a correct answer.
>
> Section 1 Lesson 1
>
> (Answer all questions in this section)
