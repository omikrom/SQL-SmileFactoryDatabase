/* Creating Smile Factory Tables & Constraints */

/* Create surgeries table

	@attribute SurgeryNo		- Auto generated and incremented primary key
	@attribute SurgeryDay		- 3 character list length, MON,TUE,WED,THU,FRI,SAT,SUN
	@attribute SurgeryTime		- 15 minute slots based on timetable provided

*/
CREATE TABLE  TBL_SURGERIES (
	SurgeryNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	SurgeryDay Char(3) NOT NULL,
	SurgeryTime time NOT NULL
);

/* Create address table

	@attribute AddressNo		- Auto generated and incremented primary key
	@attribute FirstLine		- 50 character char max, first line of address field. Required
	@attribute SecondLine		- 50 character char max, second line of address field. Not required
	@attribute City				- 50 character char max, city address field. Not required
	@attribute Postcode			- 15 character char max, postcode field, check the character length is more than equal to 6. Required

*/

CREATE TABLE TBL_ADDRESS (
	AddressNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstLine varChar(50) NOT NULL,
	SecondLine varChar(50),
	City varChar(50),
	Postcode varChar(15) NOT NULL Constraint CHK_Address_Postcode CHECK(Len(Postcode) >= 6 ),
);

/* Create patients table 

	@attribute PatientNo		- Auto generated and incremented primary key
	@attribute FirstName		- 30 character char max, first name field. Required
	@attribute LastName			- 30 character char max, first name field. Required
	@attribute PhoneNo			- 12 character char max. Not Required
	@attribute Email			- 100 character char. Not Required
	@attribute DOB				- Date field. Required
	@attribute NHS				- 0 or 1 BIT. Required
	@attribute RegistrationDate - Date field. Required
	@attribute AddressNo		- Foreign key to allow link of a patient to their address,
								- cascade on delete if the address is deleted, the patient will also be deleted to maintain referential integrity

*/

CREATE TABLE TBL_PATIENTS (
	PatientNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName varChar(30) NOT NULL,
	LastName varChar(30) NOT NULL,
	PhoneNo varChar(12),
	Email varChar(100) NOT NULL,
	DOB Date NOT NULL,
	NHS BIT NOT NULL,
	RegistrationDate Date NOT NULL,
	AddressNo INT NOT NULL Constraint FK_Patient_Address FOREIGN KEY (AddressNo) References TBL_ADDRESS(AddressNo) ON DELETE CASCADE
);

/* CREATE staff table

	@attribute StaffNo		- Auto generated and incremented primary key
	@attribute FirstName	- 100 character char max, first name field. Required
	@attribute LastName		- 100 character char max, last name field. Required
	@attribute DOB			- Date field. Required
	@attribute Position		- 20 character char max, position field. Required
	@attribute Salary		- Number value with maximum of 12 characters and 2 decimal places
	@attribute StartDate	- Date field. Required
	@attribute EndDate		- Date field. Not required
							- constraint CHK_Staff_EndDate.. Check if End date is Null or End date is more than Start Date to avoid the week ending before it starts
	@attribute MobileNo		- 12 character char max, mobile phone number field. Required
	@attribute AddressNo	- INT value foreign key to link patient to their address,
								- cascade on delete if the address is deleted, the patient will also be deleted to maintain referential integrity 

*/

CREATE TABLE TBL_STAFF (
	StaffNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName varChar(100) NOT NULL,
	LastName varChar(100) NOT NULL,
	DOB DATE NOT NULL,
	Position varChar(20) NOT NULL, 
	Salary DECIMAL (12,2),
	StartDate DATE NOT NULL,
	EndDate DATE,
	Email varChar(100) NOT NULL,
	MobileNo varChar(12) NOT NULL,
	AddressNo INT NOT NULL Constraint FK_Address FOREIGN KEY (AddressNo) References TBL_ADDRESS(AddressNo) ON DELETE CASCADE,
	Constraint CHK_Staff_EndDate CHECK(EndDate IS NULL OR EndDate > StartDate)
);

/* create date table

	@attribute	DateNo		- Auto generated and incremented primary key
	@attribute	StartDate	- Date field. Required
	@attribute	EndDate		- Date field. Required

*/

CREATE TABLE TBL_DATE (
	DateNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	StartDate Date NOT NULL,
	EndDate Date NOT NULL
);

/* Create appointment table

	@attribute	PatientNo		- INT value foreign key to link patient to their appointment. Required
								- cascade on delete if the address is deleted, the patient will also be deleted to maintain referential integrity. 
	@attribute	StaffNo			- INT value foreign key to link staff to their appointment. Required
	@attribute	SurgeryNo		- INT value foreign key to link the surgery to the appointment. Required
	@attribute	DateNo			- INT value foreign key to link date to the appointment. Required
	@attribute	Comment			- 0 character char max, card type field. Not Required
	@attribute	AppointmentNo	- Auto generated and incremented unique identifier used by payments to join to appointment table. This ensures that each payment only has one appointment.
								- Composite Primary Key, Staff, Surgery, Date to stop one staff member being booked multiple times at the same time on the same day.

*/

