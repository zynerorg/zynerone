
-- --------------------------------------------------------

--
-- Table structure for table `settingsmap`
--

CREATE TABLE `settingsmap` (
  `id` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `settingsmap`
--
ALTER TABLE `settingsmap`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `settingsmap`
--
ALTER TABLE `settingsmap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;