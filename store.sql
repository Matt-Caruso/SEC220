CREATE DATABASE Store;
USE Store;

CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE orders
(
    id         int NOT NULL UNIQUE AUTO_INCREMENT,
    product    varchar(20),
    cost       int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers (id)
);

CREATE TABLE customers_order_association
(
    id         int  AUTO_INCREMENT
    primary key,
    customers_id int not null,
    orders_id int not null,
    constraint id
    unique (id)
);

INSERT INTO customers (firstname, lastname, company) VALUES ( 'Matt', 'Ryan', 'Microsoft');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Joseph', 'Neal', 'Google');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'greg', 'bonny', 'Meta');


INSERT INTO orders (product, cost, customerId) VALUES ('Laptop', '1000', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('phone', '500', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Desktop', '1500', 3);


INSERT INTO customers_order_association (customers_id, orders_id) VALUES (1,1);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (2,2);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (2,2);

SELECT * from orders;
SELECT * from customers;
SELECT * from customers_order_association;

SELECT * from orders
Limit 1;

SELECT * from customers
LIMIT 2;

SELECT * from customers_order_association
LIMIT 3;