
/* PATIENT AND ADDRESS */
/* INSERT VALUES INTO ADDRESS */

INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '19 Brazier Crescent', 'Northolt', 'Swansea', 'LS18 5GW' );
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '19 St Johns Road', 'Oldbury', 'Lampeter', 'TN17 2BL');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '48 Greenside Way', 'Mount Pleasant', 'Carmarthen', 'FY2 9DH');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( 'Malvern House, Smedley Street', 'Mount Pleasant', 'London', 'GL20 8TQ');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( 'Field House, Church Lane', 'Mount Pleasant', 'Glasgow', 'S41 0UE');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '7 Newbolt Road', 'Spring Gardens', 'Bristol', 'NG11 7AG');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '5 Bloomfield Way', 'Carlton Colville', 'London', 'IG10 1DW');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( 'Broniaen','Llanbrynmair','Llanbrynmair', 'SY19 7AB');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( 'Flat 6, Gedling House', 'East Dulwich Estate', 'London', 'SE22 8BP');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '53 Glan Y Mor', 'Llanelli', 'Aberaeron', 'BS34 7EA');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '9 Farndale Avenue', 'Southend-On-Sea', 'Woodchester', 'SL9 8TS');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '7 Foxleigh Close', 'Waunarlwydd', 'Billericay', 'PO35 5PG');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '9 Harvey Close', 'Halstead', 'Haydoc', 'LL13 9UX');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '81A East Street', 'Leek', 'Billericay', 'ST12 9FF');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( 'Ourome, Stow', 'Bishop Auckland', 'Portishead', 'SY11 2XE');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '10 Elm Terrace', 'Oswestry', 'Lawford', 'SA12 9AB');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '65 High Street', 'Wirral', 'Beccles', 'CO11 2HW');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '8 Pinetree Close', 'Mitcham', 'Tondu', 'CM12 9NZ');
INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '33 Harvey Street', 'Bembridge', 'Penwortham', 'BN44 3LF');


/* INSERT VALUES INTO PATIENTS */

INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Rick', 'Astley','07978266774','Rickastleythegreatest@pengting.com', '01-01-1980', '0', '01-Apr-2013', '1' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Caroline', 'Barrett','07700 900226','nidrissiyassine7g@ritadecrypt.net','01-01-1980', '1', '01-Apr-2013', '2' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Brad', 'Gibson','07700 900226','orenner.h@libridivertenti.shop', '02-03-1956', '1', '01-Aug-2015', '2' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Henry', 'Evans','07700 900571','soumaima.mansour0@companynews.com', '12-10-1950', '0', '23-Jun-2018', '3' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Andrew', 'Nelson','07700 900990','6la.lam0@rubyblogger.com', '10-05-1974', '0', '22-Mar-2019', '4' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Miley', 'Robinson','07700 900801','bmido_vsam@whatthefeast.com', '08-04-1976', '0', '21-Feb-2013', '5' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Jessica', 'Bailey','07700 900538','uabdelilah.abhi.2@farmersreference.com', '01-05-1979', '1', '15-Mar-2016', '6' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Savana', 'Harper','07700 900151','1mester.a@atthecentre.com', '03-03-1994', '1', '1-Aug-2020', '7' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Grace', 'Carter','07700 900084','vanas.robi.51@cuentosblanditos.com', '09-01-2001', '1', '22-Apr-2018', '8' );
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Oscar', 'Henderson','07700 900193','2ali.b@saleiphone.ru', '02-08-2005', '1', '22-Mar-2020', '9' );

/* Returns Patient Details */

SELECT * FROM TBL_PATIENTS, TBL_ADDRESS WHERE TBL_PATIENTS.AddressNo = TBL_ADDRESS.AddressNo; 


/* INSERT VALUES INTO STAFF */

INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Richard', 'Evans', '1987-10-11', 'Dentist', '100000', '2010-11-01', 'richevans@evansville.com', '01728283923', '10');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Blake', 'Cameron', '1951-07-02', 'Dentist', '75000', '2011-01-03', 'cydney52@rolfson.com', '07700 900538', '4');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Dainton', 'Armstrong', '1955-09-02', 'Dentist', '50000', '2011-12-05', 'kkohler@gmail.com', '07700 900387', '11');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Edgar', 'Turner', '1957-07-09', 'Dentist', '55000', '2012-01-06', 'webster95@schinner.com', '07700 900699', '12');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Maddie', 'Williams', '1963-10-09', 'Dental Hygienist', '25000', '2012-06-26', 'tryan@gmail.com', '07700 900736 ', '13');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('James', 'Evans', '1967-11-13', 'Dental Hygienist', '25000', '2012-09-24', 'lila.thompson@hoppe.com', '07700 900728', '14');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Richard', 'Riley', '1972-08-08', 'Dental Hygienist', '25000', '2014-02-21', 'kmedhurst@jast.net', '07700 900986', '15');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Sawyer', 'Richardson', '1973-11-26', 'Dental Hygienist', '32000', '2014-09-12', 'maeve02@denesik.com', '07700 900963', '15');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Ted', 'Mitchell', '1975-07-18', 'Dental Hygienist', '25000', '2016-11-02', 'haven.conroy@hotmail.com', '07700 900642', '16');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Amy', 'Watson', '1978-03-13', 'Dental Hygienist', '25000', '2016-12-07', 'abigale25@hotmail.com', '07700 900193', '17');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Fiona', 'Higgins', '1978-06-14', 'Dental Nurse', '18000', '2017-01-25', 'phyllis93@gmail.com', '07700 900903', '18');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Brad', 'Carroll', '1980-01-30', 'Dental Nurse', '18000', '2017-07-13', 'willms.lavern@metz.info', '07700 900615', '2');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Sienna', 'Fowler', '1981-01-28', 'Dental Nurse', '18000', '2021-01-14', 'avada.hegmann@yahoo.com', '07700 900787', '8');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Dainton', 'Hall', '1983-04-29', 'Dental Nurse', '18000', '2021-02-15', 'emington22@yahoo.com', '07700 900405', '13');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Edgar', 'Spencer', '1987-06-04', 'Dental Nurse', '18000', '2020-01-01', 'murazik.anika@kunde.com', '07700 900632', '5');
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Roland', 'Scott', '1992-03-30', 'Dental Nurse', '18000', '2021-02-01', 'tryan@gmail.com', '07700 900976', '6');



/* Returns Staff Details */
SELECT * FROM TBL_STAFF, TBL_ADDRESS WHERE TBL_STAFF.AddressNo = TBL_ADDRESS.AddressNo; 



