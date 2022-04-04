-- Leo Ho - lmh575
-- Sanidhya Sitaula - ss12801

-- Part 2 Section 2

create table airport(
    code		varchar(10),
    name		varchar(256),
    city		varchar(20),
    country		varchar(20),
    airport_type		varchar(20),
	
	primary key (code)
	);

create table airline(
    name		varchar(256),
	primary key (name)
	);

create table airplane(
    ID		varchar(10),
    airline_name		varchar(256),
    num_seats		numeric(3,0),
    manufacturer		varchar(20),
    age		numeric(2,0),
	 
    primary key (ID),
    foreign key (airline_name) references airline(name)
        on update cascade on delete cascade
	);



create table flight(
    flight_num		varchar(10),
    airplane_ID		varchar(10),
    airline_name		varchar(256),
    base_price		numeric(10,0),
    status			varchar(20) check (status in ('delayed', 'on time')),
    departure_date_time	DATETIME,
    departure_airport_code	varchar(10),
    arrival_date_time	DATETIME,
    arrival_airport_code 	varchar(10),

    primary key (flight_num, departure_date_time),
    foreign key (airline_name) references airline(name)
        on update cascade on delete cascade,
    foreign key (airplane_ID) references airplane(ID)
        on update cascade on delete cascade,
    foreign key (departure_airport_code) references airport(code)
        on update cascade on delete cascade,
    foreign key (arrival_airport_code) references airport(code)
        on update cascade on delete cascade
	);

create table customer(
    email			varchar(50),
    name			varchar(50),
    password		varchar(20),
    building_number		varchar(20),
    street			varchar(20),
    city			varchar(20),
    state			varchar(20),
    phone_number		numeric(10,0),
    passport_number		varchar(20),
    passport_expiration	DATE,
    passport_country	varchar(20),
    date_of_birth		DATE,
    primary key (email)	
	);

create table ticket(
    ID_num		varchar(10),
    email			varchar(50),
    airplane_ID		varchar(10),
    airline_name		varchar(256),
    flight_num		varchar(10),
    departure_date_time	DATETIME,
    sold_price		numeric(10,0),
    card_number		numeric(12,0),
    name_on_card		varchar(50),
    card_type		varchar(10) check (card_type in ('Credit', 'Debit')),
    expiration_date DATE,
    purchase_date_time	DATETIME,

    primary key (ID_num),
    foreign key (email) references customer(email)
        on update cascade on delete cascade,
    foreign key (airline_name) references airline(name)
        on update cascade on delete cascade,
    foreign key (airplane_ID) references airplane(ID)
        on update cascade on delete cascade,
    foreign key (flight_num, departure_date_time) references flight(flight_num, departure_date_time)
        on update cascade on delete cascade
	);
	 

create table airline_staff(  
    username		varchar(20),
    airline_name		varchar(256),
    password		varchar(50),
    first_name		varchar(20),
    last_name		varchar(20),
    date_of_birth		DATE,

    primary key (username),
    foreign key (airline_name) references airline(airline_name)
        on update cascade on delete cascade
	);

create table staff_phone(
    username		varchar(20),
    phone_number		numeric(10,0),
    primary key (phone_number),
    foreign key (username) references airline_staff(username)
        on update cascade on delete cascade
	);



create table purchase(
    ticket_ID		varchar(10),
    email			varchar(50),
    foreign key (ticket_ID) references ticket(ID_num)
        on update cascade on delete cascade,
    foreign key (email) references customer(email)
        on update cascade on delete cascade
	);

create table rate(
    flight_num		varchar(10),
    email			varchar(50),
    rating			numeric(1,0),
    comment		varchar(1000),
    foreign key (flight_num) references flight(flight_num)
        on update cascade on delete cascade,
    foreign key (email) references customer(email)
        on update cascade on delete cascade
	);