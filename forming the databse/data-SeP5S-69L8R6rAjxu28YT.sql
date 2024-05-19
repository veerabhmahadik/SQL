DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `PlayerID` mediumint default NULL,
  `Name` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`PlayerID`,`Name`)
VALUES
  (60,"Phoebe Thompson"),
  (45,"Driscoll Justice"),
  (63,"Holmes Foster"),
  (64,"Denise Drake"),
  (70,"Coby Lucas"),
  (1,"Jacob Gonzalez"),
  (7,"Rylee Barnett"),
  (7,"Nero Calderon"),
  (87,"Lucius Gay"),
  (48,"Yuli Mayer");
