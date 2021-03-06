1. 	CREATE TABLE months (id int, name varchar (10), days int);

2. 	CREATE TABLE Users (UserId int, FirstName varchar(100) NOT NULL, 
	LastName varchar(100) NOT NULL, 
	City varchar(100), 
	PRIMARY KEY(UserId);

3. 	CREATE TABLE Users (UserId int NOT NULL AUTO INCREMENT, 
	FirstName varchar(100) NOT NULL, 
	LastName varchar(100) NOT NULL, 
	City varchar(100), PRIMARY KEY(UserId); - Adding a new line, AUTO INCREMENT creates a value of the primary key automatically. 

4. 	INSERT INTO months (id, name, days) VALUES (1, 'January', 31);

5. 	INSERT INTO students (name, university) VALUES ('Peter Parker', 'Stanford');

6. 	SELECT * FROM table;

7. 	SELECT name FROM table ORDER BY name DESK; 

8. 	SELECT name FROM table ORDER BY name ASK;

9.	SELECT * FROM items 
	WHERE cost > 456 
	ORDER BY cost DESK;

10. 	SELECT * FROM cars 
	WHERE name = 'opel'; 

11. 	SELECT * FROM albums 
	WHERE genre = 'rock' 
	AND sales <=50;

12. 	SELECT cars.name, owners.name FROM cars 
	INNER JOIN owners 
	ON owners.id = cars.id;

13. 	SELECT cars.name, owners.name FROM car_owners 
	INNER JOIN cars 
	ON cars.id = car_owners.id 
	INNER JOIN owners 
	ON owners.id = car_owners.id;

14. 	SELECT MAX(realeased) FROM albums; - maximum value in a column.

15. 	SELECT MIN(realeased) FROM albums; - minimum value in a column.

16. 	SELECT AVG(age) FROM students; - average value in a column.

17.	SELECT AVG(Salary) FROM employees;

18.	SELECT SUM(Salary) FROM employees;

19. 	SELECT name, AVG(age) FROM students GROUP BY name;

20. 	SELECT artist, album, realeased FROM albums 
	WHERE realeased = (SELECT MIN(realeased) FROM albums);

21. 	UPDATE tv_series 
	SET genre = 'drama' 
	WHERE name = 'Game of Thrones';

22.	UPDATE Employees 
	SET Salary = 500 
	WHERE id = 1;

23. 	DELETE FROM cars WHERE id=4;

24. 	DELETE * FROM table;

25. 	DROP TABLE table_names;

26. 	SELECT DISTINCT city FROM customers; - only unique values (remove all duplicates).

27. 	SELECT name, surname, city FROM customers LIMIT 5; - the first 5 lines from the table.

28. 	SELECT name, surname, city FROM customers LIMIT 2, 10; - the first 10 lines starting from the 2nd line ( the 1st line always starts from 0). 

29. 	SELECT name FROM students 
	UNION 
	SELECT city FROM adress; - remove all dublicates.

30. 	SELECT name FROM students 
	UNION ALL 
	SELECT city FROM adress; - all dublicates are in.

31.	ALTER TABLE People ADD DataOfBirth int; - add a new column to a table (All valus are NULL).

32.	ALTER TABLE Students ADD speciality varchar(50);

33.	ALTER TABLE People DROP COLUMN DataOfBirth; - remove a column.

34.	ALTER TABLE People CHANGE FirstName name varchar(100); - rename a column.

35.	RENAME TABLE People TO Users;

36.	SELECT * FROM customers 
	WHERE balance > 1000 
	AND city = 'NY' 
	LIMIT 100;

37.	SELECT * FROM customers 
	WHERE balanve > 1000 
	OR city = 'NY' 
	LIMIT 100;

38.	SELECT City FROM customers; = SELECT customers.City FROM customers;

39.	SELECT * FROM customers WHERE id !=5;

40.	SELECT * FROM customers 
	WHERE id BETWEEN 3 AND 7; - choose all lines with id between 3 and 7.

41.	SELECT FirstName, LastName, City FROM customers 
	WHERE City = 'New York';

42.	SELECT FirstName, LastName, City FROM customers 
	WHERE age >=30 AND age <=40;

43.	SELECT name, state, city FROM customers 
	WHERE state = 'CA' OR city = 'Boston';

44.	SELECT * FROM customers 
	WHERE City = 'NY' AND (Age=30 OR Age=35);

45.	SELECT * FROM customers 
	WHERE City = 'NY' OR City = 'LA' OR City = 'Chicago'; 
	-------> = SELECT * FROM customers WHERE City IN ('NY', 'LA', 'Chicago');

46.	SELECT * FROM customers 
	WHERE City NOT IN ('NY', 'LA', 'Chicago'); - clients from THESE cities are removed.

47.	SELECT name, state FROM customers 
	WHERE state NOT IN ('CA', 'NY');

48.	SELECT FirstName, Salary FROM employees 
	WHERE Salary > (SELECT AVG(Salary) FROM employees) 
	ORDER BY Salary DESK;

49.	SELECT * FROM employees 
	WHERE FirstName LIKE 'A%'; - starts with A.

50.	SELECT * FROM employees 
	WHERE FirstName LIKE '%s'; - ends with s.

51.	SELECT name, MIN(cost) FROM items 
	WHERE name LIKE '%boxes oof frogs' AND seller_id IN(33,1,67);