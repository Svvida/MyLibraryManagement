--Create database MyLibraryDatabase

use MyLibraryDatabase

CREATE TABLE cathegory (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE author (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL
);

Create table book (
	ID int Primary key identity(1,1),
	Title nvarchar(255) not null,
	Cathegory_ID int not null,
	foreign key (Cathegory_ID) references cathegory(ID)
);

Create table book_author(
	Book_id int not null,
	Author_id int not null,
	foreign key(Book_id) references book(ID),
	foreign key(Author_id) references author(ID),
	Constraint PK_book_author Primary key(Book_id, Author_ID)
);

Create table accounts(
	Card_number INT primary key identity(1,1),
	First_name nvarchar(255) not null,
	Surname nvarchar(255) not null,
	Login varchar(50) not null Unique,
	Email varchar(100) not null Unique,
	Constraint CHECK_email Check(Email like'%_@_%.__%')
);


Create table Loans(
	ID int Primary key identity(1,1),
	Patron_ID int,
	Book_ID int,
	Loan_date timestamp not null,
	Return_date date,
	foreign key(Patron_ID) references accounts(Card_number),
	foreign key(Book_ID) references book(ID)
);