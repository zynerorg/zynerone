
-- --------------------------------------------------------

--
-- Table structure for table `sogo_user_profile`
--

CREATE TABLE `sogo_user_profile` (
  `c_uid` varchar(255) NOT NULL,
  `c_defaults` longtext DEFAULT NULL,
  `c_settings` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_user_profile`
--
ALTER TABLE `sogo_user_profile`
  ADD PRIMARY KEY (`c_uid`);