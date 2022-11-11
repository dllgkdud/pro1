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
    regdate date default sysdate,
    
    constraint fk_id foreign key(author) references member1(id)
);

insert into member1 values('kkt', '1111', '김기태', 'kkt@gmail.com', '010-1111-1111', sysdate);
insert into member1 values('admin', '1234', '관리자', 'admin@website.com', '010-0000-1111', sysdate);

commit;