/*INSERT VALUES INTO DATE */
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2020-12-28', '2021-01-03');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-01-04', '2021-01-10');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-01-11', '2021-01-17');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-01-18', '2021-01-24');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-01-25', '2021-01-31');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-02-01', '2021-02-07');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-02-08', '2021-02-14');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-02-15', '2021-02-21');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-02-22', '2021-02-28');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-03-01', '2021-03-07');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-03-08', '2021-03-14');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-03-15', '2021-03-21');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-03-22', '2021-03-28');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-03-29', '2021-04-04');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-04-05', '2021-04-11');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-04-12', '2021-04-18');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-04-19', '2021-04-25');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-04-26', '2021-05-02');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-05-03', '2021-05-09');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-05-10', '2021-05-16');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-05-17', '2021-05-23');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-05-24', '2021-05-30');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-05-31', '2021-06-06');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-06-07', '2021-06-13');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-06-14', '2021-06-20');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-06-21', '2021-06-27');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-06-28', '2021-07-04');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-07-05', '2021-07-11');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-07-12', '2021-07-18');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-07-19', '2021-07-25');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-07-26', '2021-08-01');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-08-02', '2021-08-08');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-08-09', '2021-08-15');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-08-16', '2021-08-22');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-08-23', '2021-08-29');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-08-30', '2021-09-05');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-09-06', '2021-09-12');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-09-13', '2021-09-19');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-09-20', '2021-09-26');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-09-27', '2021-10-03');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-10-04', '2021-10-10');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-10-11', '2021-10-17');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-10-18', '2021-10-24');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-10-25', '2021-10-31');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-11-01', '2021-11-07');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-11-08', '2021-11-14');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-11-15', '2021-11-21');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-11-22', '2021-11-28');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-11-29', '2021-12-05');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-12-06', '2021-12-12');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-12-13', '2021-12-19');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-12-20', '2021-12-26');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2021-12-27', '2022-01-02');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-01-03', '2022-01-09');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-01-10', '2022-01-16');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-01-17', '2022-01-23');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-01-24', '2022-01-30');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-01-31', '2022-02-06');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-02-07', '2022-02-13');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-02-14', '2022-02-20');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-02-21', '2022-02-27');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-02-28', '2022-03-06');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-03-07', '2022-03-13');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-03-14', '2022-03-20');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-03-21', '2022-03-27');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-03-28', '2022-04-03');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-04-04', '2022-04-10');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-04-11', '2022-04-17');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-04-18', '2022-04-24');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-04-25', '2022-05-01');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-05-02', '2022-05-08');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-05-09', '2022-05-15');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-05-16', '2022-05-22');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-05-23', '2022-05-29');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-05-30', '2022-06-05');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-06-06', '2022-06-12');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-06-13', '2022-06-19');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-06-20', '2022-06-26');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-06-27', '2022-07-03');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-07-04', '2022-07-10');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-07-11', '2022-07-17');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-07-18', '2022-07-24');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-07-25', '2022-07-31');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-08-01', '2022-08-07');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-08-08', '2022-08-14');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-08-15', '2022-08-21');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-08-22', '2022-08-28');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-08-29', '2022-09-04');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-09-05', '2022-09-11');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-09-12', '2022-09-18');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-09-19', '2022-09-25');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-09-26', '2022-10-02');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-10-03', '2022-10-09');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-10-10', '2022-10-16');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-10-17', '2022-10-23');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-10-24', '2022-10-30');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-10-31', '2022-11-06');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-11-07', '2022-11-13');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-11-14', '2022-11-20');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-11-21', '2022-11-27');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-11-28', '2022-12-04');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-12-05', '2022-12-11');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-12-12', '2022-12-18');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-12-19', '2022-12-25');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2022-12-26', '2023-01-01');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-01-02', '2023-01-08');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-01-09', '2023-01-15');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-01-16', '2023-01-22');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-01-23', '2023-01-29');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-01-30', '2023-02-05');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-02-06', '2023-02-12');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-02-13', '2023-02-19');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-02-20', '2023-02-26');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-02-27', '2023-03-05');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-03-06', '2023-03-12');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-03-13', '2023-03-19');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-03-20', '2023-03-26');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-03-27', '2023-04-02');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-04-03', '2023-04-09');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-04-10', '2023-04-16');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-04-17', '2023-04-23');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-04-24', '2023-04-30');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-05-01', '2023-05-07');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-05-08', '2023-05-14');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-05-15', '2023-05-21');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-05-22', '2023-05-28');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-05-29', '2023-06-04');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-06-05', '2023-06-11');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-06-12', '2023-06-18');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-06-19', '2023-06-25');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-06-26', '2023-07-02');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-07-03', '2023-07-09');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-07-10', '2023-07-16');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-07-17', '2023-07-23');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-07-24', '2023-07-30');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-07-31', '2023-08-06');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-08-07', '2023-08-13');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-08-14', '2023-08-20');
INSERT INTO TBL_DATE (StartDate, EndDate) VALUES ( '2023-08-21', '2023-08-27');


