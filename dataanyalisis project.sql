-- Create the database
CREATE DATABASE IF NOT EXISTS RetailSalesData;
USE RetailSalesData;

-- Create the transactions table
CREATE TABLE IF NOT EXISTS sales_data_transaction (
    customer_id VARCHAR(255),
    trans_date VARCHAR(255),
    trans_anmount INT
);

-- Create the response table
CREATE TABLE IF NOT EXISTS sales_data_response (
    customer_id VARCHAR(255) PRIMARY KEY,
    respone INT
);

-- Load data from CSV file into the transaction table
LOAD DATA  INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE sales_data_transaction
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

SHOW GLOBAL VARIABLES LIKE 'local_infile';

SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;


