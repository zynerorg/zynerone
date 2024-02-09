
-- --------------------------------------------------------

--
-- Structure for view `sieve_after`
--
CREATE ALGORITHM=UNDEFINED DEFINER=`zynerone`@`%` SQL SECURITY DEFINER VIEW `sieve_after`  AS SELECT md5(`sieve_filters`.`script_data`) AS `id`, `sieve_filters`.`username` AS `username`, `sieve_filters`.`script_name` AS `script_name`, `sieve_filters`.`script_data` AS `script_data` FROM `sieve_filters` WHERE `sieve_filters`.`filter_type` = 'postfilter' ;
