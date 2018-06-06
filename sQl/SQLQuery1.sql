USE Hotels_VOV;


INSERT INTO Hotels VALUES ('Edelweiss', 1989, 'Ukraine', 1);
INSERT INTO Hotels VALUES('Turist', 1978, 'Ukraine', 1);
INSERT INTO Hotels VALUES('Bukovina', 2000, 'Ukraine', 1);



INSERT INTO  Clients( ClientName, ClientEmail)  VALUES ('Andrew' , 'andr@mail.ru');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Vita' , 'vit@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Vitaliy' , 'vt@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Misha' , 'si@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Poma' , 'ba@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Sasha' , 'mo@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Olha' , 'he@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Anton' , 'k@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Andrew' , 'nan@gmail.com');
INSERT INTO Clients( ClientName, ClientEmail) VALUES ('Natalya' , 'su@gmail.com');


INSERT INTO Rooms VALUES (101, 800, 1, 1);
INSERT INTO Rooms VALUES (102, 900, 1, 2);
INSERT INTO Rooms VALUES (103, 900, 1, 3);
INSERT INTO Rooms VALUES (104, 800, 2, 4);
INSERT INTO Rooms VALUES (105, 800, 2, 4);
INSERT INTO Rooms VALUES (106, 600, 2, 3);
INSERT INTO Rooms VALUES (3, 700, 3, 2);
INSERT INTO Rooms VALUES (8, 800, 3, 2);
INSERT INTO Rooms VALUES (413, 1100, 3, 4);
INSERT INTO Rooms VALUES (211, 300, 1, 1);


INSERT INTO  RoomInHotel  VALUES (1,1);
INSERT INTO  RoomInHotel  VALUES (2,2);
INSERT INTO  RoomInHotel  VALUES (3,3);
INSERT INTO  RoomInHotel  VALUES (1,4);
INSERT INTO  RoomInHotel  VALUES (2,5);
INSERT INTO  RoomInHotel  VALUES (3,6);
INSERT INTO  RoomInHotel  VALUES (1,7);
INSERT INTO  RoomInHotel  VALUES (2,8);
INSERT INTO  RoomInHotel  VALUES (3,9);
INSERT INTO  RoomInHotel  VALUES (3,10);


INSERT INTO  Booking  VALUES ('2000-03-12',1,1, '2000-03-24','2000-03-29');
INSERT INTO  Booking  VALUES ('2000-01-12',2,3, '2000-03-04','2000-03-05');
INSERT INTO  Booking  VALUES ('2000-05-12',3,2, '2000-03-05','2000-03-06');
INSERT INTO  Booking  VALUES ('2000-06-12',4,1, '2000-03-08','2000-03-09');
INSERT INTO  Booking  VALUES ('2000-07-12',5,2, '2000-03-09','2000-03-10');
INSERT INTO  Booking  VALUES ('2000-08-12',6,3, '2000-03-10','2000-03-11');
INSERT INTO  Booking  VALUES ('2000-09-12',7,2, '2000-03-11','2000-03-12');
INSERT INTO  Booking  VALUES ('2000-10-12',8,3, '2000-03-13','2000-03-14');
INSERT INTO  Booking  VALUES ('2000-11-12',9,1, '2000-03-17','2000-03-19');
INSERT INTO  Booking  VALUES ('2000-12-12',10,2, '2000-03-19','2000-03-20');




SELECT * FROM Hotels;

UPDATE Hotels SET HotelFoundYear=1937 
WHERE  HotelID=1;


DELETE FROM RoomInHotel 

WHERE  RoomInHotel.HotelID=3;

DELETE FROM Hotels 

WHERE  HotelID=3;




SELECT * FROM Clients WHERE ClientName LIKE 'A%';


SELECT * FROM Rooms Order By RoomPrice;

SELECT Rooms.RoomNumber, Rooms.RoomPrice FROM Rooms
JOIN RoomInHotel ON RoomInHotel.RoomID=Rooms.RoomID
JOIN Hotels ON Hotels.HotelID=RoomInHotel.HotelID
WHERE Hotels.HotelName='Edelweiss'
ORDER BY Rooms.RoomPrice



SELECT Hotels.HotelName FROM Hotels
JOIN RoomInHotel ON RoomInHotel.HotelID=Hotels.HotelID
JOIN Rooms ON RoomInHotel.RoomID=Rooms.RoomID
WHERE Rooms.RoomComfortLevel=3


SELECT Hotels.HotelName,Rooms.RoomNumber FROM Hotels
JOIN RoomInHotel ON RoomInHotel.HotelID=Hotels.HotelID
JOIN Rooms ON RoomInHotel.RoomID=Rooms.RoomID
WHERE Rooms.RoomComfortLevel=1



SELECT Hotels.HotelName,COUNT(Rooms.RoomID) FROM Hotels
JOIN RoomInHotel ON RoomInHotel.HotelID=Hotels.HotelID
JOIN Rooms ON RoomInHotel.RoomID=Rooms.RoomID
GROUP BY Hotels.HotelName






SELECT Clients.ClientName,Rooms.RoomNumber ,DATEDIFF ( day , Booking.ArrivalDate , Booking.DepartureDate ) AS[Count day]
FROM Booking
JOIN RoomInHotel ON Booking.RoomInHotelID=RoomInHotel.RoomsInHotelID
JOIN Rooms ON RoomInHotel.RoomID=RoomInHotel.RoomID
JOIN Clients ON  Booking.ClientID=Clients.ClientID




