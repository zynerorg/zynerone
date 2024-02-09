
-- --------------------------------------------------------

--
-- Structure for view `grouped_domain_alias_address`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`zynerone`@`%` SQL SECURITY DEFINER VIEW `grouped_domain_alias_address`  AS SELECT `mailbox`.`username` AS `username`, ifnull(group_concat(`mailbox`.`local_part`,'@',`alias_domain`.`alias_domain` separator ' '),'') AS `ad_alias` FROM (`mailbox` left join `alias_domain` on(`alias_domain`.`target_domain` = `mailbox`.`domain`)) GROUP BY `mailbox`.`username` ;
