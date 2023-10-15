
-- --------------------------------------------------------

--
-- Table structure for table `relayhosts`
--

CREATE TABLE `relayhosts` (
  `id` int(11) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `relayhosts`
--
ALTER TABLE `relayhosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostname` (`hostname`);

--
-- AUTO_INCREMENT for table `relayhosts`
--
ALTER TABLE `relayhosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;