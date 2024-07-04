create table if not exists `user`
(
    id int auto_increment primary key ,
    name varchar(20) not null ,
    insert_time datetime not null default current_timestamp,
    update_time datetime not null  default  current_timestamp on update current_timestamp
);

create table if not exists `new`
(
    id int auto_increment primary key ,
    name varchar(100) not null ,
    info varchar(300) not null ,/*新闻信息*/
    type tinyint not null ,
    insert_time datetime not null default current_timestamp,
    update_time datetime not null  default  current_timestamp on update current_timestamp
);
create table if not exists `teacher`
(
    id int auto_increment primary key ,
    name varchar(20) not null ,
    title varchar(20) not null ,
    info varchar(300) not null ,
    insert_time datetime not null default current_timestamp,
    update_time datetime not null  default  current_timestamp on update current_timestamp
);