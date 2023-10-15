
-- --------------------------------------------------------

--
-- Table structure for table `da_acl`
--

CREATE TABLE `da_acl` (
  `username` varchar(255) NOT NULL,
  `syncjobs` tinyint(1) NOT NULL DEFAULT 1,
  `quarantine` tinyint(1) NOT NULL DEFAULT 1,
  `login_as` tinyint(1) NOT NULL DEFAULT 1,
  `sogo_access` tinyint(1) NOT NULL DEFAULT 1,
  `app_passwds` tinyint(1) NOT NULL DEFAULT 1,
  `bcc_maps` tinyint(1) NOT NULL DEFAULT 1,
  `pushover` tinyint(1) NOT NULL DEFAULT 0,
  `filters` tinyint(1) NOT NULL DEFAULT 1,
  `ratelimit` tinyint(1) NOT NULL DEFAULT 1,
  `spam_policy` tinyint(1) NOT NULL DEFAULT 1,
  `extend_sender_acl` tinyint(1) NOT NULL DEFAULT 0,
  `unlimited_quota` tinyint(1) NOT NULL DEFAULT 0,
  `protocol_access` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_ip_access` tinyint(1) NOT NULL DEFAULT 1,
  `alias_domains` tinyint(1) NOT NULL DEFAULT 0,
  `mailbox_relayhost` tinyint(1) NOT NULL DEFAULT 1,
  `domain_relayhost` tinyint(1) NOT NULL DEFAULT 1,
  `domain_desc` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `da_acl`
--
ALTER TABLE `da_acl`
  ADD PRIMARY KEY (`username`);