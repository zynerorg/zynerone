
-- --------------------------------------------------------

--
-- Table structure for table `sogo_acl`
--

CREATE TABLE `sogo_acl` (
  `id` int(11) NOT NULL,
  `c_folder_id` int(11) NOT NULL,
  `c_object` varchar(255) NOT NULL,
  `c_uid` varchar(255) NOT NULL,
  `c_role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_acl`
--
ALTER TABLE `sogo_acl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sogo_acl_c_folder_id_idx` (`c_folder_id`),
  ADD KEY `sogo_acl_c_uid_idx` (`c_uid`);

--
-- AUTO_INCREMENT for table `sogo_acl`
--
ALTER TABLE `sogo_acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;