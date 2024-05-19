DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `MedicalID` mediumint default NULL,
  `Specialization` varchar(255) default NULL,
  `PlayerID` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`MedicalID`,`Specialization`,`PlayerID`)
VALUES
  (78,"Grant Bauer",50),
  (45,"Caleb Gamble",18),
  (96,"Camilla Chandler",91),
  (70,"Clarke Faulkner",78),
  (50,"Hunter Bullock",93),
  (64,"Hamilton Clay",84),
  (4,"Colby Vargas",84),
  (39,"Olympia Aguirre",87),
  (79,"Hillary Coleman",36),
  (54,"Jasmine Thomas",50);
