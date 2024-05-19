DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `MedicalID` mediumint default NULL,
  `Name` varchar(255) default NULL,
  `PlayerID` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`MedicalID`,`Name`,`PlayerID`)
VALUES
  (91,"Charles",31),
  (45,"Driscoll",15),
  (7,"Chester",20),
  (53,"Elvis",29),
  (88,"Caleb",37),
  (75,"Gage",14);
