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
