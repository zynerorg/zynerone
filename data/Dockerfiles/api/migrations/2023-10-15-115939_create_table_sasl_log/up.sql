
-- --------------------------------------------------------

--
-- Table structure for table `sasl_log`
--

CREATE TABLE `sasl_log` (
  `service` varchar(32) NOT NULL DEFAULT '',
  `app_password` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `real_rip` varchar(64) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sasl_log`
--
ALTER TABLE `sasl_log`
  ADD PRIMARY KEY (`service`,`real_rip`,`username`),
  ADD KEY `username` (`username`),
  ADD KEY `service` (`service`),
  ADD KEY `datetime` (`datetime`),
  ADD KEY `real_rip` (`real_rip`);