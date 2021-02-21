SELECT * FROM employees;
UPDATE employees SET email_address = 'not available';
UPDATE employees 
SET email_address ='classified',
    first_name = 'Dave';

UPDATE employees
SET email_address = 'super top secret',
	last_name = 'McSalesman'
WHERE job_title = 'Sales Representative';

UPDATE employees
SET web_page = 'https://en.wikipedia.org/wiki/Seattle'
WHERE city = 'Seattle';

UPDATE orders
SET ship_name = 'Roland Andersen',
	ship_address= '123 8th Street'
WHERE ship_name = 'Roland Wacker';

-
SELECT orders.status_id, order_details_status.id
FROM orders
INNER JOIN order_details_status ON orders.status_id = order_details_status.id;

SELECT orders.ship_name, orders.customer_id, orders.id, order_details_status.status_name
FROM orders
INNER JOIN order_details_status ON orders.status_id = order_details_status.id;
-
