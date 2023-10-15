
-- --------------------------------------------------------

--
-- Table structure for table `user_acl`
--

CREATE TABLE `user_acl` (
  `username` varchar(255) NOT NULL,
  `spam_alias` tinyint(1) NOT NULL DEFAULT 1,
  `tls_policy` tinyint(1) NOT NULL DEFAULT 1,
  `spam_score` tinyint(1) NOT NULL DEFAULT 1,
  `spam_policy` tinyint(1) NOT NULL DEFAULT 1,
  `delimiter_action` tinyint(1) NOT NULL DEFAULT 1,
  `syncjobs` tinyint(1) NOT NULL DEFAULT 0,
  `eas_reset` tinyint(1) NOT NULL DEFAULT 1,
  `sogo_profile_reset` tinyint(1) NOT NULL DEFAULT 0,
  `pushover` tinyint(1) NOT NULL DEFAULT 1,
  `quarantine` tinyint(1) NOT NULL DEFAULT 1,
  `quarantine_attachments` tinyint(1) NOT NULL DEFAULT 1,
  `quarantine_notification` tinyint(1) NOT NULL DEFAULT 1,
  `quarantine_category` tinyint(1) NOT NULL DEFAULT 1,
  `app_passwds` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `user_acl`
--
ALTER TABLE `user_acl`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for table `user_acl`
--
ALTER TABLE `user_acl`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `mailbox` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION;