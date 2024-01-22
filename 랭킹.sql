select
	*
from
	(select
		rank() over(partition by publisher_id order by publisher_id, sum(brt.loans_count) desc) as rank_num,
		row_number() over(partition by publisher_id order by publisher_id, sum(brt.loans_count) desc) as row_num,
		brt.book_id,
		bt.book_name,
		bt.author_id,
		at.author_name,
		bt.publisher_id,
		pt.publisher_name,
		brt.loans_count,
		sum(brt.loans_count) as total_loans_count
	from
		book_register_tb brt
		left outer join book_tb bt on(bt.book_id = brt.book_id)
		left outer join author_tb at on(at.author_id = bt.author_id)
		left outer join publisher_tb pt on(pt.publisher_id = bt.publisher_id)
	group by
		brt.book_id,
		bt.author_id,
		bt.publisher_id) tmp_book_register_tb
where
	tmp_book_register_tb.row_num = 1