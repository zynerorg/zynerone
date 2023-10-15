
-- --------------------------------------------------------

--
-- Table structure for table `_sogo_static_view`
--

CREATE TABLE `_sogo_static_view` (
  `c_uid` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_password` varchar(255) NOT NULL DEFAULT '',
  `c_cn` varchar(255) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `aliases` text NOT NULL,
  `ad_aliases` varchar(6144) NOT NULL DEFAULT '',
  `ext_acl` varchar(6144) NOT NULL DEFAULT '',
  `kind` varchar(100) NOT NULL DEFAULT '',
  `multiple_bookings` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Triggers `_sogo_static_view`
--
DELIMITER $$
CREATE TRIGGER `sogo_update_password` AFTER UPDATE ON `_sogo_static_view` FOR EACH ROW BEGIN
UPDATE mailbox SET password = NEW.c_password WHERE NEW.c_uid = username;
END
$$
DELIMITER ;

--
-- Indexes for table `_sogo_static_view`
--
ALTER TABLE `_sogo_static_view`
  ADD PRIMARY KEY (`c_uid`),
  ADD KEY `domain` (`domain`);