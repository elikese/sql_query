set @book_name = '혼자 공부하는 SQL';
set @author = '우재남';
set @publisher = '한빛미디어';
set @new_author_id = 0;
set @new_publisher_id = 0;

(select max(author_id) from author_tb) into @new_author_id; -- max함수로 조회한 서브쿼리 : 가장 최근 id값
(select max(publisher_id) from publisher_tb) into @new_publisher_id;

insert into author_tb values (0, @author);
insert into publisher_tb values (0, @publisher);
insert into book_tb values (0, @book_name, @new_author_id, @new_publisher_id); 

select
	*
from
	book_tb
order by
	book_id desc;

call p_insert_book('test_book','test_author', 'test_publisher'); -- 위의 로직으로 만든 프로시져
