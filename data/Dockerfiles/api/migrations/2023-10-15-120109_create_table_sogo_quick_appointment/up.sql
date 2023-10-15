
-- --------------------------------------------------------

--
-- Table structure for table `sogo_quick_appointment`
--

CREATE TABLE `sogo_quick_appointment` (
  `c_folder_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_uid` varchar(1000) NOT NULL,
  `c_startdate` int(11) DEFAULT NULL,
  `c_enddate` int(11) DEFAULT NULL,
  `c_cycleenddate` int(11) DEFAULT NULL,
  `c_title` varchar(1000) NOT NULL,
  `c_participants` text DEFAULT NULL,
  `c_isallday` int(11) DEFAULT NULL,
  `c_iscycle` int(11) DEFAULT NULL,
  `c_cycleinfo` text DEFAULT NULL,
  `c_classification` int(11) NOT NULL,
  `c_isopaque` int(11) NOT NULL,
  `c_status` int(11) NOT NULL,
  `c_priority` int(11) DEFAULT NULL,
  `c_location` varchar(255) DEFAULT NULL,
  `c_orgmail` varchar(255) DEFAULT NULL,
  `c_partmails` text DEFAULT NULL,
  `c_partstates` text DEFAULT NULL,
  `c_category` varchar(255) DEFAULT NULL,
  `c_sequence` int(11) DEFAULT NULL,
  `c_component` varchar(10) NOT NULL,
  `c_nextalarm` int(11) DEFAULT NULL,
  `c_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_quick_appointment`
--
ALTER TABLE `sogo_quick_appointment`
  ADD PRIMARY KEY (`c_folder_id`,`c_name`);