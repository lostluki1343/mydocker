INSERT INTO `htl_2`.`Person` (`idPerson`, `Vorname`, `Name`, `Geburt`) VALUES ('2', 'Marcel', 'Hirscher', '21.05.2003');
UPDATE `htl_2`.`Person` SET `Email` = 'Marcel.Hirscher@gmx.at' WHERE (`idPerson` = '2');

use htl_2;

SELECT * FROM Person;
SELECT * FROM Telefon;
select Vorname, Name from Person;
select concat(Vorname," ",Name) as "Voller Name", Vorname, Name from Person;			# Schreibt Vornachname dann leerzeichen und dann Nachname von allen Personen
select * from Person where Vorname like "fr%"; 											# liefert alle Namen die mit fr beginnen
select Vorname, Name from Person where Vorname like "%z"; 								# liefert alle Namen die mit z aufhören
select * from Person , Telefon where Person.idPerson = Telefon.idPerson; 				# zeigt alle Personen an, wo Telefon und Person gleich sind
select Vorname, Name, Nummer from Person, Telefon where Person.idPerson = Telefon.idPerson;
select * from Person left outer join Telefon on Person.idPerson = Telefon.idPerson;


