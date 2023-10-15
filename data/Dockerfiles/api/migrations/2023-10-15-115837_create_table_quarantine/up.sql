
-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `id` int(11) NOT NULL,
  `qid` varchar(30) NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `score` float(8,2) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` char(20) NOT NULL DEFAULT 'unknown',
  `symbols` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`symbols`)),
  `fuzzy_hashes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fuzzy_hashes`)),
  `sender` varchar(255) NOT NULL DEFAULT 'unknown',
  `rcpt` varchar(255) DEFAULT NULL,
  `msg` longtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `notified` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `user` varchar(255) NOT NULL DEFAULT 'unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `quarantine`
--
ALTER TABLE `quarantine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `quarantine`
--
ALTER TABLE `quarantine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
