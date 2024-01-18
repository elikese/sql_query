use `db_study`; #DB 선택하기

insert into student_tb(student_id, name, age, address) values (0, "박화목", 33, "부산 금정구");
insert into student_tb(address, name, age, student_id) values ("부산 금정구", "박수목", 33, 1);
insert into student_tb(name, address) values ("박수목", null);
insert into student_tb values (0, "박화목", null, null);
insert into student_tb values (0, "박화목", null, null), (0, "박목목", null, null);


insert into student_tb
    (student_id, name, age, address)
values 
	(0, "박화목", null, null), 
	(0, "박목목", null, null);
    
insert into student_tb
	(student_id, name, age, address)
values
	(0, '김도균', '27', '부산 금정구'),
    (0, '김도훈', '25', '부산 부산진구'),
    (0, '김범수', '33', '부산 금정구'),
    (0, '김상현', '26', '부산 남구'),
    (0, '이재영', '26', '부산 서구'),
    (0, '이정찬', '29', '부산 부산진구'),
    (0, '이지언', '26', '부산 동래구'),
    (0, '이편원', '30', '경상남도 양산시'),
    (0, '전주환', '30', '부산 부산진구'),
    (0, '심재원', '29', '부산 남구');