/*INSERT VALUES INTO SURGERIES */

INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '08:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '08:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '09:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '09:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '09:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '09:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '10:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '10:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '10:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '10:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '11:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '11:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '11:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '14:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '14:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '14:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '14:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '15:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '15:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '15:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '15:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '16:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '16:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '16:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '16:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'MON', '17:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '08:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '08:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '09:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '09:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '09:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '09:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '10:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '10:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '10:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '10:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '11:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '11:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '11:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '14:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '14:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '14:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '14:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '15:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '15:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '15:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '15:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '16:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '16:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '16:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '16:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '17:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'TUE', '08:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '08:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '09:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '09:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '09:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '09:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '10:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '10:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '10:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '10:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '11:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '11:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '11:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '14:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '14:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '14:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '14:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '15:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '15:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '15:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '15:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '16:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '16:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '16:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '16:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'WED', '17:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '08:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '08:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '09:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '09:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '09:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '09:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '10:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '10:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '10:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '10:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '11:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '11:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '11:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '14:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '14:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '14:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '14:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '15:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '15:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '15:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '15:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '16:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '16:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '16:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '16:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'THU', '17:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '08:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '08:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '09:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '09:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '09:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '09:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '10:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '10:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '10:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '10:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '11:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '11:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '11:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '14:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '14:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '14:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '14:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '15:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '15:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '15:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '15:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '16:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '16:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '16:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '16:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'FRI', '17:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '08:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '08:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '09:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '09:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '09:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '09:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '10:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '10:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '10:30');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '10:45');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '11:00');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '11:15');
INSERT INTO TBL_SURGERIES (SurgeryDay, SurgeryTime) VALUES ( 'SAT', '11:30');




/*INSERT VALUES INTO APPOINTMENT */

INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (1,1,2,1,'Comment Test');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (4,4,3,3,'Second Appointment');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (7,2,8,5,'Follow up appointment');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (3,11,5,5,'Tooth Infection');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (2,8,6,6,'Scrape and Polish');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (1,1,11,5,'Root canal');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (6,4,2,4,'Follow up appointment');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (7,6,5,14,'Follow up appointment');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (4,3,3,11,'Filling repair');
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (9,1,1,7,'Follow up appointment');

/* PAYMENT */ 

INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (1, 325, '1')
INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (2, 300, '0')
INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (3, 600, '1')
INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (4, 245, '1')
INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (5, 15, '1')
INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (6, 3200, '0')
INSERT INTO TBL_PAYMENT (AppointmentNo, Amount, Settled) VALUES (7, 77, '1')


/* View Appointments */

SELECT * FROM TBL_APPOINTMENTS

SELECT * FROM TBL_APPOINTMENTS, TBL_PAYMENT WHERE TBL_PAYMENT.AppointmentNo = TBL_APPOINTMENTS.AppointmentNo


/* Join Demonstration for an Appointment */

SELECT Pat.FirstName AS Patient_First_Name,
	Pat.LastName AS Patient_Last_Name,
	Add1.Postcode AS Patient_Postcode,
	CASE Pat.NHS WHEN 0 THEN 'No' ELSE 'Yes' END AS NHS_Eligibility,
	Sur.SurgeryTime AS Appointment_Time,
	Sur.SurgeryDay AS Surgery_Day,
	Date.StartDate AS Week_Commencing,
	Sta.Position AS Position,
	Sta.LastName AS Staff_Name,
	Add2.Postcode As Staff_Postcode,
	Pay.Amount AS Proceedure_Cost,
	CASE Pay.Settled WHEN 0 THEN 'No' ELSE 'Yes' END AS Payment_Settled
FROM TBL_APPOINTMENTS AS App,
	TBL_ADDRESS AS Add1 ,
	TBL_ADDRESS AS Add2,
	TBL_DATE AS Date,
	TBL_PATIENTS AS Pat,
	TBL_STAFF AS Sta,
	TBL_SURGERIES AS Sur,
	TBL_PAYMENT AS Pay
