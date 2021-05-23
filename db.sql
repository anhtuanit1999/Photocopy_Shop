CREATE DATABASE [photocopy_shop]
USE [photocopy_shop]
CREATE TABLE users (
    id int IDENTITY(1,1) PRIMARY KEY,
    name varchar(255) NOT NULL
);