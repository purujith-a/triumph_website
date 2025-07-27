-- Create the database
CREATE DATABASE bike_db;

-- Use the database
USE bike_db;

-- Create Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Bikes Table
CREATE TABLE bikes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    availability_status VARCHAR(50) DEFAULT 'Coming Out Soon'
);

-- Insert Sample Bike Data
INSERT INTO bikes (model_name, category, price, availability_status) VALUES
('Tiger 1200 GT Pro', 'Adventure', 1938990.00, 'Coming Out Soon'),
('Tiger 1200 Rally Explorer', 'Adventure', 2038990.00, 'Coming Out Soon'),
('Speed Twin 900', 'Modern Classics', 938990.00, 'Coming Out Soon'),
('Thruxton RS', 'Modern Classics', 1338990.00, 'Coming Out Soon'),
('Street Triple 765 R', 'Roadster', 950000.00, 'Coming Out Soon'),
('Rocket 3 R', 'Rocket', 1950000.00, 'Coming Out Soon'),
('Daytona Moto2 765', 'Sport', 1450000.00, 'Coming Out Soon'),
('Bonneville T120 Black', 'Special Edition', 1188990.00, 'Coming Out Soon');