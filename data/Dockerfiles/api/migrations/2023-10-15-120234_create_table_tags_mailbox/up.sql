
-- --------------------------------------------------------

--
-- Table structure for table `tags_mailbox`
--

CREATE TABLE `tags_mailbox` (
  `tag_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `tags_mailbox`
--
ALTER TABLE `tags_mailbox`
  ADD UNIQUE KEY `tag_name` (`tag_name`,`username`),
  ADD KEY `fk_tags_mailbox` (`username`);

--
-- Constraints for table `tags_mailbox`
--
ALTER TABLE `tags_mailbox`
  ADD CONSTRAINT `fk_tags_mailbox` FOREIGN KEY (`username`) REFERENCES `mailbox` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION;