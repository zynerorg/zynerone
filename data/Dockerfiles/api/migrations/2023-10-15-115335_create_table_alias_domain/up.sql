
-- --------------------------------------------------------

--
-- Table structure for table `alias_domain`
--

CREATE TABLE `alias_domain` (
  `alias_domain` varchar(255) NOT NULL,
  `target_domain` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `alias_domain`
--
ALTER TABLE `alias_domain`
  ADD PRIMARY KEY (`alias_domain`),
  ADD KEY `active` (`active`),
  ADD KEY `target_domain` (`target_domain`);