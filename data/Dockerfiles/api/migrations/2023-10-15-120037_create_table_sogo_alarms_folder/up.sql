
-- --------------------------------------------------------

--
-- Table structure for table `sogo_alarms_folder`
--

CREATE TABLE `sogo_alarms_folder` (
  `id` int(11) NOT NULL,
  `c_path` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_uid` varchar(255) NOT NULL,
  `c_recurrence_id` int(11) DEFAULT NULL,
  `c_alarm_number` int(11) NOT NULL,
  `c_alarm_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `sogo_alarms_folder`
--
ALTER TABLE `sogo_alarms_folder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `sogo_alarms_folder`
--
ALTER TABLE `sogo_alarms_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;