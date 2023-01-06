DROP DATABASE IF EXISTS eshop;

CREATE DATABASE eshop;

USE eshop;

CREATE TABLE customers (
	name VARCHAR(32) DEFAULT 'unknown' PRIMARY KEY,
    address VARCHAR(128) NOT NULL, 
	email VARCHAR(128) NOT NULL
);

INSERT INTO customers (name, address, email) VALUES
	('fred', '201 Cobblestone Lane', 'fredflintstone@bedrock.com'),
    ('sherlock', '221B Baker Street, London', 'sherlock@consultingdetective.org'),
    ('spongebob', '124 Conch Street, Bikini Bottom', 'spongebob@yahoo.com'),
    ('jessica', '698 Candlewood Land, Cabot Cove', 'fletcher@gmail.com'),
    ('dursley', '4 Privet Drive, Little Whinging', 'dursley@gmail.com');
    
-- SET GLOBAL local_infile=1;
-- LOAD DATA LOCAL INFILE './data.csv'
-- INTO TABLE customers
-- FIELDS TERMINATED BY ': '
-- IGNORE 1 ROWS;

CREATE TABLE orders (
	orderId VARCHAR(8) NOT NULL PRIMARY KEY,
    deliveryId VARCHAR(8),
    name VARCHAR(32),
    address VARCHAR(128), 
    email VARCHAR(128),
    status VARCHAR(11)
);