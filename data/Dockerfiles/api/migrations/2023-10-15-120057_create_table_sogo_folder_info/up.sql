
-- --------------------------------------------------------

--
-- Table structure for table `sogo_folder_info`
--

CREATE TABLE `sogo_folder_info` (
  `c_folder_id` bigint(20) UNSIGNED NOT NULL,
  `c_path` varchar(255) NOT NULL,
  `c_path1` varchar(255) NOT NULL,
  `c_path2` varchar(255) DEFAULT NULL,
  `c_path3` varchar(255) DEFAULT NULL,
  `c_path4` varchar(255) DEFAULT NULL,
  `c_foldername` varchar(255) NOT NULL,
  `c_location` varchar(2048) DEFAULT NULL,
  `c_quick_location` varchar(2048) DEFAULT NULL,
  `c_acl_location` varchar(2048) DEFAULT NULL,
  `c_folder_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_folder_info`
--
ALTER TABLE `sogo_folder_info`
  ADD PRIMARY KEY (`c_path`),
  ADD UNIQUE KEY `c_folder_id` (`c_folder_id`);

--
-- AUTO_INCREMENT for table `sogo_folder_info`
--
ALTER TABLE `sogo_folder_info`
  MODIFY `c_folder_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;