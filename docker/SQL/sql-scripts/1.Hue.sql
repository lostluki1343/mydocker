# 1. HÜ
use hue1;

show tables;
describe Person;
describe Adresse;

CREATE table  if not exists Adresse (
idAdresse int primary key auto_increment,
idOrt int not NULL,
Strasse varchar(100),
Hausnummer varchar(10),
Tuer varchar(10),
constraint fkOrt foreign key (idOrt) references Ort(idOrt));

ALTER TABLE Adresse
modify idOrt int not NULL;

