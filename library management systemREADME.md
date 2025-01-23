Library Management System
A Library Management System built using SQL to manage books, authors, members, and borrowing activities. This database design allows libraries to store, organize, and query data efficiently.

Features
Manage Books: Add, update, and retrieve book details like title, author, genre, and publication year.
Manage Authors: Store and retrieve information about authors, including their names and countries.
Track Members: Maintain member details such as name and contact information.
Monitor Borrowing History: Track when books are borrowed, returned, and overdue.
Database Schema
Tables:
Authors

AuthorID (Primary Key)
Name
Country
Books

BookID (Primary Key)
Title
AuthorID (Foreign Key referencing Authors)
Genre
YearPublished
Members

MemberID (Primary Key)
Name
Contact
BorrowingHistory

BorrowID (Primary Key)
BookID (Foreign Key referencing Books)
MemberID (Foreign Key referencing Members)
BorrowDate
ReturnDate
Sample Data
The database includes sample data for testing:

Authors: J.K. Rowling, George R.R. Martin, J.R.R. Tolkien
Books: "Harry Potter", "A Game of Thrones", "The Hobbit"
Members: John Doe, Jane Smith
Borrowing Records: Example borrowing and return dates for books.
