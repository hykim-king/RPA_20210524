--INSERT(���) : sql�� DB ������ �Է��ϱ�
INSERT INTO BOARD (SEQ,TITLE,CONSTENTS,READ_CNT,REG_ID,REG_DT) 
VALUES (?,?,?,?,?,sysdate);

--SELECT(��ȸ) : sql�� ������ ��ȸ
SELECT seq, title, constents,read_cnt, reg_id, TO_CHAR(reg_dt,'YYYY/MM/DD hh24:MI:SS') reg_date
FROM board
WHERE seq = :seq;
--������.


--DELETE(����)
DELETE FROM board
WHERE seq = :seq;

--UPDATE ( ������ ���� �ϱ�)
-- ���� : UPDATE ���̺�
--       SET column   = ���� value,
--	       column02 = ���� value
--	  WHERE ���� = ���� VALUE;

--ALT + ' -> ��ҹ��� ��ȯ
  UPDATE board	
  SET title     = :title,
      constents = :constents
  WHERE seq = :seq01;

  commit;
    
  SELECT *
  FROM board;
    
--�����ȸ
SELECT a.seq,
       a.title,
       a.reg_id,
       TO_CHAR(a.reg_dt,'YY.MM.DD') reg_dt,
       a.read_cnt
FROM board  a
--����,����,ID,����+����
--title�� :searchWord�����ϴ� �Խñ�
--WHERE a.title LIKE :searchWord||'%'
--WHERE a.constents LIKE :searchWord||'%'
--WHERE a.reg_id LIKE :searchWord||'%'
--WHERE a.title     LIKE   :searchWord01 ||'%'
--OR    a.constents LIKE   :searchWord02 ||'%'
ORDER BY a.seq desc
;

SELECT *
FROM  board;





    
    
    
    
      