create table users (
                       id                    bigint auto_increment,
                       first_name              varchar(100) not null,
                       last_name              varchar(100) not null,
                       age                   TINYINT not null,
                       email                 varchar(100) unique not null ,
                       password              varchar(64) not null,
                       primary key (id)
);

create table roles (
                       id                    TINYINT auto_increment,
                       name                  varchar(50) not null,
                       primary key (id)
);

CREATE TABLE users_roles (
                             user_id               bigint not null,
                             role_id               TINYINT not null,
                             primary key (user_id, role_id),
                             foreign key (user_id) references users (id),
                             foreign key (role_id) references roles (id)
);

insert into roles (name) values ('ROLE_USER'), ('ROLE_ADMIN');

# password = 100
insert into users (first_name, last_name, age, email, password) values ('Oleg', 'Konovalov', 25, 'user@gmail.com', '$2a$04$Fx/SX9.BAvtPlMyIIqqFx.hLY2Xp8nnhpzvEEVINvVpwIPbA3v/.i');

insert into users_roles (user_id, role_id) values (1, 1), (1, 2);