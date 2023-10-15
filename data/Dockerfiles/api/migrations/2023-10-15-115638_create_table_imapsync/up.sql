
-- --------------------------------------------------------

--
-- Table structure for table `imapsync`
--

CREATE TABLE `imapsync` (
  `id` int(11) NOT NULL,
  `user2` varchar(255) NOT NULL,
  `host1` varchar(255) NOT NULL,
  `authmech1` enum('PLAIN','LOGIN','CRAM-MD5') DEFAULT 'PLAIN',
  `regextrans2` varchar(255) DEFAULT '',
  `authmd51` tinyint(1) NOT NULL DEFAULT 0,
  `domain2` varchar(255) NOT NULL DEFAULT '',
  `subfolder2` varchar(255) NOT NULL DEFAULT '',
  `user1` varchar(255) NOT NULL,
  `password1` varchar(255) NOT NULL,
  `exclude` varchar(500) NOT NULL DEFAULT '',
  `maxage` smallint(6) NOT NULL DEFAULT 0,
  `mins_interval` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `maxbytespersecond` varchar(50) NOT NULL DEFAULT '0',
  `port1` smallint(5) UNSIGNED NOT NULL,
  `enc1` enum('TLS','SSL','PLAIN') DEFAULT 'TLS',
  `delete2duplicates` tinyint(1) NOT NULL DEFAULT 1,
  `delete1` tinyint(1) NOT NULL DEFAULT 0,
  `delete2` tinyint(1) NOT NULL DEFAULT 0,
  `automap` tinyint(1) NOT NULL DEFAULT 0,
  `skipcrossduplicates` tinyint(1) NOT NULL DEFAULT 0,
  `custom_params` varchar(512) NOT NULL DEFAULT '',
  `timeout1` smallint(6) NOT NULL DEFAULT 600,
  `timeout2` smallint(6) NOT NULL DEFAULT 600,
  `subscribeall` tinyint(1) NOT NULL DEFAULT 1,
  `is_running` tinyint(1) NOT NULL DEFAULT 0,
  `returned_text` longtext DEFAULT NULL,
  `last_run` timestamp NULL DEFAULT NULL,
  `success` tinyint(1) UNSIGNED DEFAULT NULL,
  `exit_status` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `imapsync`
--
ALTER TABLE `imapsync`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `imapsync`
--
ALTER TABLE `imapsync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;