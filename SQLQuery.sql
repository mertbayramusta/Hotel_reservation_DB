CREATE DATABASE HOTELRESERVATION

CREATE TABLE Guest(
guest_Id integer,
fName varchar(100) not null,
lName varchar(100) not null,
g_address varchar(1000) not null,
email varchar(100) not null,
phone varchar(100) not null,
city varchar(100),
country varchar(100),
PRIMARY KEY(guest_Id)
);
CREATE TABLE RoomType(
room_type_Id integer,
room_type_name varchar(100) not null,
PRIMARY KEY(room_type_Id)
);
CREATE TABLE Room(
room_Id integer,
room_type_Id integer 
	references RoomType(room_type_Id) ON DELETE Cascade,
room_status integer not null,
PRIMARY KEY(room_Id)
);
CREATE TABLE Reservation(
reservation_Id integer,
reservation_date date not null,
check_in_date date not null,
check_out_date date not null,
total_days integer not null,
adults integer not null,
children integer,
room_Id integer
	references Room(room_Id) ON DELETE Cascade,
guest_Id integer
	references Guest(guest_Id) ON DELETE Cascade,
PRIMARY KEY(reservation_Id)
);
CREATE TABLE Payment(
payment_Id integer,
guest_Id integer
	references Guest(guest_Id),
reservation_Id integer
	references Reservation(reservation_Id) ON DELETE Cascade,
fName varchar(100) not null,
lName varchar(100) not null,
amount integer not null,
PRIMARY KEY(payment_Id)
);


INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(1, 'Rana', 'ÇAKMAK', 'Akdere', 'rcakmak@gmail.com', '123456789', 'Ankara', 'Turkey')

INSERT INTO RoomType(room_type_Id,room_type_name)
VALUES(100, 'Single')
INSERT INTO RoomType(room_type_Id,room_type_name)
VALUES(200, 'Double')
INSERT INTO RoomType(room_type_Id,room_type_name)
VALUES(300, 'Quad')
INSERT INTO RoomType(room_type_Id,room_type_name)
VALUES(400, 'Queen')

INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(101, 100, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(102, 100, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(103, 100, 0)

INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(201, 200, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(202, 200, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(203, 200, 0)

INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(301, 300, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(302, 300, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(303, 300, 0)

INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(401, 400, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(402, 400, 0)
INSERT INTO Room(room_Id, room_type_Id, room_status)
VALUES(403, 400, 0)

INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date,check_out_date, total_days, adults, children,room_Id,guest_Id)
VALUES(1, '2020-06-07', '2020-11-06', '2020-11-08', 2, 2, 0, 401, 1)

INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(1, 1, 1, 'Rana', 'ÇAKMAK', 800)



INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(2, 'İrem', 'ÖZTÜRK', 'Esat', 'irozturk@gmail.com', '234567891', 'Ankara', 'Turkey')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(3, 'Mert', 'BAYRAMUSTA', 'Beysukent', 'mbayramusta@gmail.com', '345678912', 'Ankara', 'Turkey')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(4, 'Zeynep', 'ÖZDOĞAN', 'Esat', 'zozdogan@gmail.com', '456789123', 'Ankara', 'Turkey')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(5, 'Gipsy', 'KRALOĞLU', 'Scottish Köyü', 'gipsy@gmail.com', '567891234', 'Glasgow', 'Scotland')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(6, 'Rabia', 'ÇAKMAK', 'Akdere', 'rabicakmak@gmail.com', '678912345', 'Ankara', 'Turkey')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(7, 'Katy', 'PERRY', 'Santa Barbara', 'katyperry@gmail.com', '789123456', 'California', 'United States')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(8, 'Taylor', 'SWIFT', 'Nashville', 'taylorswift@gmail.com', '891234567', 'Tennesse', 'United States')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(9, 'Lady', 'GAGA', 'Yonkers', 'ladygaga@gmail.com', '912345678', 'New York', 'United States')
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(10, 'Do', 'KYUNGSOO', 'Seoul', 'dokyungsoo@gmail.com', '123456780', 'Seoul', 'South Korea')

SELECT* 
FROM Guest

INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(2, '2020-06-08', '2020-08-14', '2020-08-20', 6, 5, 0, 402, 2)
INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id,guest_Id)
VALUES(3, '2020-06-09', '2020-07-06', '2020-07-10', 4, 4, 1, 301, 3)
INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id,guest_Id)
VALUES(4, '2020-06-10', '2020-12-26', '2020-12-28', 2, 2, 0, 103, 4)
INSERT INTO Reservation(reservation_Id, reservation_date, check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(5, '2020-06-09', '2020-08-06', '2020-08-08', 2, 1, 0, 402, 5)
INSERT INTO Reservation(reservation_Id, reservation_date, check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(6, '2020-06-01', '2020-06-06', '2020-06-16', 10, 3, 0, 303, 6)
INSERT INTO Reservation(reservation_Id, reservation_date, check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(7, '2020-06-09', '2020-08-06', '2020-08-08', 2, 1, 1, 403, 7)
INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(8, '2020-06-07', '2020-12-13', '2020-12-17', 4, 2, 0, 201, 8)
INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(9, '2020-06-07', '2020-10-04', '2020-10-08', 4, 1, 0, 202, 9)
INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(10, '2020-06-07', '2021-01-12', '2021-01-14', 2, 2, 0, 203, 10)


SELECT* 
FROM Reservation

INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(2, 2, 2, 'İrem', 'ÖZTÜRK', 2400)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(3, 3, 3, 'Mert', 'BAYRAMUSTA', 1200)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(4, 4, 4, 'Zeynep', 'ÖZDOĞAN', 200)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(5, 5, 5, 'Gipsy', 'KRALOĞLU', 800)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(6, 6, 6, 'Rabia', 'ÇAKMAK', 3000)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(7, 7, 7, 'Katy', 'PERRY', 800)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(8, 8, 8, 'Taylor', 'SWIFT', 800)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(9, 9, 9, 'Lady', 'GAGA', 800)
INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(10, 10, 10, 'Do', 'KYUNGSOO', 400)

SELECT* /*Testing*/
FROM Payment

DELETE FROM Reservation
Where room_Id = 401 

DELETE FROM Reservation
Where reservation_Id = 1

SELECT* /*Testing*/
FROM RoomType

SELECT* /*Testing*/
FROM Room

SELECT* /*Testing*/
FROM Reservation






/*Some Queries*/
SELECT fName, lName, amount 
FROM Payment
WHERE amount > 800

SELECT*
FROM Reservation
WHERE reservation_date = '2020-06-07'

SELECT*
FROM Reservation
WHERE room_Id = 402

SELECT* /*testing*/
FROM Guest,Reservation,Payment


SELECT reservation_Id, fName,lName, reservation_date,check_in_date,check_out_date,total_days,adults,children,room_Id
FROM Guest JOIN Reservation ON 
	Reservation.guest_Id = Guest.guest_Id


SELECT Guest.guest_Id, Guest.fName AS FirstName, Guest.lName AS LastName, amount 
FROM Guest JOIN Payment ON
	Payment.guest_Id = Guest.guest_Id

SELECT Guest.guest_Id, Reservation.reservation_Id, Payment.payment_Id, Guest.fName AS FirstName, Guest.lName AS LastName, room_Id, reservation_date,check_in_date,check_out_date,total_days,adults,children, amount
FROM Guest JOIN Reservation ON 
	Reservation.guest_Id = Guest.guest_Id
	JOIN Payment ON
	Payment.guest_Id = Guest.guest_Id
/*!!!!!!These are equal!!!!!!!*/
SELECT Guest.guest_Id, Reservation.reservation_Id, Payment.payment_Id, Guest.fName AS FirstName, Guest.lName AS LastName, room_Id, reservation_date,check_in_date,check_out_date,total_days,adults,children, amount
FROM Guest,Reservation,Payment
WHERE Guest.guest_Id = Reservation.guest_Id AND Reservation.guest_Id = Payment.guest_Id

SELECT*
FROM Reservation
ORDER BY reservation_date

SELECT Room.room_type_Id, room_Id, room_type_name
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id

SELECT Reservation.reservation_Id, fName, lName, reservation_date,check_in_date,check_out_date,total_days,adults,children, Room.room_type_Id, Room.room_Id, room_type_name, amount
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
	INNER JOIN Payment ON Reservation.reservation_Id = Payment.reservation_Id

SELECT COUNT(guest_Id) AS GuestCount /*Testing*/
FROM Guest

SELECT COUNT(room_Id) AS TotalRoomsInHotel, room_type_name
FROM Room JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
group by room_type_name

SELECT COUNT(Reservation.reservation_Id) AS RoomUsedCount, room_type_name
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
group by room_type_name

SELECT Reservation.reservation_Id, fName, lName, reservation_date,check_in_date,check_out_date,total_days,adults,children, Room.room_type_Id, Room.room_Id, room_type_name, room_status, amount
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
	INNER JOIN Payment ON Reservation.reservation_Id = Payment.reservation_Id



SELECT SUM(adults) AS sumofAdults, SUM(Children) AS sumofChildren
FROM Reservation


SELECT *
FROM Guest
WHERE fname LIKE '___y'

SELECT *
FROM Guest
WHERE fname LIKE 'R%A'

SELECT *
FROM Guest
WHERE fname LIKE '_a%'

UPDATE Room
SET room_status = room_status + 1
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
	INNER JOIN Payment ON Reservation.reservation_Id = Payment.reservation_Id
WHERE Reservation.room_Id = 201

UPDATE Room
SET room_status = room_status + 1
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
	INNER JOIN Payment ON Reservation.reservation_Id = Payment.reservation_Id
WHERE check_in_date = '2020-10-04' AND check_out_date = '2020-10-08'

SELECT Reservation.reservation_Id, fName, lName, reservation_date,check_in_date,check_out_date,total_days,adults,children, Room.room_type_Id, Room.room_Id, room_type_name, room_status, amount
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
	INNER JOIN Payment ON Reservation.reservation_Id = Payment.reservation_Id


SELECT Reservation.reservation_Id, fName, lName, reservation_date,check_in_date,check_out_date,total_days,adults,children, Room.room_type_Id, Room.room_Id, room_type_name, room_status, amount
FROM Room INNER JOIN RoomType ON Room.room_type_Id = RoomType.room_type_Id
	INNER JOIN Reservation ON Room.room_Id = Reservation.room_Id
	INNER JOIN Payment ON Reservation.reservation_Id = Payment.reservation_Id
WHERE check_in_date BETWEEN '2020-08-06' AND '2020-08-13'


Update Payment
set amount=amount*0.95
where amount>500

Select*
From Payment

Update Payment /*testing*/
set amount=amount*1.05
where amount>500

/* DELETION Testing*/
INSERT INTO Guest(guest_Id, fName, lName, g_address, email, phone, city, country)
VALUES(11, 'Deneme', 'Deneme', 'Deneme', 'Deneme', 'Deneme', 'Deneme', 'Deneme')
SELECT* 
FROM Guest
INSERT INTO Reservation(reservation_Id,reservation_date,check_in_date, check_out_date, total_days, adults, children, room_Id, guest_Id)
VALUES(11, '2020-12-26', '2020-12-26', '2020-12-26', 11, 11, 11, 202, 11)
SELECT* 
FROM Reservation

INSERT INTO Payment(payment_Id, guest_Id, reservation_Id, fName, lName, amount)
VALUES(11, 11, 11, 'Deneme', 'Deneme', 10000)
SELECT* 
FROM Payment

DELETE FROM Guest
Where guest_Id = 11