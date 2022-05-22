create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    company   varchar(20) null,
    constraint id
        unique (id)
);

create table customers_order_association
(
    id           int auto_increment
        primary key,
    customers_id int not null,
    orders_id    int not null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment
        primary key,
    product    varchar(20) null,
    cost       int         null,
    customerId int         null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (customerId) references customers (id)
);

create index customerId
    on orders (customerId);
    
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Matt', 'Ryan', 'Microsoft');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Joseph', 'Neal', 'Google');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'greg', 'bonny', 'Meta');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'jett', 'bonny', 'Apple');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'Mike', 'fisher', 'logitech');




INSERT INTO orders (product, cost, customerId) VALUES ('Laptop', '1000', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('phone', '500', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Desktop', '1500', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Desktop', '1200', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('phone', '500', 4);
INSERT INTO orders (product, cost, customerId) VALUES ('xbox', '299', 5);

INSERT INTO customers_order_association (customers_id, orders_id) VALUES (1,1);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (2,2);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (3,3);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (2,2);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (4,4);
INSERT INTO customers_order_association (customers_id, orders_id) VALUES (5,5);


SELECT * from orders;
SELECT * from customers;
SELECT * from customers_order_association;

SELECT * from orders
Limit 1;

SELECT * from customers
LIMIT 2;

SELECT * from customers_order_association
LIMIT 3;

DELETE FROM customers WHERE FirstName='Matt';
DELETE FROM customers WHERE FirstName='Joseph';


SELECT Orders.customerId, Customers.firstname
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.id;

SELECT Orders.customerId, Customers.firstname
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.id where customerId = 2;

SELECT Orders.customerId, Customers.firstname
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.id where customerId = 3;


