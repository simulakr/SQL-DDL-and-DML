--1. Creating Sales Table 

CREATE TABLE sales( 
  purchase_number INT PRIMARY KEY,
  date_of_purchase DATE NOT NULL,
  customer_id INT not NULL,
  item_code VARCHAR(10) not NULL 
)

--2. Creating Customers Table 

CREATE TABLE customers(
  customer_id INT PRIMARY key,
  first_name varchar(255) not NULL,
  last_name varchar(255) not NULL,
  email_adress varchar(255),
  number_of_complaints INT
)
  
--3. Creating Items Table  

CREATE TABLE items(
  item_code VARCHAR(10) PRIMARY key,
  item varchar(255),
  unit_price_usd DECIMAL(5,2),
  company_id INT,
  company_name VARCHAR(255) NOT NULL
)

--4. Inserting Data Sales Table 

INSERT INTO sales (purchase_number, date_of_purchase, customer_id, item_code) VALUES (1, '2025-01-01', 1, 5)
INSERT into sales (purchase_number, date_of_purchase, customer_id, item_code) VALUES (2, '2025-01-08', 5, 4)
INSERT INTO sales (purchase_number, date_of_purchase, customer_id, item_code) VALUES (3, '2025-01-15', 4, 3)
INSERT into sales (purchase_number, date_of_purchase, customer_id, item_code) VALUES (4, '2025-01-22', 3, 1)
INSERT INTO sales (purchase_number, date_of_purchase, customer_id, item_code) VALUES (5, '2025-01-29', 2, 3)

--5. Inserting Data Customers Table 

INSERT into customers (customer_id, first_name, last_name, email_adress, number_of_complaints) VALUES (1, 'Magnus','Carslen', 'magnus@gmail.com', 2)
INSERT into customers (customer_id, first_name, last_name, email_adress, number_of_complaints) VALUES (2, 'Anna','Kramnik', 'anna@gmail.com', 6)
INSERT into customers (customer_id, first_name, last_name, email_adress, number_of_complaints) VALUES (3, 'Alexandra','Botez', 'axbot@gmail.com', 5) 
INSERT into customers (customer_id, first_name, last_name, email_adress, number_of_complaints) VALUES (4, 'Fabiano','Caruana', 'fabiano@gmail.com', 0) 
INSERT into customers (customer_id, first_name, last_name, email_adress, number_of_complaints) VALUES (5, 'Hikaru','Nakamura', 'hika@gmail.com', 1) 

--6. Inserting Data Items Table 

INSERT INTO items (item_code, item, unit_price_usd, company_id, company_name ) VALUES (1, 'toy', 15.5, 1,'toysros') 
INSERT INTO items (item_code, item, unit_price_usd, company_id, company_name ) VALUES (2, 'table', 100, 2,'bellona') 
INSERT INTO items (item_code, item, unit_price_usd, company_id, company_name ) VALUES (3, 'chair', 93, 2,'bellona') 
INSERT INTO items (item_code, item, unit_price_usd, company_id, company_name ) VALUES (4, 'pencil', 1.93, 1,'toysros') 
INSERT INTO items (item_code, item, unit_price_usd, company_id, company_name ) VALUES (5, 'eraser', 1.1, 1,'toysros')

-- Overview Tables

SELECT * FROM sales 
SELECT * FROM customers
SELECT * FROM items

--7. Create Companies Table and insert companies.

CREATE TABLE companies( 
  company_id INT PRIMARY KEY,
  company_name VARCHAR(255) not NULL,
  phone varchar(255)
)

INSERT into companies (company_id, company_name, phone) VALUES (1, 'toysros','05123456789')
INSERT into companies (company_id, company_name, phone) VALUES (2, 'bellona','0555555555') 
INSERT into companies (company_id, company_name, phone) VALUES (3, 'dercos','05010126789')

SELECT * from companies

--8. Creating sales_duplicate Table

CREATE TABLE sales_dup( 
  purchase_number INT PRIMARY KEY,
  date_of_purchase DATE NOT NULL,
  customer_id INT not NULL,
  item_code VARCHAR(10) not NULL 
)

--9. Creating customers_duplicate Table 

CREATE TABLE customers_dup(
  customer_id INT PRIMARY key,
  first_name varchar(255) not NULL,
  last_name varchar(255) not NULL,
  email_adress varchar(255),
  number_of_complaints INT
)

--10. Inserting Data Sales_dup Table

INSERT into sales_dup 
SELECT * FROM sales

SELECT * FROM sales_dup

--10. Inserting Data customers_dup Table

INSERT into customers_dup 
SELECT * FROM customers

SELECT * FROM customers_dup

--11. Add column customers_dup Table

ALTER TABLE customers_dup 
ADD COLUMN gender CHAR(2)

SELECT * FROM customers_dup

--12. Add data customers_dup Table

INSERT INTO customers_dup 
VALUES (6, 'Garry','Kasparov', 'karpov@gmail.com', 9, 'M'),
(7, 'Anatoly','Karpov', 'anatkarpov@gmail.com', 3, 'M')

--13. Rename sales_dup Table

ALTER table sales_dup 
RENAME to sales_data

--14. Rename column unit_price_usd  items Table

ALTER TABLE items 
RENAME unit_price_usd to items_price

--15. Update the gender column of first 5 records.

UPDATE customers_dup 
set gender = 'M' 
WHERE customer_id < 6

--16. Drop customers_dup Table

DROP TABLE customers_dup

--17. Truncate sales_data Table

TRUNCATE TABLE sales_data;
SELECT * FROM sales_data

--18. Delete row companies table

DELETE FROM companies 
WHERE company_id=3

---
DELETE FROM companies 

