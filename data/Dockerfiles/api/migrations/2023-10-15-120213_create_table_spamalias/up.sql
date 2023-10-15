
-- --------------------------------------------------------

--
-- Table structure for table `spamalias`
--

CREATE TABLE `spamalias` (
  `address` varchar(255) NOT NULL,
  `goto` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `validity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `spamalias`
--
ALTER TABLE `spamalias`
  ADD PRIMARY KEY (`address`);