-- Customer Table
CREATE TABLE customers(
	CustomerId int Primary Key,
	FirstName varchar(255),
	LastName varchar(255),
	DateOfBirth Date, 
	Address Text,
	PhoneNumber varchar(20),
	City varchar(255)
);
--Account Table
CREATE TABLE Account(
	AccountNumber int Primary Key,
	CustomerId int,
	AccountType varchar(20),
	Balance decimal(15,2),
	DateOpened Date,
	foreign key(CustomerId) references Customers(CustomerId)
);
-- Branch Table
CREATE TABLE Branch(
	BranchId int Primary key,
	BranchName Varchar(255),
	BranchAddress Varchar(255),
	BranchPhoneNumber varchar(255)
);
-- Transaction Table
CREATE TABLE Transaction(
	TransactionId int Primary key,
	AccountNumber int,
	TransactionType Varchar(255),
	Amount Decimal(10,2),
	TransactionDate date,
	foreign key (AccountNumber) references Account(AccountNumber)
);
-- Employee Table
CREATE TABLE Employee(
	EmployeeId int Primary key,
	Name Varchar(255),
	Position Varchar(255),
	BranchId int,
	HireDate date,
	foreign key (Branchid) references Branch(Branchid)
);
-- Loan Table
CREATE TABLE Loan(
	LoanId int primary key,
	CustomerId int,
	LoanAmount decimal(15,2),
	LoanType varchar(30),
	IssueDate Date,
	InterestRate decimal (3,2),
	foreign key (Customerid) references Customers(Customerid)
);
--Alter Statement
ALTER TABLE customers add Email varchar(255);
ALTER TABLE loan ALTER COLUMN interestRate TYPE float;
ALTER TABLE customers ADD UNIQUE (phoneNumber);
ALTER TABLE Account add BranchId int;

-- Drop Statement
DROP TABLE transaction;
DROP TABLE employee;
ALTER TABLE account DROP CONSTRAINT account_customerid_fkey;
DROP TABLE account;
DROP TABLE customers;
DROP TABLE branch;