
-- --------------------------------------------------------

--
-- Structure for view `sogo_view`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`zynerone`@`%` SQL SECURITY DEFINER VIEW `sogo_view`  AS SELECT `mailbox`.`username` AS `c_uid`, `mailbox`.`domain` AS `domain`, `mailbox`.`username` AS `c_name`, if(json_unquote(json_value(`mailbox`.`attributes`,'$.force_pw_update')) = '0',if(json_unquote(json_value(`mailbox`.`attributes`,'$.sogo_access')) = 1,`mailbox`.`password`,'{SSHA256}A123A123A321A321A321B321B321B123B123B321B432F123E321123123321321'),'{SSHA256}A123A123A321A321A321B321B321B123B123B321B432F123E321123123321321') AS `c_password`, `mailbox`.`name` AS `c_cn`, `mailbox`.`username` AS `mail`, ifnull(group_concat(`ga`.`aliases` order by `ga`.`aliases` ASC separator ' '),'') AS `aliases`, ifnull(`gda`.`ad_alias`,'') AS `ad_aliases`, ifnull(`external_acl`.`send_as_acl`,'') AS `ext_acl`, `mailbox`.`kind` AS `kind`, `mailbox`.`multiple_bookings` AS `multiple_bookings` FROM (((`mailbox` left join `grouped_mail_aliases` `ga` on(`ga`.`username` regexp concat('(^|,)',`mailbox`.`username`,'($|,)'))) left join `grouped_domain_alias_address` `gda` on(`gda`.`username` = `mailbox`.`username`)) left join `grouped_sender_acl_external` `external_acl` on(`external_acl`.`username` = `mailbox`.`username`)) WHERE `mailbox`.`active` = '1' GROUP BY `mailbox`.`username` ;
