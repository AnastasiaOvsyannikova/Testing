CREATE TABLE HOTELS
(
	hotelId int IDENTITY NOT NULL PRIMARY KEY,
	title varchar(100) NOT NULL,
	starsCount int NOT NULL,
	Address varchar(max)
)

CREATE TABLE Rooms
(
roomId int IDENTITY NOT NULL PRIMARY KEY,
numberRoom int NOT NULL,
hotelId int NOT NULL FOREIGN KEY REFERENCES HOTELS(hotelId)
)

CREATE TABLE Clients
(
clientId int IDENTITY NOT NULL PRIMARY KEY,
typeClient varchar(max) NOT NULL,
email varchar(50),
age int NOT NULL
)

CREATE TABLE Orders
(
idOrders int IDENTITY NOT NULL PRIMARY KEY,
clientId int  NOT NULL FOREIGN KEY REFERENCES Clients(clientId),
roomId int  NOT NULL FOREIGN KEY REFERENCES Rooms(roomId),
price int NOT NULL,
dayCount int NOT NULL
)

INSERT INTO Orders (clientId,roomId,price,dayCount) values
(1,1,100,1),
(2,2,1000,2),
(1,3,100,3),
(2,4,240,1),
(1,5,1000,5),
(2,6,200,1),
(1,1,500,11),
(2,2,300,2)

SELECT price, COUNT(price) FROM Orders GROUP BY price
SELECT age, COUNT(age) FROM Clients GROUP BY age having age>18
SELECT * FROM Clients ORDER BY typeClient
SELECT * FROM Clients ORDER BY age desc
SELECT * FROM orders JOIN clients on orders.clientId = Clients.clientId


SELECT TOP (1000) [hotelId]
      ,[title]
      ,[starsCount]
      ,[Address]
  FROM [HotelDataBase].[dbo].[HOTELS]

  SELECT TOP (1000) [roomId]
      ,[numberRoom]
      ,[hotelId]
  FROM [HotelDataBase].[dbo].[Rooms]

  SELECT TOP (1000) [clientId]
      ,[typeClient]
      ,[email]
      ,[age]
  FROM [HotelDataBase].[dbo].[Clients]

  INSERT INTO HOTELS (title,starsCount,Address) VALUES
('Anastasia', 5, '322wolkstreet'),
('Mars',5,'2bunkovens')

INSERT INTO Rooms(numberRoom,hotelId) VALUES
(5,1),
(10,2),
(55,1),
(235,2)

INSERT INTO Clients(typeClient, email, age) VALUES
('Anastasia', 'onasta562@gmail.com',21),
('Egor','0lynatik0@mail.ru',17)

SELECT typeClient,email FROM Clients
SELECT * FROM Clients
SELECT * FROM Clients WHERE age=21
SELECT * FROM Clients WHERE age=17
SELECT typeClient,email FROM Clients
SELECT * FROM Clients WHERE typeClient='Egor'
SELECT * FROM Clients WHERE typeClient LIKE 'Eg%'
SELECT * FROM Clients WHERE typeClient LIKE '%a'
SELECT * FROM Clients WHERE typeClient LIKE '%a%'
SELECT * FROM Clients WHERE email LIKE '%@%'
SELECT * FROM Clients WHERE typeClient LIKE 'Ego_'

SELECT Count(age) as AgeCount FROM Clients WHERE age=21
SELECT Sum(age) as SumAge FROM Clients
SELECT avg(age) as AvgAge FROM Clients
SELECT max(age) as MaxAge FROM Clients
SELECT min(age) as MinAge FROM Clients



UPDATE HOTELS SET starsCount=4, Address='221Streets' WHERE hotelId = 2

DELETE FROM HOTELS WHERE hotelId=1
DROP TABLE HOTELS


