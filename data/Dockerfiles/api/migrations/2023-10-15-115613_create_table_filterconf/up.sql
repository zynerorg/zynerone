
-- --------------------------------------------------------

--
-- Table structure for table `filterconf`
--

CREATE TABLE `filterconf` (
  `object` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `prefid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `filterconf`
--
ALTER TABLE `filterconf`
  ADD PRIMARY KEY (`prefid`),
  ADD KEY `object` (`object`);

--
-- AUTO_INCREMENT for table `filterconf`
--
ALTER TABLE `filterconf`
  MODIFY `prefid` int(11) NOT NULL AUTO_INCREMENT;