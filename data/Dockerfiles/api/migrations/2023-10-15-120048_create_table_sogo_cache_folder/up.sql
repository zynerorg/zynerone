
-- --------------------------------------------------------

--
-- Table structure for table `sogo_cache_folder`
--

CREATE TABLE `sogo_cache_folder` (
  `c_uid` varchar(255) NOT NULL,
  `c_path` varchar(255) NOT NULL,
  `c_parent_path` varchar(255) DEFAULT NULL,
  `c_type` tinyint(3) UNSIGNED NOT NULL,
  `c_creationdate` int(11) NOT NULL,
  `c_lastmodified` int(11) NOT NULL,
  `c_version` int(11) NOT NULL DEFAULT 0,
  `c_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `c_content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_cache_folder`
--
ALTER TABLE `sogo_cache_folder`
  ADD PRIMARY KEY (`c_uid`,`c_path`);