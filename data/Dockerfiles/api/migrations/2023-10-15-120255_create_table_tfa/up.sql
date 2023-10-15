
-- --------------------------------------------------------

--
-- Table structure for table `tfa`
--

CREATE TABLE `tfa` (
  `id` int(11) NOT NULL,
  `key_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `authmech` enum('yubi_otp','u2f','hotp','totp','webauthn') DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `keyHandle` varchar(1023) DEFAULT NULL,
  `publicKey` varchar(4096) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT 0,
  `certificate` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `tfa`
--
ALTER TABLE `tfa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `tfa`
--
ALTER TABLE `tfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;