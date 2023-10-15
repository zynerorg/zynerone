
-- --------------------------------------------------------

--
-- Table structure for table `sogo_store`
--

CREATE TABLE `sogo_store` (
  `c_folder_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_content` mediumtext NOT NULL,
  `c_creationdate` int(11) NOT NULL,
  `c_lastmodified` int(11) NOT NULL,
  `c_version` int(11) NOT NULL,
  `c_deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_store`
--
ALTER TABLE `sogo_store`
  ADD PRIMARY KEY (`c_folder_id`,`c_name`);