drop table member;
drop table board;

create table member (
	
	  id 		varchar(15) primary key
	, pw			varchar(13) 
	, name  		varchar(20)
	, age	    int
	, gender		varchar(5)
	, email		varchar(30)
	
);


create table board (

	  bno 		int   		primary key
	, writer		varchar(20) not null
	, pass 		varchar(15) not null
	, subject		varchar(50) not null
	, content		varchar(2000) not null
	, file 		varchar(50) 
	, re_ref 		int 		default 0
	, re_lev 		int 		default 0
	, re_seq 		int 		default 0
	, readcount	int			default 0 		
	, crtdate   date
);

DELIMITER //
BEGIN NOT ATOMIC
    declare i int default 1;
	while(i<=1001) do
		insert into board (bno, writer, pass, subject, content,
		               file, re_ref, re_lev, re_seq, readcount, crtdate) 
				  values(i, concat('작성자_', i), '1', concat('제목_', i), concat('메시지내용_', i), 
				        '', i,0,0,0,sysdate());
		set i = i + 1;
	end while;
END;

select count(*) from board;

select * from board order by bno desc limit 0, 10;