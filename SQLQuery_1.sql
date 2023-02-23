--Welcome to Address Book System Database
-- UC_1 - To create database
CREATE DATABASE AddressBookService
-- To use created database
USE AddressBookService

-- UC_2 - To create table
CREATE TABLE AddressBook(
    firstname VARCHAR(200) not null,
    lastname VARCHAR(200) not null,
    address VARCHAR(250) not null,
    city VARCHAR(50),
    state VARCHAR(100),
    zip int,
    phonenumber bigint,
    email VARCHAR(300) not null
)