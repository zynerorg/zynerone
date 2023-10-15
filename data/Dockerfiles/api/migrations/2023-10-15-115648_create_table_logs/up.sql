
-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `task` char(32) NOT NULL DEFAULT '000000',
  `type` varchar(32) DEFAULT '',
  `msg` text DEFAULT NULL,
  `call` text DEFAULT NULL,
  `user` varchar(64) NOT NULL,
  `role` varchar(32) NOT NULL,
  `remote` varchar(39) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;