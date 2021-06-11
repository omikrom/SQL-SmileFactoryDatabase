/* Creating Smile Factory Tables & Contstraints */

CREATE TABLE  TBL_SURGERIES (
	SurgeryNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	SurgeryDay Char(3) NOT NULL,
	SurgeryTime time NOT NULL
);

CREATE TABLE TBL_ADDRESS (
	AddressNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstLine varChar(50) NOT NULL,
	SecondLine varChar(50),
	City varChar(50),
	Postcode varChar(15) NOT NULL Constraint CHK_Address_Postcode CHECK(Len(Postcode) >= 6 ),
);

CREATE TABLE TBL_PATIENTS (
	PatientNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName varChar(30) NOT NULL,
	LastName varChar(30) NOT NULL,
	PhoneNo varChar(12),
	Email varChar(100) NOT NULL,
	DOB Date NOT NULL,
	NHS BIT NOT NULL,
	RegistrationDate Date NOT NULL,
	AddressNo INT NOT NULL Constraint FK_Patient_Address FOREIGN KEY (AddressNo) References TBL_ADDRESS(AddressNo)
);


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
	AddressNo INT NOT NULL Constraint FK_Address FOREIGN KEY (AddressNo) References TBL_ADDRESS(AddressNo),
	Constraint CHK_Staff_EndDate CHECK(EndDate IS NULL OR EndDate > StartDate)
);



CREATE TABLE TBL_DATE (
	DateNo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	StartDate Date NOT NULL,
	EndDate Date NOT NULL
);




CREATE TABLE TBL_APPOINTMENTS ( 
	PatientNo INT NOT NULL  Constraint FK_PatientNo FOREIGN KEY (PatientNo) References TBL_PATIENTS (PatientNo),
	StaffNo INT NOT NULL  Constraint FK_StaffNo FOREIGN KEY (StaffNo) References TBL_STAFF (StaffNo),
	SurgeryNo INT NOT NULL Constraint FK_SurgeryNo FOREIGN KEY (SurgeryNo) References TBL_SURGERIES (SurgeryNo),
	DateNo INT NOT NULL Constraint FK_DateNo FOREIGN KEY (DateNo) References TBL_DATE (DateNo),
	Comment varChar(100),
	AppointmentNo INT UNIQUE IDENTITY(1,1) NOT NULL, 
	PRIMARY KEY (StaffNo,SurgeryNo,DateNo)
);



CREATE TABLE TBL_PAYMENT (
	PaymentNo INT IDENTITY(1,1) Constraint PK_PaymentNo PRIMARY KEY,
	AppointmentNo INT UNIQUE NOT NULL Constraint FK_AppointmentNo FOREIGN KEY (AppointmentNo) REFERENCES TBL_APPOINTMENTS (AppointmentNo),
	Amount DECIMAL(12,2),
	Settled BIT 
);