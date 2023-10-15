
-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `domain` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `aliases` int(10) NOT NULL DEFAULT 0,
  `mailboxes` int(10) NOT NULL DEFAULT 0,
  `defquota` bigint(20) NOT NULL DEFAULT 3072,
  `maxquota` bigint(20) NOT NULL DEFAULT 102400,
  `quota` bigint(20) NOT NULL DEFAULT 102400,
  `relayhost` varchar(255) NOT NULL DEFAULT '0',
  `backupmx` tinyint(1) NOT NULL DEFAULT 0,
  `gal` tinyint(1) NOT NULL DEFAULT 1,
  `relay_all_recipients` tinyint(1) NOT NULL DEFAULT 0,
  `relay_unknown_only` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`domain`);