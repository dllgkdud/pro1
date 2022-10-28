-- faq(반응형 게시판)
create table faq1 (
    no number primary key,
    title varchar2(100) not null,
    content varchar2(600),
    author varchar2(16),
    resdate date default sysdate,
    qna number not null,        -- 질문(0) / 답변(1) 구분(boolean도 사용 가능)
    parno number not null      -- 질문(1)과 답변(1)의 공통 번호
    );
desc faq1;

-- 게시판 번호 설정
create sequence fseq;

-- 질문 등록
-- insert into faq1 values (fseq.nextval, ?, ?, 'admin', sysdate, 0, fseq.currval);

-- 답변 등록
-- insert into faq1 values (fseq.nextval, ?, ?, 'admin', sysdate, 1, ?);

-- 예시(질문 및 답변)
-- nextval은 넣을 때마다 +1이므로, 공통번호에는 현재번호를 출력하는 currval을 호출한다.
-- 시간 대 별로 저장된 내용을 가지고 결과를 호출하기에 하나씩 작성해 적용하는 것이 중요하다.
insert into faq1 values (fseq.nextval, '질문1', '차량계약 후 해지 시 계약금은 환불 받을수 있습니까?', 'admin', sysdate, 0, fseq.currval);
insert into faq1 values (fseq.nextval, '질문2', '장애인차량 구입조건에 대해 알고 싶습니다.', 'admin', sysdate, 0, fseq.currval);
insert into faq1 values (fseq.nextval, '질문3', '차량구입시 신용카드는 얼마까지 이용할 수 있나요?', 'admin', sysdate, 0, fseq.currval);
insert into faq1 values (fseq.nextval, '질문4', '차량계약 후 예상납기일에 대해 알 수 있나요?', 'admin', sysdate, 0, fseq.currval);
insert into faq1 values (fseq.nextval, '질문5', '세이브오토 이용에 관해 알고 싶습니다.', 'admin', sysdate, 0, fseq.currval);

insert into faq1 values (fseq.nextval, '질문1의 답변', '차량 출고전 해지요청시에는 계약금 환불이 가능하며, 자세한 사항은 계약하신 지점(대리점)에 문의 바랍니다.', 'admin', sysdate, 1, 1);
insert into faq1 values (fseq.nextval, '질문2의 답변', '장애인 조건의 차량구입은 장애인 단독명의, 장애인과 주민등록표상 세대를 함께하는 배우자, 직계존비속,형제자매 또는 직계비속의 배우자 공동명의로 구입이 가능합니다.', 'admin', sysdate, 1, 2);
insert into faq1 values (fseq.nextval, '질문3의 답변', '자동차 구입시 신용카드를 이용한 결제는 고객님 신용카드 한도내에서 희망하시는 금액까지 자유로이 결제가 가능합니다.', 'admin', sysdate, 1, 3);
insert into faq1 values (fseq.nextval, '질문4의 답변', '계약하신 지점(대리점)에서 확인 가능합니다.', 'admin', sysdate, 1, 4);
insert into faq1 values (fseq.nextval, '질문5의 답변', '현대카드M을 이용해 신차 구입시 선수금을 10만원 이상 결제하시는 경우 구매 대금 중 일부를 해당포인트(20만/30만/50만)만큼 먼저 할인해 드립니다.', 'admin', sysdate, 1, 5);

-- 게시판 목록 보기
select * from faq1 order by parno asc, qna asc;
select * from faq1 where no=1;

commit;