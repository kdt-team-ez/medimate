use medimate;

## 관리자 페이지 -> 약품 관리

desc tb_medicine;

INSERT INTO tb_medicine (M_NUM,M_NAME,M_CORP,M_TYPE,M_SHAPE,M_REGDATE,M_MARK_FRONT,M_MARK_BACK
,M_COLOR_FRONT,M_COLOR_BACK,M_CHARACTER,M_AXIS_LONG,M_AXIS_SHORT,M_THICKNESS,M_IMAGE) 
values (?,?,?,?,?,?,?,?,?,?,?,?,?,?);

## SELECT ALL(약품관리 기본화면)
SELECT M_NUM,M_NAME,M_CORP,M_TYPE from tb_medicine order by M_Num asc limit 0,9;

## select ONE (약품관리 모달창)
SELECT M_NUM,M_NAME,M_CORP,M_TYPE,M_SHAPE,M_REGDATE,M_MARK_FRONT,M_MARK_BACK
,M_COLOR_FRONT,M_COLOR_BACK,M_CHARACTER,M_AXIS_LONG,M_AXIS_SHORT,M_THICKNESS,M_IMAGE 
FROM tb_medicine where M_Num='?';


UPDATE tb_medicine SET M_NUM=?,M_NAME=?,M_CORP=?,M_TYPE=?,M_SHAPE=?,M_REGDATE=?,M_MARK_FRONT=?,M_MARK_BACK=?
,M_COLOR_FRONT=?,M_COLOR_BACK=?,M_CHARACTER=?,M_AXIS_LONG=?,M_AXIS_SHORT=?,M_THICKNESS=?,M_IMAGE=? 
WHERE M_Num='?';

DELETE FROM tb_medicine WHERE M_Num='?';

#=========================================================================#

### 약국 관리
## SELECT ALL (약국관리 기본화면)
select P_NUM,P_NAME,P_ADDRESS from tb_pharm  order by M_Num asc limit 0,9;

### SELECT ONE (약국관리 모달창)
SELECT P_NUM,P_NAME,P_PHONE,P_LATI,P_LONGI,P_ADDRESS,P_MON_S,P_MON_C,P_TUE_S,P_TUE_C,P_WED_S,P_WED_C,P_THU_S,P_THU_C,
P_FRI_S,P_FRI_C,P_SAT_S,P_SAT_C,P_SUN_S,P_SUN_C,P_HOLI_S,P_HOLI_C FROM tb_pharm;

## 데이터 추가
INSERT INTO tb_pharm (P_NUM,P_NAME,P_PHONE,P_LATI,P_LONGI,P_ADDRESS,P_MON_S,P_MON_C,P_TUE_S,P_TUE_C,P_WED_S,P_WED_C,
P_THU_S,P_THU_C,P_FRI_S,P_FRI_C,P_SAT_S,P_SAT_C,P_SUN_S,P_SUN_C,P_HOLI_S,P_HOLI_C) 
values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

UPDATE tb_pharm SET P_NUM=?,P_NAME=?,P_PHONE=?,P_LATI=?,P_LONGI=?,P_ADDRESS=?,P_MON_S=?,P_MON_C=?,P_TUE_S=?,P_TUE_C=?,
P_WED_S=?,P_WED_C=?,P_THU_S=?,P_THU_C=?,P_FRI_S=?,P_FRI_C=?,P_SAT_S=?,P_SAT_C=?,P_SUN_S=?,P_SUN_C=?,P_HOLI_S=?
,P_HOLI_C=? WHERE P_NUM='?';

DELETE FROM tb_pharm WHERE P_NUM='?';

#=========================================================================#

# SELECT ALL 회원 관리 메인 (관리자페이지)
SELECT U_NUM, U_ID, U_NAME, U_EMAIL FROM TB_USER ORDER BY U_NUM ASC LIMIT 0,9;

# SELECT ONE 회원 관리 모달 (관리자페이지)
SELECT U_NUM, U_ID, U_NAME, U_EMAIL, U_HP FROM TB_USER;

# update 회원관리 -> 회원정보 수정
UPDATE TB_USER SET U_NUM=?, U_ID=?, U_NAME=?, U_EMAIL=?, U_HP=? WHERE U_NUM='?';

#DELETE 회원관리 -> 회원정보 삭제
DELETE FROM TB_USER WHERE U_NUM='?';

#=========================================================================#

# SELECT ALL 메인(관리자페이지)
SELECT AN.A_NUM, AN.A_TITLE, US.U_NAME, AN.A_DATE FROM TB_ANNOUNCEMENT AS AN 
JOIN TB_USER AS US ON TB_AN.U_NUM=US.U_NUM ORDER BY AN.A_NUM ASC LIMIT 0,9;

# SELECT ONE (공지사항 상세보기) 
SELECT AN.A_TITLE,AN.A_DATE, US.U_NAME, AN.A_CONTENT,AN.A_IMG FROM TB_ANNOUNCEMENT AS AN 
JOIN TB_USER AS US ON TB_AN.U_NUM=US.U_NUM WHERE AN.A_NUM ='?' ORDER BY AN.A_NUM ;

# 공지사항 작성 (관리자페이지)
INSERT INTO TB_ANNOUNCEMENT(A_TITLE) VALUES ('입력할제목');
INSERT INTO TB_USER(U_NAME) VALUES ('입력할이름');
INSERT INTO TB_ANNOUNCEMENT(A_CONTENT) VALUES ('입력할내용');

desc tb_user;
insert into tb_user (U_ID,U_PW,U_NAME,U_EMAIL,U_ZIP_CODE,U_ADDRESS1,U_ADDRESS2,U_ID_TYPE,U_HP) VALUES ("1","1","1","1","1","1","1","1","1");
SELECT * FROM TB_USER;

desc tb_announcement;
insert into tb_announcement (U_NUM,A_TITLE,A_WRITER,A_CONTENT,A_IMG) VALUES ('1','1','1','1','1');

SELECT * FROM TB_ANNOUNCEMENT;

desc tb_user;

#=========================================================================#

