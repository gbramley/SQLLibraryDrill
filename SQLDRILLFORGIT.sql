--Procedure statements at bottom

Use Master
go

--Drops the project drillsql and then remakes it

Drop database drillsql
go

create database drillsql 
go

Use drillsql
go

--Table Creation name then whats inside

Create table Book (Bookid INT NOT NULL PRIMARY KEY, Title Varchar(100) NULL, PublisherName Varchar(100) NULL)
Create table Book_Authors (Bookid INT NOT NULL, AuthorName Varchar(100) NULL)
Create table Book_Copies (Bookid INT NOT NULL, BranchID INT NOT NULL, No_Of_Copies INT NOT NULL)
Create table Book_Loans (Bookid INT NOT NULL, BranchID INT NOT NULL, CardNo INT NOT NULL, DateOut date NULL, DueDate date NULL)
Create table Publisher (Name VARCHAR(100) PRIMARY KEY NOT NULL, Address varchar(100) NULL, Phone varchar(100) NULL)
Create table Library_Branch (BranchID INT PRIMARY KEY NOT NULL, BranchName Varchar(100) NULL, [Address] varchar(100) NULL)
Create table Borrower (Cardno INT PRIMARY KEY NOT NULL, NAME Varchar(100) null, [Address] varchar(100) NULL, Phone varchar(100) Null)
go

--Values into the tables

--Book (number name publisher)
INSERT INTO BOOK VALUES 
	(1, 'The Lost Tribe', 'KBbooks'),
	(2, 'Sam Simpson', 'KBbooks'),
	(3, 'The Fish', 'KBBooks'),
	(4,'The Dude', 'Dudeness'),
	(5, 'Chargers Suck', 'Fsandiego'),
	(6,'History of Dean Spanos','Fsandiego'),
	(7,'Culture of Losing','Fsandiego'),
	(8,'Bad name of book', 'Dudeness'),
	(9,'Samuel Jackson','Dudeness'),
	(10,'Hey','Dudeness'),
	(11,'Fanny May','Dudeness'),
	(12,'True Lies','Marvel'),
	(13,'Superman','Marvel'),
	(14,'Freeloader','Trump'),
	(15,'Pure Hate','Trump'),
	(16,'The Making of an asshole','Trump'),
	(17,'The Man I Miss','Marvel'),
	(18,'Hitler equals Trump','Trump'),
	(19,'White Scared People','Trump'),
	(20,'IT','Marvel')

--Book Authors Values

INSERT INTO BOOK_AUTHORS VALUES
	(1, 'Jack Dude'),
	(2, 'Jack Dude'),
	(3, 'Fisher Stein'),
	(4, 'Steve Walter'),
	(5, 'Junior Seau'),
	(6, 'Junior Seau'),
	(7, 'Junior Seau'),
	(8, 'Steve Walter'),
	(9, 'Lisa Simpson'),
	(10, 'The Man'),
	(11, 'Dave Crapous'),
	(12, 'Arnold Swartz'),
	(13, 'Susan Boozer'),
	(14, 'Jackass Clown'),
	(15, 'Jackass Clown'),
	(16, 'Jackass Clown'),
	(17, 'Betsy Howard'),
	(18, 'Jackass Clown'),
	(19, 'Jackass Clown'),
	(20, 'Stephen King')

-- Values for Book_Copies (Bookid INT NOT NULL, Branchid INT NOT NULL, No_Of_Copies INT NOT NULL)

