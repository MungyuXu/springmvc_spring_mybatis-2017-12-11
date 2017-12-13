CREATE  TABLE section(
id int unsigned PRIMARY KEY auto_increment,
sno int not null,
sname VARCHAR(20) NOT null,
stype VARCHAR (20) NOT null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


employ
CREATE TABLE employ(
id int unsigned PRIMARY KEY auto_increment,
eno int not NULL ,
ename VARCHAR (20) NOT NULL ,
egender  CHAR NOT  NULL ,
ebdate DATE NOT  NULL ,
eid int NOT  NULL ,
esection VARCHAR (20) NOT NULL ,
epositior VARCHAR (20) NOT  NULL ,
etype VARCHAR (20) NOT NULL ,
efrom VARCHAR (20) NOT  NULL ,
e_entrydate VARCHAR (20) NOT  NULL ,
eattenddate VARCHAR (20) NOT  NULL ,
)ENGINE=InnoDB DEFAULT CHARSET=utf8;