insert into  worksOn(idNum, projno , hours) VALUES(220068,110, 170 );

update worksOn set hours=202 where idnum=220068;

update Employee  
set salary = salary+300.50 
where (job='DataManager');

delete from workson where idnum=220068;

delete from dependent where idnum=220068;

delete from employee where idnum=220068;

