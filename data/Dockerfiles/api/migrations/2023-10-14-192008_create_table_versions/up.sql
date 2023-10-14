-- Your SQL goes here
CREATE TABLE versions(
  `application` VARCHAR(255) NOT NULL,
  `version` VARCHAR(100) NOT NULL,
  `created` DATETIME(0) NOT NULL DEFAULT NOW(0),
  primary key(`application`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
