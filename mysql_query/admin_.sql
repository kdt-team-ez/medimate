use medimate;

SELECT M_NUM,M_NAME,M_CORP,M_TYPE from tb_medicine;

desc tb_medicine;

INSERT INTO tb_medicine (M_NUM,M_NAME,M_CORP,M_TYPE,M_SHAPE,M_REGDATE,M_MARK_FRONT,M_MARK_BACK
,M_COLOR_FRONT,M_COLOR_BACK,M_CHARACTER,M_AXIS_LONG,M_AXIS_SHORT,M_THICKNESS,M_IMAGE) 
values (?,?,?,?,?,?,?,?,?,?,?,?,?,?);

## SELECT ALL(페이지 한장당 조회하는 약의 개수)
SELECT M_NUM,M_NAME,M_CORP,M_TYPE,M_SHAPE,M_REGDATE,M_MARK_FRONT,M_MARK_BACK
,M_COLOR_FRONT,M_COLOR_BACK,M_CHARACTER,M_AXIS_LONG,M_AXIS_SHORT,M_THICKNESS,M_IMAGE 
FROM tb_medicine where M_Name='?' order by M_Num asc limit 0,9;

## select ONE
SELECT M_NUM,M_NAME,M_CORP,M_TYPE,M_SHAPE,M_REGDATE,M_MARK_FRONT,M_MARK_BACK
,M_COLOR_FRONT,M_COLOR_BACK,M_CHARACTER,M_AXIS_LONG,M_AXIS_SHORT,M_THICKNESS,M_IMAGE 
FROM tb_medicine where M_Num='?';


update tb_medicine SET M_NUM=?,M_NAME=?,M_CORP=?,M_TYPE=?,M_SHAPE=?,M_REGDATE=?,M_MARK_FRONT=?,M_MARK_BACK=?
,M_COLOR_FRONT=?,M_COLOR_BACK=?,M_CHARACTER=?,M_AXIS_LONG=?,M_AXIS_SHORT=?,M_THICKNESS=?,M_IMAGE=? 
where M_Num='?';

delete from tb_medicine where M_Num='?';
