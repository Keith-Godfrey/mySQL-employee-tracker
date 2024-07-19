-- Create a business database
DROP DATABASE IF EXISTS business;
CREATE DATABASE business;

\c business;

-- department table
CREATE TABLE department (
    id SERIAL PRIMARY KEY
    name: VARCHAR(30) UNIQUE NOT NULL
);

-- role table
CREATE TABLE role (
    id: SERIAL PRIMARY KEY
    title: VARCHAR(30) UNIQUE NOT NULL 
    salary: DECIMAL NOT NULL 
    department_id: INTEGER NOT NULL
);


-- employee table
CREATE TABLE employee (
    id: SERIAL PRIMARY KEY
    first_name: VARCHAR(30) NOT NULL 
    last_name: VARCHAR(30) NOT NULL 
    role_id: INTEGER NOT NULL 
    manager_id: INTEGER 
);