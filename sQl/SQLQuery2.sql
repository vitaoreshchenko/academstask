USE Hotels_V;




CREATE TABLE Hotels
(
  HotelID int IDENTITY NOT NULL PRIMARY KEY,
  HotelName varchar(30) NOT NULL,
  HotelFoundYear int,
  HotelAddress varchar(50),
  HotelActive bit
);


CREATE TABLE Clients
(
  ClientID int IDENTITY NOT NULL   PRIMARY KEY,
  ClientName varchar(50) NOT NULL,
  ClientEmail varchar(15),
  ClientPhone varchar(20)
);

CREATE TABLE Rooms
(
  RoomID int IDENTITY NOT NULL  PRIMARY KEY,
  RoomNumber int NOT NULL,
  RoomPrice float,
  RoomComfortLevel int,
  RoomCapability int
);


CREATE TABLE RoomInHotel
(
  RoomsInHotelID int IDENTITY NOT NULL  PRIMARY KEY,
  HotelID int NOT NULL
  FOREIGN KEY REFERENCES Hotels(HotelID),
  RoomID int NOT NULL
  FOREIGN KEY REFERENCES Rooms(RoomID)
);


CREATE TABLE Booking
(
  ReservationID int IDENTITY NOT NULL  PRIMARY KEY,
  ReservationDate DATE NOT NULL,
  RoomInHotelID int NOT NULL   FOREIGN KEY REFERENCES RoomInHotel(RoomsInHotelID),
  ClientID int NOT NULL   FOREIGN KEY REFERENCES Clients(ClientID),
  ArrivalDate DATE NOT NULL,
  DepartureDate DATE NOT NULL
);