--INSERT(���) : sql�� DB ������ �Է��ϱ�
INSERT INTO BOARD VALUES (1,'ù ��° ������ �Է�','ù ��° �����Է�',0,'pcwk01',sysdate);

--SELECT(��ȸ) : sql�� ������ ��ȸ
SELECT seq, title, constents,read_cnt, reg_id, reg_dt
FROM board
;