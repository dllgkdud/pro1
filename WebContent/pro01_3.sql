-- 질문 및 답변 테이블
create table qna1 (
    no number primary key,
    title varchar2(100) not null,
    content varchar2(600) not null,
    author varchar2(16),
    resdate date default sysdate,
    lev number not null,            -- 깊이(질문(0) / 답변(1))
    parno number not null,       -- 부모 글 번호(질문(1)과 답변(1)의 공통 번호)
    ps char(1)                             -- 비밀글 여부 확인
);
desc qna1;
drop table qna1;

alter table qna1 add constraint fk_qid foreign key(author) references member1(id);

-- 게시판 번호 추가
create sequence qseq;
drop sequence qseq;

-- 더미 데이터
insert into qna1 values (qseq.nextval, '테스트1 문의 열립니다.', '테스트1 문의 열립니다. 한 걸음 물러서 주시기 바랍니다.', 'kkt', sysdate, 0, qseq.currval, 'Y');
insert into qna1 values (qseq.nextval, '테스트2 문의 열립니다.', '테스트2 문의 열립니다. 한 걸음 물러서 주시기 바랍니다.', 'testid1027', sysdate, 0, qseq.currval, 'N');
insert into qna1 values (qseq.nextval, '테스트3 문의 열립니다.', '테스트3 문의 열립니다. 한 걸음 물러서 주시기 바랍니다.', 'testid1027', sysdate, 0, qseq.currval, 'N');
insert into qna1 values (qseq.nextval, '테스트4 문의 열립니다.', '테스트4 문의 열립니다. 한 걸음 물러서 주시기 바랍니다.', 'testid1027', sysdate, 0, qseq.currval, 'Y');
insert into qna1 values (qseq.nextval, '테스트5 문의 열립니다.', '테스트5 문의 열립니다. 한 걸음 물러서 주시기 바랍니다.', 'dllgkdud115', sysdate, 0, qseq.currval, 'N');
insert into qna1 values (qseq.nextval, '테스트6 문의 열립니다.', '테스트6 문의 열립니다. 한 걸음 물러서 주시기 바랍니다.', 'kkt', sysdate, 0, qseq.currval, 'N');

insert into qna1 values (qseq.nextval, '테스트1의 답변입니다.', '테스트1의 내용은 터무니없는 소리입니다. 무시하세요.', 'dllgkdud115', sysdate, 1, 1, 'N');

-- 게시판 목록
select * from qna1 order by lev asc, parno desc;

-- 질문 작성
-- insert into qna1 values (qseq.nextval, ?, ?, ?, sysdate, 0, qseq.currval, ?);

-- 질문 수정
update qna1 set ps='Y', title='테스트6', content='테스트6수정본테스트6수정본테스트6수정본테스트6수정본테스트6수정본', author='dllgkdud115', resdate=sysdate where no=7;
-- update qna1 set ps=?, title=?, content=?, author=?, resdate=sysdate where no=?

-- 질문 삭제
delete from qna1 where parno=22;
-- delete from qna1 where parno=?;

-- 답변 삭제
-- delete from qna1 where no=?;

commit;