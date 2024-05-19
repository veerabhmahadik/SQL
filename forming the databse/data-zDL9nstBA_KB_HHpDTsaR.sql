DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `PlayerID` mediumint default NULL,
  `Name` varchar(255) default NULL,
  `Age` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`PlayerID`,`Name`,`Age`)
VALUES
  (31,"Fuller",27),
  (93,"Howard",30),
  (27,"Arsenio",29),
  (51,"Tobias",27),
  (68,"Brendan",23),
  (84,"Salvador",34),
  (80,"Leo",28),
  (37,"Branden",34),
  (39,"Cyrus",16),
  (76,"Linus",34);
INSERT INTO `myTable` (`PlayerID`,`Name`,`Age`)
VALUES
  (65,"Aquila",22),
  (12,"Buckminster",19),
  (30,"Quinn",13),
  (64,"Dustin",24),
  (42,"Lawrence",13),
  (28,"Kermit",29),
  (78,"Deacon",34),
  (90,"Marsden",14),
  (39,"Joshua",26),
  (51,"Keaton",32);
INSERT INTO `myTable` (`PlayerID`,`Name`,`Age`)
VALUES
  (73,"Mark",24),
  (46,"Kadeem",18),
  (93,"Herrod",22),
  (41,"Kieran",31),
  (86,"Yuli",31),
  (37,"Timon",34),
  (54,"Chancellor",34),
  (71,"Derek",28),
  (34,"Ivor",37),
  (48,"Branden",17);
INSERT INTO `myTable` (`PlayerID`,`Name`,`Age`)
VALUES
  (71,"Clinton",36),
  (62,"Carlos",14),
  (41,"Daniel",27),
  (32,"Zahir",34),
  (97,"Ali",17),
  (31,"Marsden",35),
  (12,"Timon",27),
  (15,"James",19),
  (35,"Troy",21),
  (28,"Ross",14);
INSERT INTO `myTable` (`PlayerID`,`Name`,`Age`)
VALUES
  (50,"Jacob",34),
  (43,"Yoshio",31),
  (14,"Igor",29),
  (18,"Coby",16),
  (76,"Tanek",16),
  (31,"Dolan",27),
  (77,"Ronan",37),
  (73,"Joseph",24),
  (99,"Price",20),
  (47,"Blake",13);
