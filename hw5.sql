create table author
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    email     varchar(20) null,
    constraint id
        unique (id)
);

create table author_book_association
(
    id        int auto_increment
        primary key,
    author_id varchar(30) not null,
    book_id   int         not null,
    constraint id
        unique (id)
);

create table book
(
    id           int auto_increment
        primary key,
    title        varchar(30) not null,
    publish_date date        null,
    constraint id
        unique (id)
);


