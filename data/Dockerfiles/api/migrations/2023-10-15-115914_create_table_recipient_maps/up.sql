
-- --------------------------------------------------------

--
-- Table structure for table `recipient_maps`
--

CREATE TABLE `recipient_maps` (
  `id` int(11) NOT NULL,
  `old_dest` varchar(255) NOT NULL,
  `new_dest` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `recipient_maps`
--
ALTER TABLE `recipient_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `local_dest` (`old_dest`);

--
-- AUTO_INCREMENT for table `recipient_maps`
--
ALTER TABLE `recipient_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;