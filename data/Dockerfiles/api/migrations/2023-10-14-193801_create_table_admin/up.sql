-- Your SQL goes here
CREATE TABLE admin(
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `superadmin` TINYINT(1) NOT NULL DEFAULT '0',
  `created` DATETIME(0) NOT NULL DEFAULT NOW(0),
  `modified` DATETIME ON UPDATE NOW(0),
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  primary key (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
