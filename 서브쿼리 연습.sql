# from에 subquery사용
select
	at.num,
    at.author_name
from
	(select 
		row_number() over(order by author_id desc) as num,
		author_id,
        author_name
	from
		author_tb
	WHERE
		author_name like '글%') at
where
	at.num > 10;
    

# select에 subquery사용

# 방법1 select이용 // 컬럼 갯수만큼 select 호출 됨 -> 성능저하(지양)
select
	*,
    (SELECT
		count(*)
	from
		publisher_tb
	) as total_count
from
	publisher_tb;

# 방법2 join이용	// select 최초 1회 호출. 이후에는 연산만 수행(지향)
select
	*
from
	publisher_tb pt
    left outer join(select count(*) as total_count from publisher_tb) pt2 on(true);
    
    
# where 조건식에 서브쿼리 -> 조건식이라 select가 캐싱처리를 하고 있음.

# 방법1 where안에 서브쿼리
select
	*
from
	book_tb
where
	publisher_id in (select publisher_id from publisher_tb where publisher_name like '아%');

# 방법2 join 이용
select
	*
from
	book_tb bt
    left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id)
where
	pt.publisher_name like '아%';

# select @@profiling;
# show profiles;
# set profiling = 0;