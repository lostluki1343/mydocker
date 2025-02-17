# erste Stunde, basic Befehle

show databases; 
use htl_2; 
show tables;
describe Telefon;
describe Person;
ALTER TABLE Person
ADD Email varchar(100);
ALTER TABLE Person
modify Geburt date NULL;
CREATE table  if not exists Telefon (
idTelefon int primary key auto_increment,
idPerson int,
Nummer varchar(40),
constraint fkPerson foreign key (idPerson) references Person(idPerson));





