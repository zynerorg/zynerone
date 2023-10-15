
-- --------------------------------------------------------

--
-- Table structure for table `pushover`
--

CREATE TABLE `pushover` (
  `username` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attributes`)),
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `senders` text DEFAULT NULL,
  `senders_regex` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `pushover`
--
ALTER TABLE `pushover`
  ADD PRIMARY KEY (`username`);