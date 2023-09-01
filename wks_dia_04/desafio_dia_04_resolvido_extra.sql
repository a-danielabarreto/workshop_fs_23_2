SHOW VARIABLES LIKE "security_file_priv";

CREATE database shopping;
USE shopping;

CREATE table clientes(
	id INT,
	genero VARCHAR(20),
    idade INT,
    renda INT,
    score INT,
    
    PRIMARY KEY(id)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Mall_Customers.csv'
INTO TABLE clientes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM clientes;

