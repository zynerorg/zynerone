
-- --------------------------------------------------------

--
-- Structure for view `grouped_sender_acl`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`mailcow`@`%` SQL SECURITY DEFINER VIEW `grouped_sender_acl`  AS SELECT `sender_acl`.`logged_in_as` AS `username`, ifnull(group_concat(`sender_acl`.`send_as` separator ' '),'') AS `send_as_acl` FROM `sender_acl` WHERE `sender_acl`.`send_as` not like '@%' GROUP BY `sender_acl`.`logged_in_as` ;