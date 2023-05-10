
CREATE DATABASE MEDIMATE;
USE MEDIMATE;

CREATE TABLE `TB_USER` (
	`U_NUM`	INT	AUTO_INCREMENT PRIMARY KEY,
	`U_ID`	VARCHAR(20)	NOT NULL,
	`U_PW`	VARCHAR(20)	NOT NULL,
	`U_NAME`	VARCHAR(20),
	`U_EMAIL`	VARCHAR(50)	NOT NULL,
	`U_ZIP_CODE`	VARCHAR(50),
	`U_ADDRESS1`	VARCHAR(50),
	`U_ADDRESS2`	VARCHAR(50),
	`U_DATE_JOIN`	DATETIME	DEFAULT	NOW(),
	`U_ID_TYPE`	VARCHAR(5),
    `U_HP` VARCHAR(12)
);

CREATE TABLE `TB_PHARM` (
	`P_NUM`		VARCHAR(20)	PRIMARY KEY,
	`P_NAME`	VARCHAR(50)	NOT NULL,
	`P_ADDRESS`	VARCHAR(50),
	`P_PHONE`	VARCHAR(20),
	`P_MON_S`	VARCHAR(20),
	`P_MON_C`	VARCHAR(20),
	`P_TUE_S`	VARCHAR(20),
	`P_TUE_C`	VARCHAR(20),
	`P_WED_S`	VARCHAR(20),
	`P_WED_C`	VARCHAR(20),
	`P_THU_S`	VARCHAR(20),
	`P_THU_C`	VARCHAR(20),
	`P_FRI_S`	VARCHAR(20),
	`P_FRI_C`	VARCHAR(20),
	`P_SAT_S`	VARCHAR(20),
	`P_SAT_C`	VARCHAR(20),
	`P_SUN_S`	VARCHAR(20),
	`P_SUN_C`	VARCHAR(20),
	`P_HOLI_S`	VARCHAR(20),
	`P_HOLI_C`	VARCHAR(20),
	`P_LATI`	VARCHAR(20),
	`P_LONGI`	VARCHAR(20)
);

CREATE TABLE `TB_CALENDAR` (
	`C_NUM`	INT	AUTO_INCREMENT PRIMARY KEY,
	`U_NUM`	INT	NOT NULL,
	`C_TITLE`	VARCHAR(255)	NOT NULL,
	`C_START`	DATE	NOT NULL,
	`C_END`	DATE	NOT NULL,
	`C_CONTENT`	VARCHAR(255),
	`C_COLOR`	VARCHAR(255),
    FOREIGN KEY(U_NUM) REFERENCES TB_USER(U_NUM)
);

CREATE TABLE `TB_QNA` (
	`Q_NUM`		INT	AUTO_INCREMENT PRIMARY KEY,
	`U_NUM`		INT	NOT NULL,
	`Q_TITLE`	VARCHAR(50)	NOT NULL,
	`Q_CONTENT`	VARCHAR(500)	NOT NULL,
	`Q_ANSWER`	BOOLEAN	NOT NULL,
	`Q_DATE`	DATETIME	DEFAULT	NOW(),
    FOREIGN KEY(U_NUM) REFERENCES TB_USER(U_NUM)
);

CREATE TABLE `TB_ANNOUNCEMENT` (
	`A_NUM`	INT	AUTO_INCREMENT PRIMARY KEY,
	`U_NUM`	INT	NOT NULL,
	`A_TITLE`	VARCHAR(50)	NOT NULL,
	`A_DATE`	DATETIME	DEFAULT	NOW(),
	`A_WRITER`	VARCHAR(50)	NOT NULL,
	`A_CONTENT`	VARCHAR(500)	NOT NULL,
    FOREIGN KEY(U_NUM) REFERENCES TB_USER(U_NUM)
);

CREATE TABLE `TB_SHARE_CALENDAR` (
	`S_NUM`	INT	PRIMARY KEY,
	`S_FOLLOWER_NUM`	INT	NOT NULL,
	`S_FOLLOWING_NUM`	INT	NOT NULL,
    FOREIGN KEY(S_FOLLOWER_NUM) REFERENCES TB_USER(U_NUM),
    FOREIGN KEY(S_FOLLOWING_NUM) REFERENCES TB_USER(U_NUM)
);

CREATE TABLE `TB_MEDICINE` (
	`M_NUM`	VARCHAR(20)	PRIMARY KEY,
	`M_NAME`	VARCHAR(50)	NOT NULL,
	`M_CORP`	VARCHAR(50)	NOT NULL,
	`M_TYPE`	VARCHAR(20)	NOT NULL,
	`M_SHAPE`	VARCHAR(50),
	`M_REGDATE`	DATETIME	DEFAULT	NOW(),
	`M_MARK_FRONT`	VARCHAR(20),
	`M_MARK_BACK`	VARCHAR(10),
	`M_COLOR_FRONT`	VARCHAR(10),
	`M_COLOR_BACK`	VARCHAR(10),
	`M_CHARACTER`	VARCHAR(10),
	`M_AXIS_LONG`	VARCHAR(10),
	`M_AXIS_SHORT`	VARCHAR(10),
	`M_THICKNESS`	VARCHAR(10),
	`M_IMAGE`	VARCHAR(255)
);
