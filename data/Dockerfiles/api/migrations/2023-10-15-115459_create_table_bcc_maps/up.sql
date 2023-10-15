
-- --------------------------------------------------------

--
-- Table structure for table `bcc_maps`
--

CREATE TABLE `bcc_maps` (
  `id` int(11) NOT NULL,
  `local_dest` varchar(255) NOT NULL,
  `bcc_dest` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `type` enum('sender','rcpt') DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `bcc_maps`
--
ALTER TABLE `bcc_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `local_dest` (`local_dest`);

--
-- AUTO_INCREMENT for table `bcc_maps`
--
ALTER TABLE `bcc_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;