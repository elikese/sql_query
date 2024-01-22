CREATE DEFINER=`aws`@`%` PROCEDURE `p_sum`(
	in v_num1 int, 
    in v_num2 int
)
BEGIN
	select
		v_num1 + v_num2 as result;
END