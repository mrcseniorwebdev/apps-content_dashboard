create user IF NOT EXISTS 'user'@'%' identified by 'pass';
grant all privileges on *.* to 'user'@'%' with grant option;
flush privileges;
create database if not exists content_dashboard;
use content_dashboard;

create table if not exists users (
    uid int NOT NULL AUTO_INCREMENT,
    gid varchar(255),
    email varchar(255),
    name varchar(255),
    picture varchar(255),
    PRIMARY KEY (uid)
);
create table if not exists content_queue (
    id int NOT NULL AUTO_INCREMENT,
    section text NOT NULL,
    nid int NOT NULL,
    title text NOT NULL,
    link text NOT NULL,
    author text NOT NULL,
    unix_time int NOT NULL,
    severity int NOT NULL,
    social_media text NOT NULL,
    
    PRIMARY KEY (id)
);

INSERT INTO users (email) VALUES ('jjones@mrc.org');