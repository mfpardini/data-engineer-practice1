CREATE SCHEMA relational;

CREATE TABLE relational.vehicle_status (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE SEQUENCE relational.id_vehicle;
CREATE TABLE relational.vehicle (
    id int default nextval('relational.id_vehicle'::REGCLASS) PRIMARY KEY,
    acquisition_date date,
    year int,
    make varchar(100),
    model varchar(100),
    plate varchar(50),
    id_status int REFERENCES relational.vehicle_status(id),
    daily_rental_price numeric(12,4)
);

CREATE SEQUENCE relational.id_client;
CREATE TABLE relational.client (
    id int default nextval('relational.id_client'::REGCLASS) PRIMARY KEY,
    name varchar(200),
    birth_date date,
    cpf varchar(11),
    cnh_number int,
    cnh_expiration_date date,
    telephone varchar(20),
    registration_date date,
    status varchar(20)
);

CREATE SEQUENCE relational.id_subsidiary;
CREATE TABLE relational.subsidiary (
    id int default nextval('relational.id_subsidiary'::REGCLASS) PRIMARY KEY,
    name varchar(200),
    address varchar(500)
);

CREATE SEQUENCE relational.id_dispatcher;
CREATE TABLE relational.dispatcher (
    id int default nextval('relational.id_dispatcher'::REGCLASS) PRIMARY KEY,
    name varchar(200),
    status varchar(20),
    id_subsidiary int REFERENCES relational.subsidiary(id)
);

CREATE SEQUENCE relational.id_rent;
CREATE TABLE relational.rent (
    id int default nextval('relational.id_rent'::REGCLASS) PRIMARY KEY,
    id_vehicle int REFERENCES relational.vehicle(id),
    id_client int REFERENCES relational.client(id),
    id_dispatcher int REFERENCES relational.dispatcher(id),
    rent_date date,
    return_date date,
    total_price numeric(12,4)
);