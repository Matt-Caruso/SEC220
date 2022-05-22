create table customers
(
    id          int auto_increment
        primary key,
    firstname   varchar(20) null,
    lastname    varchar(20) null,
    phoneNumber varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id       int auto_increment
        primary key,
    customer int not null,
    prod     int not null,
    constraint id
        unique (id)
);

create table products
(
    productId  int auto_increment
        primary key,
    productSku int         null,
    productD   varchar(20) null,
    constraint productId
        unique (productId)
);


