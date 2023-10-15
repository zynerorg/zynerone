
-- --------------------------------------------------------

--
-- Table structure for table `sogo_quick_contact`
--

CREATE TABLE `sogo_quick_contact` (
  `c_folder_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_givenname` varchar(255) DEFAULT NULL,
  `c_cn` varchar(255) DEFAULT NULL,
  `c_sn` varchar(255) DEFAULT NULL,
  `c_screenname` varchar(255) DEFAULT NULL,
  `c_l` varchar(255) DEFAULT NULL,
  `c_mail` text DEFAULT NULL,
  `c_o` varchar(500) DEFAULT NULL,
  `c_ou` varchar(255) DEFAULT NULL,
  `c_telephonenumber` varchar(255) DEFAULT NULL,
  `c_categories` varchar(255) DEFAULT NULL,
  `c_component` varchar(10) NOT NULL,
  `c_hascertificate` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_quick_contact`
--
ALTER TABLE `sogo_quick_contact`
  ADD PRIMARY KEY (`c_folder_id`,`c_name`);