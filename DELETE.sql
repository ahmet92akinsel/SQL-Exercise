SELECT * FROM orders;
SELECT * FROM order_details;
SELECT * FROM invoices;

DELETE FROM invoices
WHERE order_id=30;


DELETE FROM order_details
WHERE order_id= 30;

DELETE FROM orders
WHERE id = 30;


DELETE FROM invoices
WHERE
shipping_address = 'New York';

DROP TABLE employee;
DROP DATABASE northwind;
