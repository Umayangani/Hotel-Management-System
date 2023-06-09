CREATE TABLE
    USERS (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        EMAIL VARCHAR(255) NOT NULL
    );

CREATE TABLE
    customers (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        EMAIL VARCHAR(255) NOT NULL,
        NIC VARCHAR(255) NOT NULL,
        ADDRESS VARCHAR(255) NOT NULL,
        PHONE VARCHAR(255) NOT NULL,
        PASSWORD VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    admin (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        EMAIL VARCHAR(255) NOT NULL,
        PASSWORD VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    receptionist (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        EMAIL VARCHAR(255) NOT NULL,
        PASSWORD VARCHAR(255) NOT NULL,
        PHONE VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    hall (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        TYPE VARCHAR(255) NOT NULL,
        CAPACITY INT NOT NULL,
        PRICE INT NOT NULL,
        DESCRIPTION VARCHAR(255) NOT NULL,
        IMAGE VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    room (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        TYPE VARCHAR(255) NOT NULL,
        CAPACITY INT NOT NULL,
        PRICE INT NOT NULL,
        DESCRIPTION VARCHAR(255) NOT NULL,
        IMAGE VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    hall_booking (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        CUSTOMER_ID INT NOT NULL,
        HALL_ID INT NOT NULL,
        BOOKING_DATE DATE NOT NULL,
        BOOKING_TIME VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    room_booking (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        CUSTOMER_ID INT NOT NULL,
        ROOM_ID INT NOT NULL,
        BOOKING_DATE DATE NOT NULL,
        BOOKING_TIME VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

create table
    contact_us (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(255) NOT NULL,
        EMAIL VARCHAR(255) NOT NULL,
        SUBJECT VARCHAR(255) NOT NULL,
        MESSAGE VARCHAR(255) NOT NULL,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

SELECT * FROM hall_booking 