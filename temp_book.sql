INSERT INTO author
(SELECT 
	0, 
	author 
FROM 
	db_study.temp_book_tb
GROUP BY
	author
ORDER BY
	author) ;
    # select 한 것을 그대로 테이블에 insert(컬럼 수 맞춰 줘야함)

INSERT INTO publisher
(SELECT
	0, publisher
FROM
	db_study.temp_book_tb
GROUP BY
	publisher
ORDER BY
	publisher);

SELECT 
    *
FROM
    book_tb;
    

insert into book_tb (
	SELECT
		0,
		book_name,
        author_tb.author_id,
        publisher_tb.publisher_id
	FROM
		db_study.temp_book_tb
		left outer join author_tb
			on temp_book_tb.author = author_tb.author_name
		left outer join publisher_tb
			on temp_book_tb.publisher = publisher_tb.publisher_name
	group by
		temp_book_tb.book_name,
        publisher_tb.publisher_id,
        author_tb.author_id
	order by
		book_name);

truncate book_tb


SELECT 
    *
FROM
    db_study.book_tb