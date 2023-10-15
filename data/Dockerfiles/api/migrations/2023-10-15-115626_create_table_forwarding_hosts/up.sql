
-- --------------------------------------------------------

--
-- Table structure for table `forwarding_hosts`
--

CREATE TABLE `forwarding_hosts` (
  `host` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `filter_spam` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `forwarding_hosts`
--
ALTER TABLE `forwarding_hosts`
  ADD PRIMARY KEY (`host`);