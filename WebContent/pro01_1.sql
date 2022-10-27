-- junit
select sysdate now from dual;

-- 테이블
create table member1 (
    id varchar2(16) primary key,
    pw varchar2(20) not null,
    name varchar2(50) not null,
    email varchar2(100),
    tel varchar2(13),
    regdate date default sysdate
);

create table board1 (
    no number primary key,
    title varchar2(100) not null,
    content varchar2(600),
    author varchar2(16),
    resdate date default sysdate,
    
    constraint fk_id foreign key(author) references member1(id)
);

create sequence bseq;

-- 회원목록
select * from member1;

-- 게시판목록
select * from board1;
select * from board1 order by resdate desc;
select a.no no, a.title title, a.content content, b.name name, a.author author, a.resdate resdate from board1 a inner join member1 b on a.author=b.id where a.no=1;
select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from board1 order by no desc) t1 where t1.rn between 1 and 10;
-- select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from board1 order by no desc) t1 where t1.rn between ? and ?;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);


--글 상세보기
select a.no no, a.title tit, a.content cont, a.author aut, b.name nam, to_char(a.resdate, 'yyyy-MM-dd') res from board1 a inner join member1 b on a.author=b.id where a.no=24;
select a.no no, a.title title, a.content content, b.name name, a.resdate resdate from board1 a inner join member1 b on a.author=b.id order by a.resdate desc;
-- rs.getInt("no");
-- rs.getString("tit");	//해당 항목의 allas
-- rs.getString("cont");
-- rs.getString("nam");
-- rs.getString("res");

-- 글 작성
insert into board1 values (bseq.nextval, '테스트12', '테스트12의 내용입니다', 'admin', sysdate);
-- insert into board1 values (bseq.nextval, ?, ?, ?, sysdate)

-- 글 수정
update board1 set title='제목', content='내용' where no='24';
-- update board1 set title=?, content=? where no=?

-- 글 삭제
delete from board1 where no=25;
-- delete from board1 where no=?

commit;