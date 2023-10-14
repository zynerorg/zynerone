-- Your SQL goes here
CREATE TABLE fido2(
  `id` INTEGER AUTO_INCREMENT NOT NULL,
  `username` VARCHAR(255) NOT NULL,
  `friendlyName` VARCHAR(255),
  `rpId` VARCHAR(255) NOT NULL,
  `credentialPublicKey` TEXT NOT NULL,
  `certificateChain` TEXT,
  `certificate` TEXT,
  `certificateIssuer` VARCHAR(255),
  `certificateSubject` VARCHAR(255),
  `signatureCounter` INT,
  `AAGUID` BLOB,
  `credentialId` BLOB NOT NULL,
  `created` DATETIME(0) NOT NULL DEFAULT NOW(0),
  `modified` DATETIME ON UPDATE NOW(0),
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC
