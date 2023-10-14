-- Your SQL goes here
CREATE TABLE _sogo_static_view(
  `c_uid` VARCHAR(255) NOT NULL,
  `domain` VARCHAR(255) NOT NULL,
  `c_name` VARCHAR(255) NOT NULL,
  `c_password` VARCHAR(255) NOT NULL DEFAULT '',
  `c_cn` VARCHAR(255),
  `mail` VARCHAR(255) NOT NULL,
  `aliases` TEXT NOT NULL,
  `ad_aliases` VARCHAR(6144) NOT NULL DEFAULT '',
  `ext_acl` VARCHAR(6144) NOT NULL DEFAULT '',
  `kind` VARCHAR(100) NOT NULL DEFAULT '',
  `multiple_bookings` INT NOT NULL DEFAULT -1,
  primary key(`c_uid`)
)
