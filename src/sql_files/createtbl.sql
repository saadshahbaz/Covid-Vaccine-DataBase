CREATE TABLE Category(
    cname VARCHAR(30) NOT NULL
    ,prioritynum INTEGER NOT NULL
    ,PRIMARY KEY (cname)
);

CREATE TABLE Person(
   hinsnum INTEGER NOT NULL
  ,pname VARCHAR(30) NOT NULL
  ,DOB DATE NOT NULL
  ,DOR DATE NOT NULL
  ,phone VARCHAR(12) NOT NULL
  ,gender VARCHAR(10) NOT NULL
  ,pstreetaddress VARCHAR(40) NOT NULL
  ,city VARCHAR(30) NOT NULL
  ,ppcode VARCHAR(7) NOT NULL
  ,cname VARCHAR(30) NOT NULL
  ,PRIMARY KEY (hinsnum)
  , FOREIGN KEY (cname) REFERENCES Category(cname)
);

CREATE TABLE Vaccine(
  company VARCHAR(30) NOT NULL
 ,doses INTEGER NOT NULL
 ,waitperiod INTEGER NOT NULL
 ,PRIMARY KEY (company)
);


CREATE TABLE Location(
     lname VARCHAR(30) NOT NULL
    ,lpcode VARCHAR(7) NOT NULL
    ,lstreetaddress VARCHAR(40) NOT NULL
    ,city VARCHAR(30) NOT NULL
    ,PRIMARY KEY (lname)
);


CREATE TABLE VaccineBatch(
    company VARCHAR(30) NOT NULL
   ,batchnum INTEGER NOT NULL
   ,manudate DATE NOT NULL
   ,expirydate DATE NOT NULL
   ,numdoses INTEGER NOT NULL
   ,lname VARCHAR(30) NOT NULL
   ,PRIMARY KEY(company,batchnum)
   ,FOREIGN KEY (company) REFERENCES Vaccine
   ,FOREIGN KEY (lname) REFERENCES Location
);


CREATE TABLE Vial(
   company VARCHAR(30) NOT NULL
  ,batchnum INTEGER NOT NULL
  ,vialnum INTEGER NOT NULL
  ,PRIMARY KEY (company, batchnum, vialnum)
  ,FOREIGN KEY (company, batchnum) REFERENCES VaccineBatch
);


CREATE TABLE Hospital(
    lname VARCHAR(30) NOT NULL
    ,PRIMARY KEY (lname)
    ,FOREIGN KEY (lname) REFERENCES Location
);


CREATE TABLE Nurse(
    CanLisNum INTEGER NOT NULL
   ,nname VARCHAR(30) NOT NULL
   ,lname VARCHAR(30) NOT NULL
   ,PRIMARY KEY (CanLisNum)
   ,FOREIGN KEY (lname) REFERENCES Hospital
);



CREATE TABLE VaccDate(
    lname VARCHAR(30) NOT NULL
   ,sdate DATE NOT NULL
   ,PRIMARY KEY (lname,sdate)
   ,FOREIGN KEY (lname) REFERENCES Location
);


CREATE TABLE Slot(
    lname VARCHAR(30) NOT NULL
   ,sdate DATE NOT NULL
   ,sarea VARCHAR(30) NOT NULL
   ,stime TIME NOT NULL
   ,hinsnum INTEGER
   ,asgndate DATE
   ,CanLisNum INTEGER
   ,company VARCHAR(30) NOT NULL
   ,batchnum INTEGER NOT NULL
   ,vialnum INTEGER NOT NULL
   ,PRIMARY KEY (lname,sdate, sarea,stime)
   ,FOREIGN KEY (lname,sdate) REFERENCES VaccDate
   ,FOREIGN KEY (CanLisNum) REFERENCES Nurse
   ,FOREIGN KEY (hinsnum) REFERENCES Person
   ,FOREIGN KEY (company, batchnum, vialnum) REFERENCES Vial
);


CREATE TABLE NurseAssignment(
    CanLisNum INTEGER NOT NULL
   ,lname VARCHAR(30) NOT NULL
   ,sdate DATE NOT NULL
   ,PRIMARY KEY (CanLisNum,lname,sdate)
   ,FOREIGN KEY (CanLisNum) REFERENCES NURSE
   ,FOREIGN KEY (lname, sdate) REFERENCES VaccDate
);
