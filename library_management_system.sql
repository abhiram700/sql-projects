-- Create Authors Table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

-- Create Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    AuthorID INT,
    Genre VARCHAR(50),
    YearPublished INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(50)
);

-- Create BorrowingHistory Table
CREATE TABLE BorrowingHistory (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Insert Sample Data
INSERT INTO Authors (Name, Country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George R.R. Martin', 'United States'),
('J.R.R. Tolkien', 'United Kingdom');

INSERT INTO Books (Title, AuthorID, Genre, YearPublished) VALUES
('Harry Potter and the Philosopher\'s Stone', 1, 'Fantasy', 1997),
('A Game of Thrones', 2, 'Fantasy', 1996),
('The Hobbit', 3, 'Fantasy', 1937);

INSERT INTO Members (Name, Contact) VALUES
('John Doe', 'johndoe@example.com'),
('Jane Smith', 'janesmith@example.com');

INSERT INTO BorrowingHistory (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1, 1, '2025-01-10', '2025-01-20'),
(2, 2, '2025-01-15', NULL);
