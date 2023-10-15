
-- --------------------------------------------------------

--
-- Table structure for table `da_sso`
--

CREATE TABLE `da_sso` (
  `username` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `da_sso`
--
ALTER TABLE `da_sso`
  ADD PRIMARY KEY (`token`,`created`);