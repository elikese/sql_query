SELECT * FROM db_study.temp_book_tb;

insert into book_register_tb(
select
	0,
    tbt.book_code,
    bt2.book_id,
    tbt.loans_count
from
	temp_book_tb tbt
	left outer join (select
						book_id,
						book_name,
						author_name,
						publisher_name
					from
						book_tb bt
						left outer join author_tb at on (at.author_id = bt.author_id)
						left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id)
					) bt2
	on (bt2.book_name = tbt.book_name and bt2.author_name = tbt.author and bt2.publisher_name = tbt.publisher))
    order by book_code;