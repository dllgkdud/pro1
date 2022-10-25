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
alter table board1 rename column regdate to resdate;

insert into member1 values('kkt', '1111', '김기태', 'kkt@gmail.com', '010-1111-1111', sysdate);
insert into member1 values('admin', '1234', '관리자', 'admin@website.com', '010-0000-1111', sysdate);

select * from member1;

insert into board1 values (bseq.nextval, '테스트글1', '테스트글1의 내용입니다.', 'admin', sysdate);
insert into board1 values (bseq.nextval, '테스트글2', '테스트글2의 내용입니다.', 'admin', sysdate);
insert into board1 values (bseq.nextval, '테스트글3', '테스트글3의 내용입니다.', 'admin', sysdate);
insert into board1 values (bseq.nextval, '테스트글4', '테스트글4의 내용입니다.', 'dllgk115', sysdate);
insert into board1 values (bseq.nextval, '테스트글5', '테스트글5의 내용입니다.', 'kkt', sysdate);
insert into board1 values (bseq.nextval, '테스트글6', '테스트글6의 내용입니다.', 'admin', sysdate);
insert into board1 values (bseq.nextval, '테스트글7', '테스트글7의 내용입니다.', 'dllgk115', sysdate);
insert into board1 values (bseq.nextval, '테스트글8', '테스트글8의 내용입니다.', 'kkt', sysdate);
insert into board1 values (bseq.nextval, '테스트글9', '테스트글9의 내용입니다.', 'admin', sysdate);
insert into board1 values (bseq.nextval, '테스트글10', '테스트글10의 내용입니다.', 'admin', sysdate);
insert into board1 values (bseq.nextval, '테스트글11', '테스트글11의 내용입니다.', 'kkt', sysdate);

commit;

alter table board1 add constraint fk_id foreign key(author) references member1(id);
select * from board1 order by resdate desc;