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

-- UC_3 - To insert values in table
INSERT into AddressBook VALUES
('Piyush','Shaw','13 MG Road','Kolkata','WestBengal',700304,09876543210,'piyush@gmail.com'),
('Ashwani','Karma','18 Street Road','Raipur','Chattisgarh',408304,09809843210,'ashwani@gmail.com'),
('Ankita','Singh','35 Camac Street Road','Howrah','WestBengal',700190,08765543210,'ankita@gmail.com'),
('Ravi','Singh','67 Mango Road','Jamshedpur','Jharkhand',611304,09987657810,'ravi@gmail.com')
-- To display table
SELECT * FROM AddressBook

-- UC_4 - To edit existing contact using their name
UPDATE AddressBook set phonenumber=9432143212 WHERE firstname='Piyush'

-- UC_5 - To delete existing contact using their name
DELETE from AddressBook WHERE firstname='Ashwani'

-- UC_6 - To retrieve person detail using city or state 
SELECT * from AddressBook WHERE city='Howrah' or state='WestBengal'

-- UC_7 - To retrieve count of addressbook by city or state
SELECT COUNT(city) FROM AddressBook
SELECT COUNT(state) FROM AddressBook

-- UC_8 - To retrieve entries sorted alphabetically contact by name for a city
SELECT * from AddressBook WHERE city='Howrah' ORDER By firstname

-- UC_9 - To identify each address book with name and type
ALTER TABLE AddressBook add 
book_name VARCHAR(20),
contact_type VARCHAR(20)
-- Update value for type=friend
update AddressBook set book_name='FriendName',contact_type='Friends' WHERE firstname='Ravi'
-- Update value for type=family
update AddressBook set book_name='FamilyName',contact_type='Family' WHERE firstname='Ankita'
-- Update value for type=profession
update AddressBook set book_name='SoftwareDeveloper',contact_type='Profession' WHERE firstname='Piyush'

-- UC_10 - To get number of contact person by type
SELECT COUNT(*) as NumberofContact,contact_type from AddressBook GROUP BY contact_type