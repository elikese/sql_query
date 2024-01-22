CREATE DEFINER=`aws`@`%` TRIGGER `user_mst_tb_AFTER_INSERT` AFTER INSERT ON `user_mst_tb` FOR EACH ROW BEGIN
	insert into user_dtl_tb
    values(new.user_mst_id, null, null);
END