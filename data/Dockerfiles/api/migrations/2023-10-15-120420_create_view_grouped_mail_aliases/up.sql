
-- --------------------------------------------------------

--
-- Structure for view `grouped_mail_aliases`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`zynerone`@`%` SQL SECURITY DEFINER VIEW `grouped_mail_aliases`  AS SELECT `alias`.`goto` AS `username`, ifnull(group_concat(`alias`.`address` order by `alias`.`address` ASC separator ' '),'') AS `aliases` FROM `alias` WHERE `alias`.`address` <> `alias`.`goto` AND `alias`.`active` = '1' AND `alias`.`sogo_visible` = '1' AND `alias`.`address` not like '@%' GROUP BY `alias`.`goto` ;
