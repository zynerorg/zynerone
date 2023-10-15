
-- --------------------------------------------------------

--
-- Table structure for table `fido2`
--

CREATE TABLE `fido2` (
  `username` varchar(255) NOT NULL,
  `friendlyName` varchar(255) DEFAULT NULL,
  `rpId` varchar(255) NOT NULL,
  `credentialPublicKey` text NOT NULL,
  `certificateChain` text DEFAULT NULL,
  `certificate` text DEFAULT NULL,
  `certificateIssuer` varchar(255) DEFAULT NULL,
  `certificateSubject` varchar(255) DEFAULT NULL,
  `signatureCounter` int(11) DEFAULT NULL,
  `AAGUID` blob DEFAULT NULL,
  `credentialId` blob NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
