CREATE DATABASE consumer;
USE consumer;
CREATE TABLE consumersurvey (
		ID INT(11) NOT NULL,
		fname VARCHAR(100) NOT NULL,
		gender VARCHAR(100) NOT NULL,
		age INT(11) NOT NULL,
		state VARCHAR(100) NOT NULL,
        shoppingpref VARCHAR(100) NOT NULL,
        onlineplatform VARCHAR(100) NOT NULL,
        groceries VARCHAR(100) NOT NULL,
        general VARCHAR(100) NOT NULL,
        clothing VARCHAR(100) NOT NULL,
        mall VARCHAR(100) NOT NULL,
        groceries2 VARCHAR(100) NOT NULL,
        groceries3 VARCHAR(100) NOT NULL,
        product VARCHAR(100) NOT NULL,
        brand VARCHAR(100) NOT NULL
);

SELECT*FROM consumersurvey;