WHERE Pay.AppointmentNo = App.AppointmentNo
	AND App.DateNo = Date.DateNo
	AND App.StaffNo = Sta.StaffNo
	AND App.PatientNo = Pat.PatientNo
	AND App.SurgeryNo = Sur.SurgeryNo
	AND Pat.AddressNo = Add1.AddressNo
	AND Sta.AddressNo = Add2.AddressNo;




/* Profits for each Week */

SELECT TBL_DATE.StartDate AS Week_Of, SUM(TBL_PAYMENT.Amount) AS Weekly_Total
FROM TBL_APPOINTMENTS,
	TBL_PAYMENT,
	TBL_DATE
WHERE TBL_APPOINTMENTS.DateNo = TBL_DATE.DateNo 
	AND	TBL_PAYMENT.AppointmentNo = TBL_APPOINTMENTS.AppointmentNo
	AND TBL_PAYMENT.Settled = 1
GROUP BY TBL_DATE.StartDate;
	



/* Testing Constraints*/
-- Insert a patient who already exists returns an error
INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Rick', 'Astley','07978266774','Rickastleythegreatest@pengting.com', '01/01/1980', '0', '01-Apr-2013', '1');

-- Insert a staff that already exists returns an error
INSERT TBL_STAFF (FirstName, LastName, DOB, Position, Salary, StartDate, Email, MobileNo, AddressNo) VALUES ('Richard', 'Evans', '1987-10-11', 'Dentist', '100000', '2010-11-01', 'richevans@evansville.com', '01728283923', '10');

-- Testing the constraint on appointments table
-- Cannot insert a patient with the same staff member at the same time. 
INSERT INTO TBL_APPOINTMENTS (PatientNo, StaffNo, SurgeryNo, DateNo, Comment) VALUES (2,1,1,1,'Duplicate Value'); 



-- Rollback Transaction when adding a patient
BEGIN TRANSACTION AddNewPatient
	BEGIN TRY -- add try to catch errors
	-- Add new client address
	INSERT INTO TBL_ADDRESS (FirstLine, SecondLine, City, Postcode) VALUES ( '19 Brazier Crescent', 'Northolt', 'Swansea', 'LS18 5GW' );

	-- Add the new patient details
	INSERT INTO TBL_PATIENTS (FirstName, LastName, PhoneNo, Email, DOB, NHS, RegistrationDate, AddressNo) VALUES ('Rick', 'Astley','07978266774','Rickastleythegreatest@pengting.com', '01/01/1980', '0', '01-Apr-2013', '20' );

	-- Commit ALL changes, insert if successful
	COMMIT TRANSACTION AddNewPatient;
END TRY
BEGIN CATCH -- add catch to handle error
	-- Rollback the insert statements, and display an error has occurred. Patient 20 does not exist
	ROLLBACK TRANSACTION AddNewPatient;
	PRINT('Rolling back, an error occurred!'); 
	THROW;
END CATCH;


/* Investigation of Query statistic times */
SET STATISTICS TIME ON
SET STATISTICS IO ON
GO

SELECT TBL_STAFF.FirstName, TBL_STAFF.LastName, TBL_ADDRESS.FirstLine, TBL_ADDRESS.SecondLine, TBL_ADDRESS.City, TBL_ADDRESS.Postcode
FROM TBL_STAFF, TBL_ADDRESS
WHERE TBL_STAFF.AddressNo = TBL_ADDRESS.AddressNo; 




-- Mock Data gathered from
-- Names & addresses
--http://Generatedata.com,
-- Names & addresses
--http://Mockaroo.com,
--https://www.ukpostcode.co.uk/random.htm,
-- Uk Phone numbers
--https://fakenumber.org/phone/+44-7700-900077

