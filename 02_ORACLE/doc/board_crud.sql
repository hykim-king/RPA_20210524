--INSERT(등록) : sql로 DB 데이터 입력하기
INSERT INTO BOARD (SEQ,TITLE,CONSTENTS,READ_CNT,REG_ID,REG_DT) 
VALUES (?,?,?,?,?,sysdate);

--SELECT(조회) : sql로 데이터 조회
SELECT seq, title, constents,read_cnt, reg_id, TO_CHAR(reg_dt,'YYYY/MM/DD hh24:MI:SS') reg_date
FROM board
WHERE seq = :seq;
--조건절.


--DELETE(삭제)
DELETE FROM board
WHERE seq = :seq;

--UPDATE ( 데이터 변경 하기)
-- 문법 : UPDATE 테이블
--       SET column   = 변경 value,
--	       column02 = 변경 value
--	  WHERE 조건 = 조건 VALUE;

--ALT + ' -> 대소문자 변환
  UPDATE board	
  SET title     = :title,
      constents = :constents
  WHERE seq = :seq01;

  commit;
    
  SELECT *
  FROM board;
    
--목록조회
SELECT a.seq,
       a.title,
       a.reg_id,
       TO_CHAR(a.reg_dt,'YY.MM.DD') reg_dt,
       a.read_cnt
FROM board  a
--제목,내용,ID,제목+내용
--title이 :searchWord시작하는 게시글
--WHERE a.title LIKE :searchWord||'%'
--WHERE a.constents LIKE :searchWord||'%'
--WHERE a.reg_id LIKE :searchWord||'%'
--WHERE a.title     LIKE   :searchWord01 ||'%'
--OR    a.constents LIKE   :searchWord02 ||'%'
ORDER BY a.seq desc
;

SELECT *
FROM  board;





    
    
    
    
      