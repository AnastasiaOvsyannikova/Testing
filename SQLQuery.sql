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

create table Orders
(
idOrders int identity not null primary key,
clientId int not null foreign key references Clients(clientId),
roomId int not null foreign key references Rooms(roomId),
price int not null,
dayCount int not null
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

select price, count(price) from Orders group by price
select age, count(age) from Clients group by age having age>18
select * from Clients order by typeClient
select * from Clients order by age desc
select * from orders join clients on orders.clientId = Clients.clientId


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
SELECT * FROM Clients Where typeClient='Egor'
SELECT * FROM Clients Where typeClient LIKE 'Eg%'
SELECT * FROM Clients Where typeClient LIKE '%a'
SELECT * FROM Clients WHERE typeClient LIKE '%a%'
SELECT * FROM Clients WHERE email LIKE '%@%'
SELECT * FROM Clients Where typeClient LIKE 'Ego_'

SELECT Count(age) as AgeCount From Clients Where age=21
select Sum(age) as SumAge From Clients
select avg(age) as AvgAge From Clients
select max(age) as MaxAge from Clients
select min(age) as MinAge from Clients



UPDATE HOTELS SET starsCount=4, Address='221Streets' WHERE hotelId = 2

DELETE FROM HOTELS WHERE hotelId=1
DROP TABLE HOTELS

