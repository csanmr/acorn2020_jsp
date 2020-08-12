-- 방명록 글을 저장할 테이블
CREATE table board_guest(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(50) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	content CLOB,
	regdate DATE
);
-- 방명록 테이블에 글 번호를 생성할 시퀀스
CREATE SEQUENCE board_guest_seq;




CREATE table board_guest(
	num NUMBER PRIMARY KEY,
	user_name VARCHAR2(50) NOT NULL,
	user_id VARCHAR2(50) NOT NULL,
	user_pwd VARCHAR2(50) NOT NULL,
	user_addr VARCHAR2(100) NOT NULL,
	regdate DATE
);
