
-- --------------------------------------------------------

--
-- Table structure for table `quota2replica`
--

CREATE TABLE `quota2replica` (
  `username` varchar(255) NOT NULL,
  `bytes` bigint(20) NOT NULL DEFAULT 0,
  `messages` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `quota2replica`
--
ALTER TABLE `quota2replica`
  ADD PRIMARY KEY (`username`);