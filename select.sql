select * from student_tb;
# * 의 의미는 전체 컬럼

# from -> where -> select 순으로 동작

select 
	student_id, 
	name,
    age
from 
	student_tb 
where 
	not name = '박화목'
    and name = '박수목';

select
	*
from
	student_tb
where
	name in ('박화목', '박수목');
    
select
	*
from
	student_tb
where
	student_id in (1,2,3);
    
truncate table student_tb;

# between 이상/이하로 범위 지정. 날짜, 숫자 등에 이용
select
	*
from
	student_tb
where
	age between 20 and 29;

select
	*
from
	student_tb
where
	age between 30 and 39;
    
    
    
# like 연산 -> __로 글자수맞춤. %는 글자수 맞출 필요없음
select
	*
from
	student_tb
where
	name like '_도_'
    or name like '__원';
    
#집계(그룹화) from -> where -> group by -> having -> select -> order by
select
	address,
	count(*) as address_count # 열의 갯수 반환해준다
from
	student_tb
group by
	address
having # 그룹시킨 이후의 조건식
	address_count > 1
order by # 오름차순 정렬
	address_count desc, # 내림차순
    address; # 주소명 기준으로 오름차순

select
	*
from
	student_tb
where
	address like '%부산%'
order by
	name;