CREATE TABLE countries(
    country_name VARCHAR(30),
    country_id int AUTO_INCREMENT PRIMARY KEY,
    region_id VARCHAR(30)
);
INSERT INTO countries (country_name) 
VALUES ("Italy"),("India"),("China");

CREATE TABLE jobs(
    job_id int AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(20), 
    min_salary int,
    max_salary int, 
    CHECK(max_salary<='25000')
);
CREATE TABLE job_history(
    employee_id int AUTO_INCREMENT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id int, 
    department_id int
);
SELECT * FROM products;
/* available products*/
SELECT product_name, id FROM products WHERE discontinued = 0;
/*discontinued products*/
SELECT product_name, id FROM products WHERE discontinued = 1;
SELECT product_name, quantity_per_unit FROM products;
SELECT id FROM products;
SELECT product_name FROM products;
SELECT discontinued, product_name FROM products;
/* most expensive product and product name */
SELECT product_name, list_price FROM products WHERE list_price = (SELECT MAX(list_price) FROM products);
/* least expensive product and product name */
SELECT product_name, list_price FROM products WHERE list_price = (SELECT MIN(list_price) FROM products);
SELECT * FROM products WHERE list_price < 20;
SELECT * FROM products WHERE list_price BETWEEN 15 AND 25;
/* 10 most expensive products */
SELECT list_price FROM products ORDER BY list_price DESC LIMIT 10;
SELECT COUNT(list_price) FROM products WHERE discontinued = 0;
SELECT COUNT(list_price) FROM products WHERE discontinued = 1;