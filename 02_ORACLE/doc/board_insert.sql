--INSERT(등록) : sql로 DB 데이터 입력하기
INSERT INTO BOARD VALUES (1,'첫 번째 데이터 입력','첫 번째 내용입력',0,'pcwk01',sysdate);

--SELECT(조회) : sql로 데이터 조회
SELECT seq, title, constents,read_cnt, reg_id, reg_dt
FROM board
;