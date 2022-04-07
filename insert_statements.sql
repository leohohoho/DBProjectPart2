INSERT INTO airline(name) VALUES ("China Eastern");

INSERT INTO airport(code, name, city, country, airport_type) VALUES 
    ("JFK", "John F. Kennedy Airport", "New York", "USA", "International"),
    ("TIA", "Tribhuvan International Airport", "Kathmandu", "Nepal", "International"),
    ("HAN", "Noi Bai International Airport", "Hanoi", "Vietnam", "International"),
    ("PVG", "Shanghai Pudong International Airport", "Shanghai", "China", "International");

INSERT INTO customer(email, name, password, building_number, street, city, state, phone_number, passport_number, passport_expiration, passport_country, date_of_birth) VALUES 
	("johndoe@gmail.com", "John Doe", "john123", 101, "Johnson", "New York", "New York", 3452331232, 03233212, STR_TO_DATE("10-17-2025", "%m-%d-%Y"), "USA", STR_TO_DATE("2-17-1995", "%m-%d-%Y")),
    ("janedoe@gmail.com", "Jane Doe", "jane123", 55, "Clark", "New York", "New York", 3423331233, 04323940, STR_TO_DATE("3-21-2026", "%m-%d-%Y"), "USA", STR_TO_DATE("10-17-1997", "%m-%d-%Y")),
    ("markthompson@gmail.com", "Mark Thompson", "mark123", 250, "Hudson", "New York", "New York", 3478885492, 01232569, STR_TO_DATE("10-11-2027", "%m-%d-%Y"), "USA", STR_TO_DATE("4-5-1990", "%m-%d-%Y"));
    
INSERT INTO airplane(ID, airline_name, num_seats, manufacturer, age) VALUES 
	(1, "China Eastern", 150, "Boeing", 5),
    (2, "China Eastern", 200, "Airbus", 1), 
    (3, "China Eastern", 250, "Boeing", 3);

INSERT INTO airline_staff(username, airline_name, password, first_name, last_name, date_of_birth) VALUES
    ("leomessi", "China Eastern", "leomessi123", "Leo", "Messi", STR_TO_DATE("03-21-1985", "%m-%d-%Y"));

INSERT INTO flight(flight_num, airplane_ID, airline_name, base_price, status, departure_datetime, departure_airport_code, arrival_datetime, arrival_airport_code) VALUES
    ("CE506", 2, "China Eastern", 300, "Delayed", "2022-04-07 22:30:00", "JFK", "2022-04-09 15:30:00", "HAN"),
    ("CE707", 1, "China Eastern", 245, "On Time", "2022-04-06 11:30:00", "JFK", "2022-04:08 09:30:00", "TIA");

INSERT INTO ticket (ID_num, email, airplane_ID, airline_name, flight_num, departure_datetime, sold_price, card_number, name_on_card, card_type, expiration_date, purchase_datetime) VALUES 
    ('1', 'janedoe@gmail.com', '2', 'China Eastern', 'CE506', '2022-04-07 22:30:00', '230', '123412323123', 'Jane Doe', 'Credit', '2024-04-25', '2022-04-01 21:16:18'),
    ('2', 'johndoe@gmail.com', '1', 'China Eastern', 'CE707', '2022-04-06 11:30:00', '500', '124567348574', 'John Doe', 'Debit', '2024-04-17', '2022-03-17 21:16:18'),


INSERT INTO purchase (ticket_ID, email) VALUES 
    (1, 'janedoe@gmail.com'),
    (2, 'johndoe@gmail.com');

INSERT INTO staff_phone (username, phone_number) VALUES ("leomessi", 3472312832); 
