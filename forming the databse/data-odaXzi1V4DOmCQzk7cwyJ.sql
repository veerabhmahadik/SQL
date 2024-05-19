DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `PlayerID` mediumint default NULL,
  `Name` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`PlayerID`,`Name`)
VALUES
  (66,"Cherokee Curtis"),
  (16,"Ariana Garrett"),
  (70,"Alden Higgins"),
  (51,"Kermit Leach"),
  (14,"Nero Griffith"),
  (45,"Iola Bates"),
  (37,"Jemima Workman"),
  (92,"Mason Tyler"),
  (11,"Charde Petersen"),
  (73,"Chadwick Mayo");
INSERT INTO `myTable` (`PlayerID`,`Name`)
VALUES
  (56,"Griffin Pope"),
  (28,"Felix Conner"),
  (58,"Cyrus Morton"),
  (16,"Noah Bridges"),
  (78,"Willa Rowe"),
  (33,"Aladdin Lott"),
  (27,"Lewis Stephenson"),
  (97,"Lawrence Key"),
  (61,"Serina Lloyd"),
  (71,"Caesar Thornton");
INSERT INTO `myTable` (`PlayerID`,`Name`)
VALUES
  (22,"Iola Vaughan"),
  (16,"Josiah Hood"),
  (33,"Idola Mckay"),
  (42,"Lunea Baldwin"),
  (71,"Geraldine Tate"),
  (49,"Rahim Blankenship"),
  (27,"Francesca Morales"),
  (41,"Lionel Munoz"),
  (23,"Thor Miranda"),
  (32,"Sharon Duran");
INSERT INTO `myTable` (`PlayerID`,`Name`)
VALUES
  (83,"India Mendoza"),
  (55,"Kylee Zamora"),
  (18,"Hilel Hahn"),
  (36,"Lael Woodward"),
  (57,"George Mayo"),
  (52,"Angelica Herman"),
  (50,"Avye Fisher"),
  (44,"Channing Hewitt"),
  (75,"Summer Pruitt"),
  (28,"Alec Hutchinson");
INSERT INTO `myTable` (`PlayerID`,`Name`)
VALUES
  (21,"Zeus Cannon"),
  (80,"Dara Todd"),
  (55,"Kai Gilmore"),
  (47,"Oren Clayton"),
  (95,"Thor Dean"),
  (37,"Tanek Levine"),
  (32,"Nita Collins"),
  (42,"Callum Maynard"),
  (84,"Alec Chang"),
  (20,"Amber O'brien");
