DROP TABLE IF EXISTS employee;

CREATE TABLE employee
(
    UserID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(30),
    Lname VARCHAR(30),
    DOB DATE,
    SSN VARCHAR(11),
    address VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(3),
    email VARCHAR(40) NOT NULL UNIQUE,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Carlotta', 'Carpe', '1983-10-21', '181-33-3403', '4196 Jenna Avenue', 'San Jose', 'CA', 'ccarpej@mit.edu', 'ccarpej', 'MJFuCrd7IE1');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Rochell', 'Yarrall', '1968-01-26', '283-74-0956', '563 Derek Junction', 'Arlington', 'TX', 'ryarrallk@mozilla.org', 'ryarrallk', 'ZE2VJC');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Aurore', 'Blunsum', '1989-04-13', '819-40-2165', '40857 Mosinee Alley', 'Saint Cloud', 'MN', 'ablunsuml@sbwire.com', 'ablunsuml', '7xPhFyGuhMh');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Tami', 'Smallbone', '2018-10-20', '303-03-8606', '4 Spohn Alley', 'Chattanooga', 'TN', 'tsmallbonem@patch.com', 'tsmallbonem', 'PWLFpDj');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Shawn', 'Knaggs', '1976-10-19', '863-79-7771', '1 Del Mar Way', 'Lawrenceville', 'GA', 'sknaggsn@state.tx.us', 'sknaggsn', 'aE9y00rHwAz6');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Barclay', 'Skillings', '1961-08-30', '613-63-4762', '80750 Blaine Avenue', 'Brockton', 'MA', 'bskillingso@jugem.jp', 'bskillingso', 'Jwe9VT');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Garnette', 'Eburah', '2013-09-04', '189-42-9302', '5458 Helena Hill', 'Mobile', 'AL', 'geburahp@quantcast.com', 'geburahp', 'VJquu06vBb');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Alana', 'Heimes', '2011-01-22', '477-13-0261', '94574 Farragut Crossing', 'Dallas', 'TX', 'aheimesq@jalbum.net', 'aheimesq', '5xrZq0oGdyK');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Eddy', 'Blemen', '2009-03-28', '654-18-5573', '1440 Straubel Lane', 'New York City', 'NY', 'eblemenr@washington.edu', 'eblemenr', 'NAxbxBV');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Osbourn', 'Porcher', '1986-03-28', '747-37-6619', '7223 Kropf Plaza', 'Bakersfield', 'CA', 'oporcher6@booking.com', 'oporcher6', 'JOPDyJ');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Kesley', 'Bartosiak', '1989-03-15', '478-77-6953', '850 Laurel Terrace', 'Anchorage', 'AK', 'kbartosiakt@marriott.com', 'kbartosiakt', 'gCm8DtwlGyD');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Mufinella', 'Elcock', '1992-08-30', '826-24-3855', '055 Vahlen Lane', 'Columbus', 'OH', 'melcocku@shop-pro.jp', 'melcocku', 'ulJ5OLXZ');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Agnes', 'Meecher', '2008-08-20', '615-80-0060', '36 Russell Avenue', 'Grand Rapids', 'MI', 'ameecherv@vk.com', 'ameecherv', 'Qye3ufcgK');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Jaime', 'Garratty', '2017-03-25', '643-44-9180', '6413 Mcguire Terrace', 'Vero Beach', 'FL', 'jgarrattyw@baidu.com', 'jgarrattyw', 'TgKnuKld2');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Hestia', 'Tomney', '2004-12-20', '760-17-6935', '2671 Coleman Crossing', 'Missoula', 'MT', 'htomneyx@friendfeed.com', 'htomneyx', 'edH3heu');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Theressa', 'Filkin', '1969-01-31', '513-64-8299', '86265 Pankratz Center', 'Jacksonville', 'FL', 'tfilkiny@telegraph.co.uk', 'tfilkiny', 'oLpYqosJWi8');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Leontine', 'Le Estut', '2004-08-04', '309-14-8287', '73 Towne Avenue', 'Birmingham', 'AL', 'lleestut15@multiply.com', 'lleestut15', 'pyUxzoT06Co');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Shelbi', 'Bowser', '1988-05-28', '506-67-2283', '0 Donald Crossing', 'Young America', 'MN', 'sbowser16@blogger.com', 'sbowser16', '6XbMlUaQ8DjQ');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Marena', 'Nansom', '1983-04-28', '737-81-1824', '68669 Leroy Street', 'Sacramento', 'CA', 'mnansom17@ucoz.ru', 'mnansom17', 'serjvVZ');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Jeri', 'Perigo', '2015-07-20', '739-27-4995', '533 Merry Drive', 'Seattle', 'WA', 'jperigo18@engadget.com', 'jperigo18', '4WK4m8FL');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Jayson', 'Castillon', '2000-03-14', '638-50-5570', '3 Schlimgen Way', 'Wichita', 'KS', 'jcastillon19@netscape.com', 'jcastillon19', 'aR2SQ0SE5');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Jo-anne', 'Dumblton', '2006-10-05', '634-82-3089', '3 Warbler Terrace', 'Washington', 'DC', 'jdumblton1a@wordpress.com', 'jdumblton1a', 'KsZr6jX');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Rafi', 'Kington', '2012-07-29', '217-24-1179', '39155 Brown Street', 'Grand Rapids', 'MI', 'rkington1b@ucla.edu', 'rkington1b', 'F3pVPAyJaH');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Karry', 'O''Fihily', '1983-04-04', '556-66-8381', '0103 Stang Terrace', 'Hartford', 'CT', 'kofihily1c@senate.gov', 'kofihily1c', 'dqxn7R2');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Enrico', 'Turpey', '1980-08-16', '721-31-4857', '68594 Atwood Alley', 'Bakersfield', 'CA', 'eturpey14@icio.us', 'eturpey14', 'ge0eicfBX');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Teena', 'Pavitt', '2018-02-16', '430-29-8369', '8 Di Loreto Place', 'Sacramento', 'CA', 'tpavitt1k@tmall.com', 'tpavitt1k', 'DGo8See');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Claudette', 'Duggleby', '2000-02-06', '194-21-3902', '83180 Parkside Avenue', 'Nashville', 'TN', 'cduggleby1l@networksolutions.com', 'cduggleby1l', 'gWicT3');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Florentia', 'Schooley', '1996-10-30', '769-43-8529', '83 Golden Leaf Way', 'Bakersfield', 'CA', 'fschooley1m@1688.com', 'fschooley1m', '9GRznyl8ua');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Silvan', 'Parkes', '2016-09-16', '785-10-5534', '38 Summit Parkway', 'Chicago', 'IL', 'sparkes1n@google.fr', 'sparkes1n', '5jPbGhEIj');
insert into employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password) values ('Maighdiln', 'Pringour', '1987-05-19', '879-99-6266', '56 Weeping Birch Alley', 'Kansas City', 'MO', 'mpringour1o@thetimes.co.uk', 'mpringour1o', 'vcedeUclY');