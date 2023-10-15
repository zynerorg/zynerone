
-- --------------------------------------------------------

--
-- Table structure for table `app_passwd`
--

CREATE TABLE `app_passwd` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mailbox` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `imap_access` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_access` tinyint(1) NOT NULL DEFAULT 1,
  `dav_access` tinyint(1) NOT NULL DEFAULT 1,
  `eas_access` tinyint(1) NOT NULL DEFAULT 1,
  `pop3_access` tinyint(1) NOT NULL DEFAULT 1,
  `sieve_access` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `app_passwd`
--
ALTER TABLE `app_passwd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailbox` (`mailbox`),
  ADD KEY `password` (`password`),
  ADD KEY `domain` (`domain`);

--
-- AUTO_INCREMENT for table `app_passwd`
--
ALTER TABLE `app_passwd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for table `app_passwd`
--
ALTER TABLE `app_passwd`
  ADD CONSTRAINT `fk_username_app_passwd` FOREIGN KEY (`mailbox`) REFERENCES `mailbox` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION;