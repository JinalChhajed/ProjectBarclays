create database Account_db;
use Account_db;
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` char DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadhar_no` int(12) unique,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `account_no` int(11) NOT NULL,
  `pan_number` varchar(10) unique,      
  `account_type` varchar(20) ,
  `pan_image` blob DEFAULT NULL,
  `Adhar_image` blob DEFAULT NULL);
  
  update customer
set account_no=LPAD(FLOOR(RAND() * 9999999999.99), 10, '0');

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` char(25) DEFAULT NULL,
  `pwd` char(25) DEFAULT NULL,
  `role` char(25) not null
);
INSERT INTO `manager` (`id`, `uname`, `pwd`) VALUES
(1, 'John', 'password123');
INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `gender`, `dob`, `aadhar_no`, `email`, `phone_no`, `address`, `branch`, `account_no`, `pan_number`, `account_type`,`pan_image`,`Adhar_image`) VALUES
(123456, 'Angel Jude', 'Suarez', 'male', '1996-02-11', 12345, 'suarez081119@gmail.com', '98414', 'Newyork', 'newyork', 1, 1234, 'savings', null,null),
(234567, 'Adones', 'Evangelista', 'male', '1992-02-07', 5555, 'adones@gmail.com', '9841414', 'Central Perk', 'newyork', 2, 9839, 'current', null,null);
select * from customer;
select * from manager;
UPDATE customer SET account_no = LPAD(FLOOR(RAND() * 1000000000), 10, '0');
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`) ;
  
  ALTER TABLE customer MODIFY COLUMN account_no int(15);
  ALTER TABLE customer MODIFY COLUMN account_no long;
  describe customer;
  
  select * from customer;
  ALTER TABLE `customer` 
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`) ;
  
  ALTER TABLE customer 
ADD CONSTRAINT MyUniqueConstraint UNIQUE(`aadhar_no`,`email`,`phone_no`);
select * from customer;

update customer
set cust_id=LPAD(FLOOR(RAND() * 999999.99), 6, '0');
select * from customer;

select * from user;

ALTER TABLE user 
ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (id);

ALTER TABLE customer 
ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (cust_id);

describe user;
CREATE TABLE `transaction` (
  `trans_id` int(11) primary key,
  `trans_ref` int(15) not null unique,
  `trans_date` datetime DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `type` varchar(10) not null,
  `amount` float(20,5),
  `current_balance` float(20,5) DEFAULT NULL,
  `cust_id` int(11),
  foreign key(cust_id) references customer (cust_id)
) ;

describe transaction;
