
-- --------------------------------------------------------

--
-- Table structure for table `tags_domain`
--

CREATE TABLE `tags_domain` (
  `tag_name` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for table `tags_domain`
--
ALTER TABLE `tags_domain`
  ADD UNIQUE KEY `tag_name` (`tag_name`,`domain`),
  ADD KEY `fk_tags_domain` (`domain`);

--
-- Constraints for table `tags_domain`
--
ALTER TABLE `tags_domain`
  ADD CONSTRAINT `fk_tags_domain` FOREIGN KEY (`domain`) REFERENCES `domain` (`domain`) ON DELETE CASCADE ON UPDATE NO ACTION;