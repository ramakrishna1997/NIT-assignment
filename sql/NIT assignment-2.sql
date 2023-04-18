USE sl;
-- customers(custid,custmername,product,prize)
-- create table product(productid,productname,price)
CREATE TABLE customers(cust_id INT NOT NULL , cust_name VARCHAR(50) NOT NULL,product_name VARCHAR(50),price INT not null,primary key(cust_id) );
DROP TABLE customers;
select * from customers;

-- CREATE TABLE product(product_id INT NOT NULL,product_name VARCHAR(50),price INT,coustersid INT,FOREIGN KEY(coustmersid) REFERENCES coustmers(cust_id))
CREATE TABLE product (
    product_id int NOT NULL,
    product_name varchar(50),
    price int,
    cust_id int,
    PRIMARY KEY (product_id),
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);
DROP TABLE  product;
select * from customers;

INSERT INTO customers(cust_id,cust_name,product_name,price) values(1,"Rama krishna","Iphone",450000);
INSERT INTO customers(cust_id,cust_name,product_name,price) values(2,"Sai krishna","Laptop",300000);
INSERT INTO customers(cust_id,cust_name,product_name,price) values(3,"Naveen","washing mechine",250000);
INSERT INTO customers(cust_id,cust_name,product_name,price) values(4,"Yashwanth","PC",600000);
INSERT INTO customers(cust_id,cust_name,product_name,price) values(5,"Shekar","Realme",200000);
INSERT INTO customers(cust_id,cust_name,product_name,price) values(6,"Johnny","MI",400000);
INSERT INTO customers(cust_id,cust_name,product_name,price) values(7,"Rakesh","Book self",40000);

INSERT INTO product(product_id,product_name,price,cust_id) values(101,'Iphone',450000,1);
INSERT INTO product(product_id,product_name,price,cust_id) values(102,'Laptop',300000,2);
INSERT INTO product(product_id,product_name,price,cust_id) values(103,'washing mechine',250000,3);
INSERT INTO product(product_id,product_name,price,cust_id) values(104,'PC',600000,4);
INSERT INTO product(product_id,product_name,price,cust_id) values(105,'Realme',200000,5);
INSERT INTO product(product_id,product_name,price,cust_id) values(106,'MI',400000,6);
INSERT INTO product(product_id,product_name,price,cust_id) values(107,'Book self',40000,7);

SELECT * FROM product;
SELECT * FROM customers;

select a.cust_id,a.cust_name,a.product_name,a.price from customers c
JOIN product p ON p.cust_id = a.cust_id;

SELECT c.cust_id, c.cust_name, p.product_name, c.price	
FROM customers c
INNER JOIN product p ON p.price = c.price

-- set a relation between customers and products
-- what are the other constraints u can add to the tables?


ALTER TABLE product
ADD FOREIGN KEY (cust_id)
REFERENCES customers(cust_id);

truncate table product;
truncate table customers;
ALTER TABLE customers DROP  constraint cust_id;

describe product

-- update dateofjoin set dt_j=date_format(dt_j,"%d/%m/%y");








