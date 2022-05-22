create table actors
(
    id         int auto_increment
        primary key,
    first_name varchar(30) null,
    last_name  varchar(30) null,
    constraint id
        unique (id)
);

create table directors
(
    id         int auto_increment
        primary key,
    first_name varchar(30) null,
    last_name  varchar(30) null,
    constraint id
        unique (id)
);

create table movieactors
(
    id        int auto_increment,
    movies_id int not null,
    actors_id int not null,
    constraint id
        unique (id)
);

create table movies
(
    id           int auto_increment
        primary key,
    title        varchar(30) null,
    release_year smallint    null,
    genre        varchar(30) null,
    directorID   int         null,
    constraint id
        unique (id),
    constraint movies_ibfk_1
        foreign key (directorID) references directors (id)
);

create index directorID
    on movies (directorID);