INSERT INTO Book_Copies VALUES
	(1, 111, 2),
	(1, 222, 4),
	(1, 333, 6),
	(1, 444, 8),
	(2, 111, 10),
	(2, 222, 4),
	(2, 333, 6),
	(2, 444, 8),
	(3, 111, 12),
	(3, 222, 4),
	(3, 333, 2),
	(3, 444, 6),
	(4, 111, 8),
	(4, 222, 10),
	(4, 333, 12),
	(4, 444, 2),
	(5, 111, 6),
	(5, 222, 8),
	(5, 333, 4),
	(5, 444, 8),
	(6, 111, 2),
	(6, 222, 8),
	(6, 333, 12),
	(6, 444, 4),
	(7, 111, 6),
	(7, 222, 8),
	(7, 333, 8),
	(7, 444, 8),
	(8, 111, 8),
	(8, 222, 4),
	(8, 333, 4),
	(8, 444, 4),
	(9, 111, 6),
	(9, 222, 2),
	(9, 333, 4),
	(9, 444, 8),
	(10, 111, 2),
	(10, 222, 8),
	(10, 333, 10),
	(10, 444, 4),
	(11, 111, 6),
	(11, 222, 8),
	(11, 333, 2),
	(11, 444, 6),
	(12, 111, 8),
	(12, 222, 4),
	(12, 333, 2),
	(12, 444, 6),
	(13, 111, 8),
	(13, 222, 12),
	(13, 333, 2),
	(13, 444, 4),
	(14, 111, 4),
	(14, 222, 4),
	(14, 333, 4),
	(14, 444, 4),
	(15, 111, 6),
	(15, 222, 6),
	(15, 333, 6),
	(15, 444, 6),
	(16, 111, 2),
	(16, 222, 2),
	(16, 333, 2),
	(16, 444, 2),
	(17, 111, 8),
	(17, 222, 2),
	(17, 333, 2),
	(17, 444, 2),
	(18, 111, 2),
	(18, 222, 2 ),
	(18, 333, 2),
	(18, 444, 4),
	(19, 111, 4),
	(19, 222, 4),
	(19, 333, 4),
	(19, 444, 6),
	(20, 111, 6),
	(20, 222, 8),
	(20, 333, 12),
	(20, 444, 14)

	--Values for Book Loans (Bookid INT NOT NULL, BranchID INT NOT NULL, CardNo INT NOT NULL, DateOut date DATE, DueDate date DATE)

INSERT INTO BOOK_Loans Values
	(1, 111, 501,  '2017-01-11', '2017-02-16')
	 ,(5, 111, 500,  '2017-01-12', '2017-02-12')
	 ,(6, 111, 503,  '2017-01-09', '2017-02-12')
	 ,(9, 111, 502,  '2017-01-05', '2017-02-05')
	 ,(15, 111, 506, '2017-01-11', '2017-02-11')
	 ,(12, 111, 507, '2017-01-08', '2017-02-08')
	 ,(2, 111, 504,  '2016-12-25',  '2017-12-2')
	 ,(3, 111, 501,  '2016-12-25', '2017-01-25')
	 ,(7, 111, 510,  '2017-01-15', '2017-02-15')
	 ,(8, 111, 509,  '2017-01-03', '2017-02-03')
	 ,(17, 222, 505, '2017-01-17', '2017-02-17')
	 ,(18, 222, 504, '2017-01-10', '2017-02-10')
	 ,(19, 222, 508, '2017-01-01', '2017-02-01')
	 ,(12, 222, 500, '2017-01-20', '2017-02-20')
	 ,(13, 222, 501, '2017-01-19', '2017-02-19')
	 ,(10, 222, 502, '2017-01-12', '2017-02-12')
	 ,(9, 222, 503,  '2017-01-05', '2017-02-05')
	 ,(4, 222, 509,  '2016-12-29', '2017-01-29')
	 ,(11, 222, 514, '2017-01-15', '2017-02-15')
	 ,(16, 222, 510, '2017-01-22', '2017-02-22')
	 ,(3, 333, 515,  '2017-01-10', '2017-02-10')
	 ,(19, 333, 501, '2017-01-03', '2017-02-03')
	 ,(14, 333, 502, '2017-01-19', '2017-02-19')
	 ,(20, 333, 503, '2017-01-21', '2017-02-21')
	 ,(6, 333, 505,  '2017-01-03', '2017-02-03')
	 ,(2, 333, 506,  '2017-01-02', '2017-02-02')
	 ,(1, 333, 508,  '2017-01-17', '2017-02-17')
	 ,(7, 333, 515,  '2017-01-19', '2017-02-19')
	 ,(12, 333, 510, '2017-01-23', '2017-02-23')
	 ,(10, 333, 505, '2017-01-18', '2017-02-18')
	 ,(11, 333, 508, '2017-01-12', '2017-02-12')
	 ,(14, 333, 503, '2017-01-06', '2017-02-06')
	 ,(4, 333, 500,  '2017-01-20', '2017-02-20')
	 ,(11, 444, 501, '2017-01-22', '2017-02-22')
	 ,(15, 444, 502, '2017-01-08', '2017-02-08')
	 ,(10, 444, 508, '2017-01-09', '2017-02-09')
	 ,(3, 444, 511,  '2017-01-12', '2017-02-12')
	 ,(8, 444, 501,  '2017-01-02', '2017-02-02')
	 ,(3, 444, 503,  '2017-01-09', '2017-02-09')
	 ,(17, 444, 503, '2017-01-14', '2017-02-14')
	 ,(4, 444, 501,  '2017-01-20', '2017-02-20')
	 ,(18, 444, 500, '2017-01-16', '2017-02-16')
	 ,(2, 444, 511,  '2017-01-18', '2017-02-18')
	 ,(7, 444, 512,  '2017-01-20', '2017-02-20')
	 ,(9, 444, 515,  '2017-01-10', '2017-02-10')
	 ,(9, 444, 501,  '2017-01-13', '2017-02-13')
	 ,(20, 444, 500, '2017-01-17', '2017-02-17')
	 ,(2, 444, 503,  '2017-01-14', '2017-02-14')
	 ,(1, 222, 510,  '2017-01-15', '2017-02-15')
	 ,(14, 111, 511, '2017-01-19', '2017-02-19')
	 ,(18, 333, 501, '2017-01-21', '2017-02-21')
	 ,(15, 444, 501, '2017-01-09', '2017-02-09')





	--Publisher (Name VARCHAR(100) PRIMARY KEY NOT NULL, Address varchar(100) NULL, Phone varchar(100) NULL)
