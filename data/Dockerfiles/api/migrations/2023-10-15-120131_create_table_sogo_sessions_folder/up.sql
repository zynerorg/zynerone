
-- --------------------------------------------------------

--
-- Table structure for table `sogo_sessions_folder`
--

CREATE TABLE `sogo_sessions_folder` (
  `c_id` varchar(255) NOT NULL,
  `c_value` varchar(4096) NOT NULL,
  `c_creationdate` int(11) NOT NULL,
  `c_lastseen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_sessions_folder`
--
ALTER TABLE `sogo_sessions_folder`
  ADD PRIMARY KEY (`c_id`);