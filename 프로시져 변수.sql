# 변수 선언시 in은 값만 넘어감
# inout은 메모리주소 자체를 넘김
# out은 담을 수 있는 메모리 주소만 넘김
# BEGIN ~ end 사이에서 지역변수 선언시 declare
# 지역변수는 _로 시작하여 작명 예) _name
set @count = 0;

call p_sum(10, 20, @result, @count);

select
	@count;