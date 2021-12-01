CREATE SCHEMA relational;

CREATE TABLE relational.vehicle_status (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE SEQUENCE relational.id_vehicle;
CREATE TABLE relational.vehicles (
    id int default nextval('relational.id_vehicle'::REGCLASS) PRIMARY KEY,
    acquisition_date date,
    year int,
    make varchar(100),
    model varchar(100),
    plate varchar(50),
    id_status int REFERENCES relational.vehicle_status(id),
    daily_rental_price numeric(12,4)
);

CREATE TABLE relational.client_status (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE SEQUENCE relational.id_client;
CREATE TABLE relational.clients (
    id int default nextval('relational.id_client'::REGCLASS) PRIMARY KEY,
    name varchar(200),
    birth_date date,
    cpf varchar(11) unique not null,
    cnh_number bigint,
    cnh_expiration_date date,
    telephone varchar(20),
    registration_date date,
    id_status int REFERENCES relational.client_status(id)
);

CREATE SEQUENCE relational.id_subsidiary;
CREATE TABLE relational.subsidiaries (
    id int default nextval('relational.id_subsidiary'::REGCLASS) PRIMARY KEY,
    name varchar(200),
    address varchar(500)
);

CREATE TABLE relational.dispatcher_status (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE SEQUENCE relational.id_dispatcher;
CREATE TABLE relational.dispatchers (
    id int default nextval('relational.id_dispatcher'::REGCLASS) PRIMARY KEY,
    name varchar(200),
    id_status int REFERENCES relational.dispatcher_status(id),
    id_subsidiary int REFERENCES relational.subsidiaries(id)
);

CREATE SEQUENCE relational.id_rent;
CREATE TABLE relational.rents (
    id int default nextval('relational.id_rent'::REGCLASS) PRIMARY KEY,
    id_vehicle int REFERENCES relational.vehicles(id),
    id_client int REFERENCES relational.clients(id),
    id_dispatcher int REFERENCES relational.dispatchers(id),
    rent_date date,
    return_date date,
    total_price numeric(12,4)
);