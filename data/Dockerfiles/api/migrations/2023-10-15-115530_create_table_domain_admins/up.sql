
-- --------------------------------------------------------

--
-- Table structure for table `domain_admins`
--

CREATE TABLE `domain_admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `domain_admins`
--
ALTER TABLE `domain_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain_admins_username_domain_key` (`username`,`domain`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for table `domain_admins`
--
ALTER TABLE `domain_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;