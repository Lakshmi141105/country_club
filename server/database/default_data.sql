-- -------------------------------------------------------------
-- ---DEFAUTL DATA (If Admin side add these insertion, we can remove from here)--------------------
-- ----------------------------------------------------------------
-- event status
insert into event_status(status) values("Confirmed");
insert into event_status(status) values("Cancelled");
insert into event_status(status) values("Modified");
insert into event_status(status) values("Pending");

-- user status
insert into user_status(status) values("Pending");
insert into user_status(status) values("Active");
insert into user_status(status) values("Expired");

-- venue type
INSERT INTO venue_type (venue_type) VALUES("private_party");
insert into venue_type (venue_type) values('sport');
-- venue data. 
INSERT INTO venue (venue_id, venue_name, venue_type, capacity) VALUES (1001,"Hall 01","private_party",50);
INSERT INTO venue (venue_id, venue_name, venue_type, capacity) VALUES (1002,"Hall 02","private_party",100);
INSERT INTO venue (venue_id, venue_name, venue_type, capacity) VALUES (1003,"Hall 03","private_party",25);

insert into venue (venue_id, venue_name,venue_type, capacity) values(1004,'Basket Ball Court', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1005,'Tennis Court', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1006,'Table Tennis Room', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1007,'Swimming Pool', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1008,'Kids Pool', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1009,'Billiard Room', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1010,'Archery Field', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1011,'Golf Course', 'sport',50);
insert into venue (venue_id, venue_name,venue_type, capacity) values(1012,'Yoga Room', 'sport',50);


-- membership_type
INSERT INTO membership_type (type_id, name, description,dependent_count) VALUES (0, "Silver", "eligible to participate in all events",0);
INSERT INTO membership_type (type_id, name,  description,dependent_count) VALUES (1, "Gold", "Silver user privileges + elgible to enroll 2 dependents",2);
INSERT INTO membership_type (type_id, name,  description,dependent_count) VALUES (2, "Platinum", "Gold user privileges + access to organize own private events",2);

-- root or admin
INSERT INTO countryclub.user (user_id, f_name, l_name, email_id, street, city, zip_code, password, auth_id, status) VALUES ('1001', 'admin', '1', 'admin@gmail.com', 'admin', 'admin', '12345', '$2b$10$9YqB7/S5KvMHr3yiu2PK.uzXBVgxIqhXJdiMNLubYg7QhsrFr37c6', b'1', 'Active');

-- sports data
insert into sports (s_name, venue_id, start_time, end_time) values('Basket Ball', 1004, '08:00:00','20:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Tennis', 1005, '09:00:00','18:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Table Tennis', 1006, '08:00:00','20:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Swimming', 1007, '10:00:00','19:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Swimming-kid', 1008, '12:00:00','18:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Billiard', 1009, '08:00:00','20:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Archery', 1010, '11:00:00','16:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Golf', 1011, '08:00:00','16:00:00');
insert into sports (s_name, venue_id, start_time, end_time) values('Yoga', 1012, '08:00:00','11:00:00');

-- time_slot (start_time, end_time)
insert into time_slot (start_time, end_time) values('08:00:00','09:00:00');
insert into time_slot (start_time, end_time) values('09:00:00','10:00:00');
insert into time_slot (start_time, end_time) values('10:00:00','11:00:00');
insert into time_slot (start_time, end_time) values('11:00:00','12:00:00');
insert into time_slot (start_time, end_time) values('12:00:00','13:00:00');
insert into time_slot (start_time, end_time) values('13:00:00','14:00:00');
insert into time_slot (start_time, end_time) values('14:00:00','15:00:00');
insert into time_slot (start_time, end_time) values('15:00:00','16:00:00');
insert into time_slot (start_time, end_time) values('16:00:00','17:00:00');
insert into time_slot (start_time, end_time) values('17:00:00','18:00:00');
insert into time_slot (start_time, end_time) values('18:00:00','19:00:00');
insert into time_slot (start_time, end_time) values('19:00:00','20:00:00');

-- sport_time(ts_id,sport_id)
-- Basket Ball(08:00:00-20:00:00)
insert into sport_time values(1001,1001);
insert into sport_time values(1002,1001);
insert into sport_time values(1003,1001);
insert into sport_time values(1004,1001);
insert into sport_time values(1005,1001);
insert into sport_time values(1006,1001);
insert into sport_time values(1007,1001);
insert into sport_time values(1008,1001);
insert into sport_time values(1009,1001);
insert into sport_time values(1010,1001);
insert into sport_time values(1011,1001);
insert into sport_time values(1012,1001);

-- Tennis(09:00:00-18:00:00)
insert into sport_time values(1002,1002);
insert into sport_time values(1003,1002);
insert into sport_time values(1004,1002);
insert into sport_time values(1005,1002);
insert into sport_time values(1006,1002);
insert into sport_time values(1007,1002);
insert into sport_time values(1008,1002);
insert into sport_time values(1009,1002);
insert into sport_time values(1010,1002);

-- Basket Ball(08:00:00-20:00:00)
insert into sport_time values(1001,1003);
insert into sport_time values(1002,1003);
insert into sport_time values(1003,1003);
insert into sport_time values(1004,1003);
insert into sport_time values(1005,1003);
insert into sport_time values(1006,1003);
insert into sport_time values(1007,1003);
insert into sport_time values(1008,1003);
insert into sport_time values(1009,1003);
insert into sport_time values(1010,1003);
insert into sport_time values(1011,1003);
insert into sport_time values(1012,1003);

-- Swimming (10:00:00-19:00:00)
insert into sport_time values(1003,1004);
insert into sport_time values(1004,1004);
insert into sport_time values(1005,1004);
insert into sport_time values(1006,1004);
insert into sport_time values(1007,1004);
insert into sport_time values(1008,1004);
insert into sport_time values(1009,1004);
insert into sport_time values(1010,1004);
insert into sport_time values(1011,1004);

-- Swimming-kid(12:00:00-18:00:00)
insert into sport_time values(1005,1005);
insert into sport_time values(1006,1005);
insert into sport_time values(1007,1005);
insert into sport_time values(1008,1005);
insert into sport_time values(1009,1005);
insert into sport_time values(1010,1005);


-- Billiard (08:00:00-20:00:00)
insert into sport_time values(1001,1006);
insert into sport_time values(1002,1006);
insert into sport_time values(1003,1006);
insert into sport_time values(1004,1006);
insert into sport_time values(1005,1006);
insert into sport_time values(1006,1006);
insert into sport_time values(1007,1006);
insert into sport_time values(1008,1006);
insert into sport_time values(1009,1006);
insert into sport_time values(1010,1006);
insert into sport_time values(1011,1006);
insert into sport_time values(1012,1006);

-- Archery (11:00:00-16:00:00)
insert into sport_time values(1004,1007);
insert into sport_time values(1005,1007);
insert into sport_time values(1006,1007);
insert into sport_time values(1007,1007);
insert into sport_time values(1008,1007);

-- Golf (08:00:00-16:00:00)
insert into sport_time values(1001,1008);
insert into sport_time values(1002,1008);
insert into sport_time values(1003,1008);
insert into sport_time values(1004,1008);
insert into sport_time values(1005,1008);
insert into sport_time values(1006,1008);
insert into sport_time values(1007,1008);
insert into sport_time values(1008,1008);

-- Yoga (08:00:00-11:00:00)
insert into sport_time values(1001,1009);
insert into sport_time values(1002,1009);
insert into sport_time values(1003,1009);