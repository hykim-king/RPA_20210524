1. 한시간 이내 coding
2. 게시판(board) 테이블
3. DB : CRUD
   INSERT(등록) : sql로 DB 데이터 입력하기
   UPDATE(수정)
   DELETE(삭제)
   SELECT(조회) : sql로 데이터 조회
   
--BOARD.SQL
--테이블 삭제
DROP TABLE BOARD;

--테이블 생성
CREATE TABLE BOARD  (						
	SEQ			NUMBER,				
	TITLE 		VARCHAR2(1000 BYTE),					
	CONSTENTS 	CLOB,					
	READ_CNT 	NUMBER DEFAULT 0,					
	REG_ID 		VARCHAR2(12 BYTE),					
	REG_DT 		DATE DEFAULT SYSDATE				
);						

--COMMENT
COMMENT ON TABLE BOARD IS '게시판';

--INDEX생성
CREATE UNIQUE INDEX PK_BOARD
 ON BOARD (
  SEQ ASC
 );

--PK생성
ALTER TABLE BOARD
 ADD
  CONSTRAINT PK_BOARD
  PRIMARY KEY (
   SEQ
  );   