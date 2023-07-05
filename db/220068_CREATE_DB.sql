create table Department ( deptno NUMBER, name VARCHAR2(14) not null, 
PRIMARY KEY (deptno), 
UNIQUE (name));

create table Dlocation (deptno NUMBER, Location VARCHAR2(15) not null, 
PRIMARY KEY (deptno, location), 
FOREIGN KEY (deptno) REFERENCES Department(deptno));

create table Employee( idNum NUMBER, fName VARCHAR2(15) not null,IName 
VARCHAR2(20) not null, sex CHAR(1) not null, 
address VARCHAR2(20) not null,salary NUMBER(7,2) not null, bonus 
NUMBER(6,2), job VARCHAR2(20) not null, 
deptno NUMBER not null, 
PRIMARY KEY (idNum), 
FOREIGN KEY (deptno) REFERENCES Department(deptno));

create table Dependent( idNum NUMBER, name VARCHAR2(15) not null, sex char(1) not null, 
birthDate DATE not null, relationship NUMBER(1) not null, 
PRIMARY KEY (idnum,name), 
FOREIGN KEY (idnum) REFERENCES Employee( idNum ) );

create table Project ( projno NUMBER, name VARCHAR2(20) not null, location VARCHAR2(15) 
not null, 
deptno NUMBER not null, 
PRIMARY KEY (projno), 
UNIQUE(name), 
FOREIGN KEY (deptno) REFERENCES Department(deptno));

create table worksOn(idNum NUMBER not null, projno NUMBER not null, hours NUMBER(4), 
PRIMARY KEY (idnum,projno), 
FOREIGN KEY (idNum) REFERENCES Employee(idNum), 
FOREIGN KEY (projno) REFERENCES Project(projno));