CREATE TABLE TBL_APPOINTMENTS ( 
	PatientNo INT NOT NULL  Constraint FK_PatientNo FOREIGN KEY (PatientNo) References TBL_PATIENTS (PatientNo) ON DELETE CASCADE,
	StaffNo INT NOT NULL  Constraint FK_StaffNo FOREIGN KEY (StaffNo) References TBL_STAFF (StaffNo),
	SurgeryNo INT NOT NULL Constraint FK_SurgeryNo FOREIGN KEY (SurgeryNo) References TBL_SURGERIES (SurgeryNo),
	DateNo INT NOT NULL Constraint FK_DateNo FOREIGN KEY (DateNo) References TBL_DATE (DateNo),
	Comment varChar(100),
	AppointmentNo INT UNIQUE IDENTITY(1,1) NOT NULL, 
	PRIMARY KEY (StaffNo,SurgeryNo,DateNo)
);

/*	Create payment table

	@attribute PaymentNo		- Auto generated and incremented primary key
	@attribute AppointmentNo	- unique identifier to join payment to the appointment table, this ensures that each appointment only has one payment. Required
								- cascade on delete if the appointment is deleted, the payment will also be deleted to maintain referential integrity 
	@attribute CardType			- 30 character char max, card type field. Required
	@attribute CardNumber		- 16 character char max, card type field. Required Check if length is equal to 16 characters
	@attribute SortCode			- 8 character char max, card type field. Required. Check if length is equal to 8 characters
	@attribute ExpiryDate		- 5 character char max, card type field. Required. Check if input is  0-9, 0-9, /  0-9, 0-9
	@attribute SecurityCode		- 3 character char max, card type field. Required. Check if 0-9 on 3 characters
	@attribute Amount			- Number value with maximum of 12 characters and 2 decimal places
	@attribute Settled			- 1 or 0 Input.

*/


CREATE TABLE TBL_PAYMENT (
	PaymentNo INT IDENTITY(1,1) Constraint PK_PaymentNo PRIMARY KEY,
	AppointmentNo INT UNIQUE NOT NULL Constraint FK_AppointmentNo FOREIGN KEY (AppointmentNo) REFERENCES TBL_APPOINTMENTS (AppointmentNo) ON DELETE CASCADE, -- Deletes Payment if Appointment has been deleted
	CardType varChar(30) NOT NULL,
	CardNumber varChar(16) Constraint CHK_CardNumber CHECK(Len(CardNumber) = 16) NOT NULL,
	SortCode varChar(8) Constraint CHK_Sortcode CHECK(Len(SortCode) = 8) NOT NULL,
	ExpiryDate varChar(5) Constraint CHK_ExpiryDate CHECK(ExpiryDate LIKE '[0-9][0-9]/[0-9][0-9]') NOT NULL,
	SecurityCode varChar(3) Constraint CHK_SecurityCode CHECK(SecurityCode LIKE '[0-9][0-9][0-9]') NOT NULL,
	Amount DECIMAL(12,2),
	Settled BIT 
);

/* Testing referential integrity SQL code*/

-- view first payment
SELECT * 
FROM TBL_PAYMENT
WHERE AppointmentNo = 1;


-- view first appointment
SELECT *
FROM TBL_APPOINTMENTS
WHERE AppointmentNo = 1;

-- view all payments
SELECT *
FROM TBL_PAYMENT;

-- remove appointment 1
DELETE FROM TBL_APPOINTMENTS
WHERE AppointmentNo = 1;

-- attempt to view payment when appointment has been deleted
SELECT * 
FROM TBL_PAYMENT
WHERE AppointmentNo = 1;


/* Database performance tuning enhancements */

/* Investigation and solution of StartDate query */

SET STATISTICS TIME ON
SET STATISTICS IO ON
GO

-- Test returning StartDate values
SELECT *
FROM TBL_DATE
WHERE TBL_DATE.StartDate = '2022-03-14';

/* RESULT

 SQL Server Execution Times:
   CPU time = 0 ms,  elapsed time = 157 ms.

*/


-- Create Index for StartDate
CREATE NONCLUSTERED INDEX IndexDateStartDate ON TBL_DATE(StartDate);

/* RETRY QUERY RESULT

 SQL Server Execution Times:
   CPU time = 0 ms,  elapsed time = 0 ms.

*/

/* Investigation and solution of NHS payment eligibility query */

SET STATISTICS TIME ON
SET STATISTICS IO ON
GO

-- Testing returning NHS values
SELECT *
FROM TBL_PATIENTS 
WHERE TBL_PATIENTS.NHS = '1';

/* RESULT

 SQL Server Execution Times:
   CPU time = 0 ms,  elapsed time = 94 ms.

*/

CREATE NONCLUSTERED INDEX IndexNHSEligibility ON TBL_PATIENTS(NHS);

/* RESULT AFTER INDEX 

 SQL Server Execution Times:
   CPU time = 0 ms,  elapsed time = 84 ms.

*/
-- Slight increase in performance, however it seems that the index value is returning through the Primary key.
-- However, when specifying the first and lastname values from the table the result performed efficiently.

SET STATISTICS TIME ON
SET STATISTICS IO ON
GO

SELECT FirstName, LastName
FROM TBL_PATIENTS 
WHERE TBL_PATIENTS.NHS = '1';

/* RESULT OF Specific columns related to the non clustered index.

 SQL Server Execution Times:
   CPU time = 0 ms,  elapsed time = 0 ms.

*/