INSERT INTO Publisher 
VALUES
	('KBBooks', '123 2nd st San Diego CA 92106', '6192222222')
	,('Dudeness','455 Long Way Portland OR 97209','5038455555')
	,('Fsandiego','111 1st St San Diego CA 92101','6195554421')
	,('Marvel','4444 4th st Portland OR 97205','5038675309')
	,('Trump','666 Bigot way Loserville NC 27006','9106666666')





	-- Library_Branch (Branchid INT PRIMARY KEY NOT NULL, BranchName Varchar(100) NULL, [Address] varchar(100) NULL)

INSERT INTO Library_Branch VALUES

	  (111, 'Sharpstown', '888 Sharps way Eugene OR 97405')
	 ,(222, 'Central', '4111 Hippy Way Eugene OR 97401')
	 ,(333, 'West', '1222 Ducks st Eugene OR 97403')
	 ,(444, 'East', '1234 Green St Eugene OR 97406')






	--Borrower (Cardno INT PRIMARY KEY NOT NULL, NAME Varchar(100) null, [Address] varchar(50) NULL, Phone varchar(100) Null)

INSERT INTO Borrower VALUES

	  (500, 'Dan Stomp', '111 Historic St Eugene OR 97405', '(541) 454-6666')
	 ,(501, 'Steve Law', '112 Historic St Eugene OR 97405', '(541) 232-5857')
	 ,(502, 'Zaanan Tellschow', '123 Ferry St Eugene OR 97405', '(541) 652-0808')
	 ,(503, 'Liese Chapman', '456 Duck St Eugene OR 97405', '(619) 505-7676')
	 ,(504, 'Matt Huiskamp', '878 Duck St Eugene OR 97405', '(503 850-2245')
	 ,(505, 'Mike Piche', '679 High St Eugene OR 97405', '(541) 555-3433')
	 ,(506, 'Steve Fogg', '357 Ferry St Eugene OR 97405', '(971) 396-0784')
	 ,(507, 'Cole Blackman', '346 6th Ave Eugene OR 97405', '(503) 975-3687')
	 ,(508, 'Dude McGee', '864 Ferry St Eugene OR 97405', '(541) 595-2771')
	 ,(509, 'Sam Jackson', '445 13th ave Eugene OR 97405', '(619) 966-7490')
	 ,(510, 'Marcus Mariota', '321 18th ave St Eugene OR 97405', '(541) 443-6578')
	 ,(511, 'Ethan Klein', '331 Amazon Rd Eugene OR 97405', '(503) 342-2424')
	 ,(512, 'Jane Yost', '987 River St Eugene OR 97405', '(541) 666-3324')
	 ,(513, 'Steve Swarm', '334 High St Eugene OR 97405', '(503) 626-5235')
	 ,(514, 'Janey Gunn', '122 13th Ave Eugene OR 97405', '(971) 857-9876')
	 ,(515, 'Anya Katz', '178 11th Ave Eugene OR 97405', '(503) 656-2356')

--Code to assign foreign Keys

USE DRILLSQL
GO
	
ALTER TABLE BOOK
	ADD CONSTRAINT FK_BOOK_PUBLISHER FOREIGN KEY (PublisherName)
	REFERENCES PUBLISHER (Name)
	
ALTER TABLE BOOK_AUTHORS
	ADD CONSTRAINT FK_BOOK_AUTHORS FOREIGN KEY (BookID)
	REFERENCES Book (BookID)
	
