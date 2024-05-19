DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `CoachID` mediumint default NULL,
  `Function` varchar(255) default NULL,
  `Type` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`CoachID`,`Function`,`Type`)
VALUES
  (3,"Craig Tyler","Cassandra Rich"),
  (89,"Martina Frye","Trevor Taylor"),
  (41,"Yardley Mcdowell","Mercedes Robles"),
  (42,"Gisela Salas","Abel Ballard"),
  (91,"Astra Robbins","Fuller Forbes");
