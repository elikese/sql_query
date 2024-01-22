CREATE DEFINER=`aws`@`%` PROCEDURE `p_sum`(
	in v_num1 int, 
    in v_num2 int,
    out v_result int,
    inout v_count int
)
BEGIN
	set 
		v_count = v_count + 1;
	select
		v_num1 + v_num2 into v_result;
END