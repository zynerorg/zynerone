
-- --------------------------------------------------------

--
-- Table structure for table `tls_policy_override`
--

CREATE TABLE `tls_policy_override` (
  `id` int(11) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `policy` enum('none','may','encrypt','dane','dane-only','fingerprint','verify','secure') NOT NULL,
  `parameters` varchar(255) DEFAULT '',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `tls_policy_override`
--
ALTER TABLE `tls_policy_override`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dest` (`dest`);

--
-- AUTO_INCREMENT for table `tls_policy_override`
--
ALTER TABLE `tls_policy_override`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;