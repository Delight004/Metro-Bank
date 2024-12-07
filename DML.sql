--DAta Manipulation LAng.
-- Insert Statement
-- Customer Table
INSERT INTO customers(customerid, firstname, lastname, dateofbirth, address, phonenumber, city, email) VALUES
(1, 'Afeez', 'Showole', '20220-01-01', 'Flat 7, High Field', '040140124','London', 'afeez@yahoo.com'),
(2, 'Olamide', 'Ogun', '2021-01-01', 'Flat 18, West LAnd', '04143515','Huddersfield', 'olamide@yahoo.com'),
INSERT INTO customers(customerid, firstname, lastname, dateofbirth, address, phonenumber, city, email) VALUES
(3, 'DAmi', 'Ade', '2019-01-01', '8, fresh', '0962282','Middle', 'Dami@yahoo.com'),
(4, 'Bri', 'Ife', '2018-04-01', 'Flat 12, east LAnd', '0267281','Masches', 'bri@yahoo.com');

-- Account Table
INSERT INTO account(accountnumber, customerid, accounttype, balance, dateopened, branchid) VALUES
(1234556, 1, 'Saving', 1300,'20220-01-01', 21),
(2333322,2, 'Deposit',1330,'2021-01-01', 22);

INSERT INTO account(accountnumber, customerid, accounttype, balance, dateopened, branchid) VALUES
(2333322,2, 'Deposit',1330,'2021-01-01', 22),
(1234553, 3, 'Saving', 1500,'20220-05-01', 23),
(2333324,4, 'Deposit',1700,'2021-03-01', 24);

--Update Table
UPDATE account 
SET balance = balance + 500
WHERE customerid = 2;

UPDATE account 
SET balance = balance + 500
WHERE accountnumber = 1234556;

UPDATE account
SET accounttype = 'Checking'
WHERE accountnumber = 1234556;

--Delect Statement
DELETE
FROM account
WHERE customerid = 2;

--Truncate Statement
ALTER TABLE transaction DROP CONSTRAINT transaction_accountnumber_fkey;
TRUNCATE TABLE account;
ALTER TABLE transaction ADD CONSTRAINT accountnumber FOREIGN KEY (accountnumber) REFERENCES account(accountnumber);