ALTER TABLE BOOK_COPIES
	ADD CONSTRAINT FK_BOOK_COPIES_BookID FOREIGN KEY (BookID)
	REFERENCES Book (BookID)
	
ALTER TABLE BOOK_COPIES
	ADD CONSTRAINT FK_BOOK_COPIES_BranchID FOREIGN KEY (BranchID)
	REFERENCES LIBRARY_BRANCH (BranchID)
	
ALTER TABLE BOOK_LOANS
	ADD CONSTRAINT FK_BOOK_LOANS_BookID FOREIGN KEY (BookID)
	REFERENCES BOOK (BookID)
	
ALTER TABLE BOOK_LOANS
	ADD CONSTRAINT FK_BOOK_LOANS_CardNo FOREIGN KEY (CardNo)
	REFERENCES BORROWER (CardNo)
	
ALTER TABLE BOOK_LOANS
	ADD CONSTRAINT FK_BOOK_LOANS_BranchID FOREIGN KEY (BranchID)
	REFERENCES LIBRARY_BRANCH (BranchID)
GO


/*
Start of Queries 1-8
 1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"? */

CREATE PROCEDURE SP1 AS
	SELECT B.title, BC.No_Of_Copies, L.Branchname
	FROM Book_copies AS BC
	INNER JOIN Book As B ON B.Bookid=BC.Bookid 
	INNER JOIN Library_Branch AS L On L.Branchid=BC.Branchid
	Where BC.BRANCHID= 101 and BC.Bookid= 1
GO

--2. How many copies of the book titled The Lost Tribe are owned by each library branch?

CREATE PROCEDURE SP2 AS
	SELECT B.Title, BC.No_of_copies, L.Branchid
	FROM Book_copies as BC INNER JOIN Library_Branch AS L
	ON BC.Branchid=L.BranchID INNER JOIN Book As B ON
	B.Bookid=BC.Bookid
	WHERE BC.Bookid = 1
GO

--3. Retrieve the names of all borrowers who do not have any books checked out.

CREATE PROCEDURE SP3 AS
	SELECT B.Name, BL.CardNO
	FROM Book_Loans as BL INNER JOIN Borrower As B
	ON B.Cardno=BL.Cardno
	Where BL.Bookid = NULL
GO

	--4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today retrieve the book title, the borrower's name, and the borrower's .address 

CREATE PROCEDURE SP4 AS
	SELECT B.Title, BO.Name, BO.[Address]
	FROM Book AS B INNER JOIN Book_Loans as BL 
	ON BL.Bookid=B.Bookid Inner Join Borrower as BO
	ON BO.Cardno=BL.Cardno
	Where BL.Branchid=111 and BL.duedate = Cast (Current_timestamp as Date)
GO



--5. For each library branch, retrieve the branch name and the total number of books loaned out fromthat branch.
Create Proc SP5 AS
	Select LB.BranchName, Count (BC.No_of_copies) as "Number of Checkouts"
	FROM Library_Branch as LB Inner join Book_copies as BC 
	ON LB.branchid=BC.branchid Inner join Book as B on 
	BC.Bookid=b.bookid
	Group by LB.branchname
GO




--6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked .
Create Proc SP6 AS
	SELECT BO.Name, BO.[Address], Count (BL.Bookid) As "5+ Books Out"
	FROM Borrower as BO Inner Join Book_loans as BL ON BO.cardno=BL.cardno
	Group By BO.Name, BO.[Address] Having Count (BL.bookid) >5
GO


--7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned  the library branch whose name is "Central"Create Proc Sp7 As
	Select LB.Branchname, B.Title, BC.No_of_copies
	FROM Library_Branch as LB Inner Join Book_copies as BC on LB.Branchid=BC.branchid
	inner join Book as B on BC.bookid=B.bookid
	Join Book_authors as BA on BA.bookid=b.bookid
	Where BA.Authorname= 'Stephen King' And LB.Branchname = 'Central'
Go

--8. Create stored procedure that will execute one or more of those queries based on user choice  SINCE I used the others as stored procedure I am going to make a new on saying what is the address of Liese CHapman and what books she has checked out
Create Proc sp8 as
	Select 	Bo.Name, BO.[address], B.Title
	FROM Borrower as BO Inner join Book_loans as BL On bo.cardno=bl.cardno Inner Join Book as B On BL.Bookid=b.bookid
	Where BO.Cardno = 503

GO	
