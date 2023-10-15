
-- --------------------------------------------------------

--
-- Table structure for table `sieve_filters`
--

CREATE TABLE `sieve_filters` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `script_desc` varchar(255) NOT NULL,
  `script_name` enum('active','inactive') DEFAULT NULL,
  `script_data` text NOT NULL,
  `filter_type` enum('postfilter','prefilter') DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sieve_filters`
--
ALTER TABLE `sieve_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `script_desc` (`script_desc`);

--
-- AUTO_INCREMENT for table `sieve_filters`
--
ALTER TABLE `sieve_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for table `sieve_filters`
--
ALTER TABLE `sieve_filters`
  ADD CONSTRAINT `fk_username_sieve_global_before` FOREIGN KEY (`username`) REFERENCES `mailbox` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION;