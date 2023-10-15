
-- --------------------------------------------------------

--
-- Table structure for table `sender_acl`
--

CREATE TABLE `sender_acl` (
  `id` int(11) NOT NULL,
  `logged_in_as` varchar(255) NOT NULL,
  `send_as` varchar(255) NOT NULL,
  `external` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sender_acl`
--
ALTER TABLE `sender_acl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `sender_acl`
--
ALTER TABLE `sender_acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;