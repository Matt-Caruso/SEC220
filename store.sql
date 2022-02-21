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

INSERT INTO customers (firstname, lastname, company) VALUES ( 'Matt', 'Ryan', 'Microsoft');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Joseph', 'Neal', 'Google');


INSERT INTO orders (product, cost, customerId) VALUES ('Laptop', '1000', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('phone', '500', 1);

INSERT INTO orders (product, cost, customerId) VALUES ('Laptop', '2000', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('phone', '400', 2);

SELECT * from orders;
SELECT * from customers;