Select * from TBL_TODO;

Select * from TBL_MEMBER;

alter table TBL_TODO drop column Todo_content;

alter table TBL_TODO modify todo_allday varchar2(5);


insert into tbl_todo values (TBL_TODO_SEQ.nextval,'ss','����', '2021-12-09', '2021-12-14',null,sysdate,'a','y');


alter table TBL_TODO RENAME Column TODO_CHECK TO TODO_ALLDAY;

alter table TBL_TODO RENAME Column TODO_SUBJECT TO TODO_TITLE;


INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal , 'UX/UI', '����', '2021-12-06T14:00:00', '2021-12-06T18:00:00', sysdate, 'admin', 'N');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '������Ʈ', '����', '2021-12-07', '2021-12-12', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '������Ʈ', '����', '2021-12-13', '2021-12-19', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '������Ʈ', '����', '2021-12-20', '2021-12-21', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '��ǥ', '�߿�����', '2021-12-21', '2021-12-21', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, '����', '�߿�����', '2021-12-11', '2021-12-11', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, 'ũ�������� ��Ƽ', '�߿�����', '2021-12-24', '2021-12-26', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '������', '�', '2021-12-08', '2021-12-08', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '������', '�', '2021-12-15', '2021-12-15', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '�౸', '�', '2021-12-18', '2021-12-18', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '���� ����', '���', '2021-12-06', '2021-12-06', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '��ȭ', '���', '2021-12-17', '2021-12-17', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday)
VALUES (TBL_TODO_SEQ.nextVal, 'ī�尪 ����', '��Ÿ', '2021-12-10', '2021-12-10', sysdate, 'admin', 'Y');

INSERT INTO tbl_todo (todo_seq, todo_title, todo_cate, todo_sdate, todo_edate, reg_date, m_id, todo_allday) 
VALUES (TBL_TODO_SEQ.nextVal, '���޳�', '��Ÿ', '2021-12-15', '2021-12-15', sysdate, 'admin', 'Y');