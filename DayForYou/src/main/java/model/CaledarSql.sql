Select * from TBL_TODO;

Select * from TBL_MEMBER;

alter table TBL_TODO drop column Todo_content;

alter table TBL_TODO modify todo_allday number(1);

alter table tbl_todo MODIFY (todo_allday DEFAULT 1);

delete from tbl_todo;

insert into tbl_todo values (TBL_TODO_SEQ.nextval,'ss','공부', '2021-12-09', '2021-12-14',null,sysdate,'a','1');


alter table TBL_TODO RENAME Column TODO_CHECK TO TODO_ALLDAY;

alter table TBL_TODO RENAME Column TODO_SUBJECT TO TODO_TITLE;


INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal , 'UX/UI', '공부', '2021-12-06T14:00:00', '2021-12-06T18:00:00', sysdate, 'admin', 0);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '프로젝트', '공부', '2021-12-07', '2021-12-12', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '프로젝트', '공부', '2021-12-13', '2021-12-19', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '프로젝트', '공부', '2021-12-20', '2021-12-21', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '발표', '중요일정', '2021-12-21', '2021-12-21', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '생일', '중요일정', '2021-12-11', '2021-12-11', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '크리스마스 파티', '중요일정', '2021-12-24', '2021-12-26', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '배드민턴', '운동', '2021-12-08', '2021-12-08', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '배드민턴', '운동', '2021-12-15', '2021-12-15', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '축구', '운동', '2021-12-18', '2021-12-18', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '도서 구매', '취미', '2021-12-06', '2021-12-06', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '영화', '취미', '2021-12-17', '2021-12-17', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '카드값 결제', '기타', '2021-12-10', '2021-12-10', sysdate, 'admin', 1);

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '월급날', '기타', '2021-12-15', '2021-12-15', sysdate, 'admin', 1);