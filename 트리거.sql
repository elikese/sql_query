use db_study;

insert into user_mst_tb values (0, 'abc', '1234');

delete 
from
	user_mst_tb
where
	user_name = 'abc';

select
	*
from
	user_mst_tb;

select
	*
from
	user_dtl_tb;
