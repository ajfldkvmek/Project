--------------------------------------------------------
--  ������ ������ - ������-11��-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "LIB"."ADMIN" 
   (	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"ADMIN_PW" VARCHAR2(30 BYTE), 
	"ADMIN_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "LIB"."BOOK" 
   (	"BOOK_NO" CHAR(11 BYTE), 
	"TITLE" VARCHAR2(200 BYTE), 
	"AUTHOR" VARCHAR2(50 BYTE), 
	"PUBLISHER" VARCHAR2(100 BYTE), 
	"PUB_DATE" DATE, 
	"RENT_COUNT" NUMBER DEFAULT 0, 
	"BOOK_STAT" VARCHAR2(20 BYTE) DEFAULT '���Ⱑ��', 
	"RECOM_BOOK" CHAR(1 BYTE) DEFAULT 'N', 
	"RESV_MEM_ID" VARCHAR2(20 BYTE), 
	"CATE_NO" CHAR(3 BYTE), 
	"BOOK_DEL" CHAR(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOOK_REQUEST
--------------------------------------------------------

  CREATE TABLE "LIB"."BOOK_REQUEST" 
   (	"TITLE" VARCHAR2(200 BYTE), 
	"AUTHOR" VARCHAR2(50 BYTE), 
	"MEM_ID" VARCHAR2(20 BYTE), 
	"PUBLISHER" VARCHAR2(30 BYTE), 
	"REQ_ID" CHAR(12 BYTE), 
	"REGIST" CHAR(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "LIB"."CATEGORY" 
   (	"CATE_NO" CHAR(3 BYTE), 
	"CATE_NM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATE_SPEC
--------------------------------------------------------

  CREATE TABLE "LIB"."CATE_SPEC" 
   (	"SPEC_NO" CHAR(3 BYTE), 
	"SPEC_NM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "LIB"."EVENT" 
   (	"EVT_NO" CHAR(12 BYTE), 
	"EVT_NAME" VARCHAR2(20 BYTE), 
	"EVT_TIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVT_APPLY
--------------------------------------------------------

  CREATE TABLE "LIB"."EVT_APPLY" 
   (	"MEM_ID" VARCHAR2(20 BYTE), 
	"EVT_NO" CHAR(12 BYTE), 
	"RESVE_NO" CHAR(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "LIB"."MEMBER" 
   (	"MEM_ID" VARCHAR2(20 BYTE), 
	"MEM_PW" VARCHAR2(30 BYTE), 
	"MEM_NAME" VARCHAR2(30 BYTE), 
	"MEM_TELNO" VARCHAR2(13 BYTE), 
	"JOIN_DATE" DATE DEFAULT sysdate, 
	"MEM_DEL" CHAR(1 BYTE) DEFAULT 'N', 
	"COUNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RENT
--------------------------------------------------------

  CREATE TABLE "LIB"."RENT" 
   (	"BOOK_NO" CHAR(11 BYTE), 
	"MEM_ID" VARCHAR2(20 BYTE), 
	"RENT_NO" CHAR(9 BYTE), 
	"RENT_DATE" DATE DEFAULT sysdate, 
	"EXTEN_COUNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RETURN
--------------------------------------------------------

  CREATE TABLE "LIB"."RETURN" 
   (	"RET_NO" CHAR(8 BYTE), 
	"RET_DATE" DATE DEFAULT sysdate, 
	"RENT_NO" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROOM
--------------------------------------------------------

  CREATE TABLE "LIB"."ROOM" 
   (	"SEAT_NO" VARCHAR2(2 BYTE), 
	"SEAT_STAT" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROOM_RESV
--------------------------------------------------------

  CREATE TABLE "LIB"."ROOM_RESV" 
   (	"MEM_ID" VARCHAR2(20 BYTE), 
	"SEAT_NO" VARCHAR2(2 BYTE), 
	"RESV_TIME" DATE DEFAULT sysdate, 
	"RESV_NO" CHAR(10 BYTE), 
	"OUT_TIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into LIB.ADMIN
SET DEFINE OFF;
Insert into LIB.ADMIN (ADMIN_ID,ADMIN_PW,ADMIN_NAME) values ('admin1','1234','������');
Insert into LIB.ADMIN (ADMIN_ID,ADMIN_PW,ADMIN_NAME) values ('admin2','0769','�ΰ漱');
Insert into LIB.ADMIN (ADMIN_ID,ADMIN_PW,ADMIN_NAME) values ('admin3','1029','������');
REM INSERTING into LIB.BOOK
SET DEFINE OFF;
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('890.��.123','���ε� ���','�����','�ѱ����ǻ�',to_date('21/10/08 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','Y',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('891.��.456','Ȳ���� ����','Michael Crichton','Vintage',to_date('19/03/25 00:00','RR/MM/DD HH24:MI'),25,'������','Y','test1','800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('894.��.345','1984','George Orwell','Penguin Modern Classics',to_date('17/11/22 00:00','RR/MM/DD HH24:MI'),26,'������','N','xknks','800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('892.��.789','To Kill a Mockingbird','Harper Lee','Harper Perennial Modern Classics',to_date('16/07/14 00:00','RR/MM/DD HH24:MI'),22,'������','Y','qweqwe','800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('893.��.012','�ظ����Ϳ� �������� ��','J.K. Rowling','Bloomsbury Publishing',to_date('18/01/30 00:00','RR/MM/DD HH24:MI'),31,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('895.��.678','The Hobbit','J.R.R. Tolkien','Houghton Mifflin Harcourt',to_date('20/08/12 00:00','RR/MM/DD HH24:MI'),19,'������','Y',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('896.��.901','The Art of War','Sun Tzu','Penguin Classics',to_date('20/05/15 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','Y',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('897.��.234','��Ȳ�ϴ� ��','Franz Kafka','�ѱ����ǻ�',to_date('18/09/08 00:00','RR/MM/DD HH24:MI'),21,'���Ⱑ��','Y',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('898.��.567','�ð��� �̷�','Gabriel Garcia Marquez','Vintage Espa?ol',to_date('19/12/01 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','Y',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('899.��.890','������ ��','�����','�ѱ����ǻ�',to_date('22/06/25 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','Y',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('906.��.890','���� ������','�̹̿�','�ѱ����ǻ�',to_date('18/03/08 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('907.ī.123','Moby-Dick','Herman Melville','Penguin Classics',to_date('16/08/18 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('908.Ÿ.567','���� �Ӹ� ��','��� ��� ����޸�','Puffin Books',to_date('20/04/01 00:00','RR/MM/DD HH24:MI'),25,'������','Y','user111','900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('909.��.890','Norwegian Wood','Haruki Murakami','Vintage International',to_date('18/06/22 00:00','RR/MM/DD HH24:MI'),29,'������','Y',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('910.��.123','�ҳ��� �´�','�Ѱ�','���е���',to_date('21/03/15 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','Y',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('911.��.456','����� �Ǵ�','������ Lessing','�۰�����',to_date('19/08/10 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('912.��.789','�ٶ��� �γ׿�','�̹̿�','�ѱ����ǻ�',to_date('20/11/28 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('913.��.234','�׸��� �ź�','�Ѻ��','���м�ø',to_date('22/05/02 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('914.��.567','������ �� �ӿ���','������','���е���',to_date('21/09/15 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('915.��.890','�ٺ�','�迵��','���е���',to_date('18/04/30 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('916.��.123','���','���Ͽ� ����','�۰�����',to_date('23/11/01 00:00','RR/MM/DD HH24:MI'),22,'������','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('917.��.567','�� ���̷�','������','���м�ø',to_date('23/11/15 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('918.��.890','�����Ӹ� ���� ����','��� ��� ����޸�','Puffin Books',to_date('23/11/10 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('919.��.567','����� ������ �뷡�ϵ���','������','���е���',to_date('22/10/08 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('990.��.123','�ٻ� ������ �޽�','������','�������� ���',to_date('21/07/12 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('930.��.456','�鼳����','�׸���','��������',to_date('19/08/20 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('931.��.789','��','������','���е���',to_date('20/01/12 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('932.��.012','�ҽŽô��� �Ǳ׸�����','�㳲��','������',to_date('17/06/05 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('933.��.345','���������� �ູ','�ƴ��� ������','������',to_date('18/09/30 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('934.��.678','���� ���� ��å','��ҿ�','�ѱ����ǻ�',to_date('21/05/14 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('935.��.901','���� ������ ��ȸ','�Ѱ�','���е���',to_date('16/02/18 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('936.��.234','������ Ȳ��','�㼭��','�ѱ����ǻ�',to_date('19/12/10 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('937.��.567','������','���Ｎ','������',to_date('18/07/29 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('938.��.890','���˺�','����ȣ','�ѱ����ǻ�',to_date('17/03/22 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('939.ī.123','����','���淡','������',to_date('15/10/05 00:00','RR/MM/DD HH24:MI'),24,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('940.��.890','ī���� ���ڸ�����','������','�ѱ����ǻ�',to_date('22/03/18 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('941.��.123','���� �� ���� ������ ������','�鿵��','������',to_date('20/08/02 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('942.��.456','�����','������ �� �������丮','�ѱ����ǻ�',to_date('17/01/24 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('943.��.789','�� ������','��ȿ��','�ѱ����ǻ�',to_date('19/04/15 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('944.��.012','�׹�','������','������',to_date('18/12/05 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('945.��.345','��Ȳ�ϴ� �ǽ�','����','�ѱ����ǻ�',to_date('16/07/10 00:00','RR/MM/DD HH24:MI'),24,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('946.��.678','�ΰ� ������','������ ����ī','���е���',to_date('19/09/28 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('947.��.901','�Ҽ������� ���� ����','�̺���','���м�ø',to_date('20/11/30 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('948.��.234','Ǯ�Ͽ콺','�ӽ¿�','�и���Ͻ�',to_date('17/08/14 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('949.��.567','������ ����','�Ű渲','������ǻ�',to_date('18/05/20 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','Y',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('950.��.123','������ �Ҹ�','������','������ǻ�',to_date('20/04/15 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('951.��.456','Ǫ�� �ٴ��� �̾߱�','�輭��','�ѱ��̵������',to_date('19/08/30 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('952.��.789','������ ��','������','�������',to_date('21/11/25 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('953.��.012','�ϴ� �Ʒ� �� ������','�ŵ���','���빮�л�',to_date('18/07/10 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('954.��.345','�������� ���','�̼���','����å���ǻ�',to_date('17/06/18 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('955.��.678','������ ��','��ƶ�','��������',to_date('20/12/25 00:00','RR/MM/DD HH24:MI'),32,'������','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('956.��.901','Ŀ�� ������ ����','�ڿ���','�Ѽֹ�ȭ��',to_date('19/03/08 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('957.��.234','����� ���� ��','����ȣ','�ѽ��̵��',to_date('22/01/15 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('958.��.567','�츮���� �ϻ�','������','�и���Ͻ�',to_date('18/10/22 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('959.��.890','�ٴ� ���� ���','���Ѱ�','��������',to_date('16/04/10 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('960.ī.123','������ ���','������','��������',to_date('21/07/18 00:00','RR/MM/DD HH24:MI'),19,'������','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('961.Ÿ.456','�ϴ��� ����','������','����̵��',to_date('17/09/30 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('962.��.789','������ ����','����ȣ','��������',to_date('20/05/12 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('963.��.012','å�� �Բ��ϴ� �ð�','������','��������',to_date('19/12/03 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('964.��.345','�츮�� ������','���μ�','�Ͻ��丮',to_date('18/08/20 00:00','RR/MM/DD HH24:MI'),16,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('965.��.678','�ٶ� ���� ���','�̽���','���е���',to_date('17/05/15 00:00','RR/MM/DD HH24:MI'),31,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('966.��.901','�� ���� ���','��ٿ�','â��',to_date('22/02/28 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('967.��.234','�ð��� ���� �ϱ�','������','�Ѻ�����',to_date('18/01/10 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('968.��.567','�ູ�� �Ϸ�','������','���̼���',to_date('16/11/29 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('969.��.890','������ �̾߱�','�ڹ̶�','�ѱ�����Ʈ����',to_date('15/07/05 00:00','RR/MM/DD HH24:MI'),24,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('991.��.456','��������� ��ȭ','������','�ѱ����ǻ�',to_date('19/04/28 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('992.��.789','�ູ�� �ϻ��� ���','�ڼ���','�Ҵ�����',to_date('20/11/15 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('993.��.012','���谡�� ����','�迵��','������ǻ�',to_date('18/12/05 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('994.��.345','�ź�ο� ������ �̾߱�','�̰���','���м�ø',to_date('17/09/20 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('995.��.678','���� �̾߱�','�ֹ���','��������',to_date('20/05/30 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('996.��.901','�ڿ� ���� �Ƹ��ٿ�','��μ�','�Ѽֹ�ȭ��',to_date('19/01/15 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('997.��.234','���� ������ ��','������','�ѽ��̵��',to_date('22/03/05 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('998.��.567','�ູ�� ���� ���','�̹ο�','�Ѱܷ�����',to_date('18/10/10 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('900.ī.123','���� ���� ����','���Ѽ�','��������',to_date('21/09/28 00:00','RR/MM/DD HH24:MI'),17,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('901.Ÿ.456','�ູ�� ��ȥ ��Ȱ','�ڼ���','����̵��',to_date('17/11/22 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('902.��.789','��å�� ��ſ�','��ο�','��������',to_date('20/07/15 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('903.��.012','å�� �Բ��ϴ� �ð�','������','��������',to_date('19/12/03 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('904.��.345','�츮�� �ݷ�����','������','�Ͻ��丮',to_date('18/08/20 00:00','RR/MM/DD HH24:MI'),16,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('905.��.678','�ٶ� ���� ���','�̽���','���е���',to_date('17/05/15 00:00','RR/MM/DD HH24:MI'),31,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('906.��.901','�� ���� ����','��ٿ�','â��',to_date('22/02/28 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('907.��.234','�ϱ��� ���� ����','������','�Ѻ�����',to_date('18/01/10 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('908.��.567','�ູ�� �ϻ�','������','���̼���',to_date('16/11/29 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('909.��.890','������ �̾߱�','�ڹ̶�','�ѱ�����Ʈ����',to_date('15/07/05 00:00','RR/MM/DD HH24:MI'),24,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('710.��.123','The Silent Lake','Alice Thompson','Riverhead Books',to_date('21/05/17 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('711.��.456','The Shadow of the Wind','Carlos Ruiz Zaf?n','Penguin Books',to_date('01/07/11 00:00','RR/MM/DD HH24:MI'),31,'������','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('712.��.789','The Great Gatsby','F. Scott Fitzgerald','Scribner',to_date('25/04/10 00:00','RR/MM/DD HH24:MI'),35,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('715.��.678','Pride and Prejudice','Jane Austen','Thomas Egerton',to_date('13/01/28 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('729.��.890','The Catcher in the Rye','J.D. Salinger','Little, Brown and Company',to_date('51/07/16 00:00','RR/MM/DD HH24:MI'),29,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('728.��.567','The Alchemist','Paulo Coelho','Rocco',to_date('88/04/08 00:00','RR/MM/DD HH24:MI'),24,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('725.��.678','The Silent Lake','Alice Thompson','Riverhead Books',to_date('21/05/17 00:00','RR/MM/DD HH24:MI'),26,'������','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('722.��.789','The Great Gatsby','F. Scott Fitzgerald','Scribner',to_date('25/04/10 00:00','RR/MM/DD HH24:MI'),35,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('721.Ÿ.456','Pride and Prejudice','Jane Austen','Thomas Egerton',to_date('13/01/28 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('720.ī.123','The Alchemist','Paulo Coelho','Rocco',to_date('88/04/08 00:00','RR/MM/DD HH24:MI'),24,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('719.��.890','The Catcher in the Rye','J.D. Salinger','Little, Brown and Company',to_date('51/07/16 00:00','RR/MM/DD HH24:MI'),29,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('718.��.567','Brave New World','Aldous Huxley','Chatto and Windus',to_date('32/11/11 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('717.��.234','1984','George Orwell','Secker and Warburg',to_date('49/06/08 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('716.��.901','The Hobbit','J.R.R. Tolkien','George Allen and Unwin',to_date('37/09/21 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('717.��.293','�츮���� �ູ�� �ð�','������','���е���',to_date('07/09/21 00:00','RR/MM/DD HH24:MI'),50,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('181.��.123','�������','��ī��Ʈ','�Ҵ����ǻ�',to_date('12/09/12 00:00','RR/MM/DD HH24:MI'),802,'������','Y','test1','100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('182.��.456','������ ��õ','���̵���','ö������',to_date('15/11/28 00:00','RR/MM/DD HH24:MI'),251,'������','Y','yellow','100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('183.��.789','���� �ؼ�','��������','�������ǻ�',to_date('18/04/15 00:00','RR/MM/DD HH24:MI'),120,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('184.��.012','��ȸ�� �̷�','�跱Ʈ','�й�����',to_date('16/09/05 00:00','RR/MM/DD HH24:MI'),301,'������','N','yellow','100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('185.��.345','�ڿ����� ����','�츣��','���м�����',to_date('19/02/20 00:00','RR/MM/DD HH24:MI'),182,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('186.��.678','��� ������ ����','������','������ǻ�',to_date('17/07/10 00:00','RR/MM/DD HH24:MI'),211,'������','N','test1','100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('187.��.901','�̼�ö��','���','��������',to_date('21/05/30 00:00','RR/MM/DD HH24:MI'),91,'������','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('188.��.234','����� ����','��������','��Ʈ����',to_date('18/12/18 00:00','RR/MM/DD HH24:MI'),151,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('189.��.567','å�� �ι���','�Ƹ���Ʈ�緹��','�ι�����',to_date('14/10/02 00:00','RR/MM/DD HH24:MI'),202,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('190.��.890','ö���� ����','������Ʈ','ö�м���',to_date('16/03/15 00:00','RR/MM/DD HH24:MI'),121,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('100.��.123','�������','��ī��Ʈ','�Ҵ����ǻ�',to_date('12/09/12 00:00','RR/MM/DD HH24:MI'),50,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('200.��.456','ö���� ����','����Ÿ���','ö�����ǻ�',to_date('15/08/23 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('305.��.789','��ȸ�� �̷�','����ũ��','�������ǻ�',to_date('19/05/15 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('400.��.234','�ڿ��� ����','����','�ڿ����ǻ�',to_date('13/11/28 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('505.��.567','��� ����','�׽���','������ǻ�',to_date('20/02/10 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('613.��.890','��� ��Ʈ','��ī��','��Ʈ���ǻ�',to_date('17/07/03 00:00','RR/MM/DD HH24:MI'),40,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('176.��.321','ö���� ����','��ũ���׽�','ö�����ǻ�',to_date('11/05/20 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','Y',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('288.��.654','������ �ɿ�','ĭƮ','�ż������ǻ�',to_date('16/12/07 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('399.��.987','��ȸ�� ����','���ξ�','�������ǻ�',to_date('18/04/18 00:00','RR/MM/DD HH24:MI'),5,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('501.��.123','�ΰ����� ����','�׸���','������ǻ�',to_date('21/01/15 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('625.��.456','�̼� ö��','���̵���','��Ʈ���ǻ�',to_date('15/09/28 00:00','RR/MM/DD HH24:MI'),8,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('732.��.789','�ΰ��� ��ȸ','������','�������ǻ�',to_date('19/11/03 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('874.��.234','ȯ��� ����','���','�ڿ����ǻ�',to_date('14/06/12 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('956.��.567','���α׷��� ����','����','������ǻ�',to_date('17/05/09 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('624.��.890','����ȭ�� ����','��긣','��Ʈ���ǻ�',to_date('20/08/30 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('137.��.321','ö�а� �ΰ�','��ü','ö�����ǻ�',to_date('13/02/17 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','Y',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('228.��.654','������ ����','ĭƮ','�ż������ǻ�',to_date('16/03/08 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('347.��.987','��ȸ�� ����','���ξ�','�������ǻ�',to_date('18/10/22 00:00','RR/MM/DD HH24:MI'),7,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('876.��.123','���� ������','�迵��','��Ʈ���ǻ�',to_date('12/06/25 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('432.��.456','å�� �����','���','�ι�����',to_date('14/04/30 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('555.��.789','�ι����� ����','��ö��','�ι�����',to_date('19/02/14 00:00','RR/MM/DD HH24:MI'),8,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('678.��.234','�����а� ȯ��','�÷θ���','�ڿ����ǻ�',to_date('15/10/05 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('789.��.567','���α׷��� ���','�ڵ帶����','������ǻ�',to_date('18/06/19 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('876.��.890','�̼����� ��� ��','��Ʈ������','��Ʈ���ǻ�',to_date('20/11/12 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('987.��.321','ö�а� ��','������','ö�����ǻ�',to_date('12/03/27 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('654.��.654','���� ö��','��ü','�ż������ǻ�',to_date('16/07/14 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('789.��.987','��ȸ�� ���','���۶�','�������ǻ�',to_date('18/12/01 00:00','RR/MM/DD HH24:MI'),7,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('111.��.234','â�� �ʸ��� ����','������','�Ҵ����ǻ�',to_date('10/07/15 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N','(null)','100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('222.��.567','�Ҹ��� ������','�ڹο�','�ż������ǻ�',to_date('15/09/10 00:00','RR/MM/DD HH24:MI'),14,'���Ⱑ��','N','(null)','200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('333.��.890','����� ����','������','�������ǻ�',to_date('18/03/05 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N','(null)','300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('444.��.234','������ ��Ȥ','�輱��','�ڿ����ǻ�',to_date('13/12/15 00:00','RR/MM/DD HH24:MI'),23,'������','N','(null)','400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('555.��.567','������ �����','������','������ǻ�',to_date('16/04/20 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N','(null)','500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('666.��.890','������ ȯ��','������','��Ʈ���ǻ�',to_date('19/10/30 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N','(null)','600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('777.��.321','���� ����','�����','ö�����ǻ�',to_date('15/07/12 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N','(null)','700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('888.��.654','����� ����','�̿���','�ż������ǻ�',to_date('17/01/28 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N','(null)','800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('999.��.987','ȯ���� ����','������','�������ǻ�',to_date('20/05/10 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N','(null)','900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('101.��.876','����� ��','����ȣ','�Ҵ����ǻ�',to_date('12/10/12 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N','(null)','100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('202.��.123','������ å','ȫ�浿','�ι�����',to_date('12/05/09 00:00','RR/MM/DD HH24:MI'),8,'���Ⱑ��','N','(null)','200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('303.��.456','���� ���� ã��','�̼���','��Ʈ���ǻ�',to_date('14/08/05 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N','(null)','300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('404.��.789','���� ������','�۹���','�������ǻ�',to_date('17/11/22 00:00','RR/MM/DD HH24:MI'),5,'���Ⱑ��','N','(null)','400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('505.��.234','�ູ�� ����','������','�ڿ����ǻ�',to_date('15/02/15 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N','(null)','500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('606.��.567','�̷��� ����','������','������ǻ�',to_date('18/08/12 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N','(null)','600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('707.��.890','���� ���� �̾߱�','������','��Ʈ���ǻ�',to_date('20/03/27 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N','(null)','700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('808.��.321','������ ��','���ȣ','ö�����ǻ�',to_date('13/11/17 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N','(null)','800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('909.��.654','���� ����� ���ϴ� å','������','�ż������ǻ�',to_date('16/06/07 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N','(null)','900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('440.��.789','�������','���߿�','ddit',to_date('23/11/17 00:00','RR/MM/DD HH24:MI'),0,'���Ⱑ��','y',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('111.ö.234','���ν� ����','������','�Ҵ����ǻ�',to_date('14/07/20 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('222.��.567','�ð��� ��','�ڹο�','�ż������ǻ�',to_date('16/12/05 00:00','RR/MM/DD HH24:MI'),14,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('333.��.890','����� ����','����','�������ǻ�',to_date('18/08/15 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('444.��.234','���� ����','�̼���','�ڿ����ǻ�',to_date('15/03/22 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('555.��.567','���� ����','������','������ǻ�',to_date('17/05/10 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('666.��.890','������ ����','���¸�','��Ʈ���ǻ�',to_date('20/10/28 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('777.��.321','��Ÿ�� ����','��ٿ�','ö�����ǻ�',to_date('16/08/17 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('888.��.654','���� �� �ٱ�','�̼���','�ż������ǻ�',to_date('19/04/02 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('999.��.987','������ ����','�迵��','�������ǻ�',to_date('14/11/15 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('101.��.876','ȯ���� �̷�','�̳���','��Ʈ���ǻ�',to_date('17/07/12 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('202.��.123','������ ��','Ȳ����','�ι�����',to_date('13/06/09 00:00','RR/MM/DD HH24:MI'),8,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('303.��.456','�̼����� ���','������','��Ʈ���ǻ�',to_date('16/09/05 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('404.��.789','����� ����','������','�������ǻ�',to_date('18/01/22 00:00','RR/MM/DD HH24:MI'),5,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('505.��.234','�ڿ��� �ź�','������','�ڿ����ǻ�',to_date('15/05/15 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('606.��.567','����� �̷�','������','������ǻ�',to_date('19/12/12 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('707.��.890','��Ʈ�� ����','���̾�','��Ʈ���ǻ�',to_date('21/05/27 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('808.��.321','���� ��','�̹���','ö�����ǻ�',to_date('14/10/17 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('909.��.654','�޻� ������ ����','�̽���','�ż������ǻ�',to_date('16/07/07 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('999.��.999','������','������','������',to_date('99/09/09 00:00','RR/MM/DD HH24:MI'),0,'���Ⱑ��','n',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('111.��.234','���� ��� �̼�','�迵��','�Ҵ����ǻ�',to_date('15/09/22 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('222.��.567','������ ���','�̼���','�ż������ǻ�',to_date('18/02/10 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('333.��.890','�ູ�� �̼�','������','�������ǻ�',to_date('20/05/05 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('444.��.234','���� ���','��â��','�ڿ����ǻ�',to_date('16/04/18 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('555.��.567','���ٸ� ����','�̼���','������ǻ�',to_date('19/11/28 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('666.ĥ.890','�ź�ο� ����','�輱��','��Ʈ���ǻ�',to_date('22/02/15 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('777.��.321','���� ����','�ڹ�ȣ','ö�����ǻ�',to_date('17/09/07 00:00','RR/MM/DD HH24:MI'),14,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('888.��.654','�ϴ��� ����','������','�ż������ǻ�',to_date('20/04/01 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('999.��.987','����� ����','������','�������ǻ�',to_date('15/12/10 00:00','RR/MM/DD HH24:MI'),25,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('101.��.876','�ٴ��� ����','��μ�','��Ʈ���ǻ�',to_date('19/10/15 00:00','RR/MM/DD HH24:MI'),28,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('202.��.123','���� ����','ȫ�浿','�ι�����',to_date('14/03/09 00:00','RR/MM/DD HH24:MI'),8,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('303.õ.456','õ���� �̼�','�չ̷�','��Ʈ���ǻ�',to_date('17/08/25 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('404.��.789','������ ��ȣ��','������','�������ǻ�',to_date('21/02/12 00:00','RR/MM/DD HH24:MI'),5,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('505.ȣ.234','ȣ���� ���','������','�ڿ����ǻ�',to_date('18/06/18 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('606.��.567','�츮�� �̾߱�','������','������ǻ�',to_date('22/04/20 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('707.��.890','�ʳ��� ���','�����','��Ʈ���ǻ�',to_date('20/12/27 00:00','RR/MM/DD HH24:MI'),30,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('808.��.321','�ϻ��� ��','�ڼ���','ö�����ǻ�',to_date('15/10/10 00:00','RR/MM/DD HH24:MI'),14,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('909.��.654','�̾߱��� ����','�Ź̰�','�ż������ǻ�',to_date('19/06/02 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('100.��.111','test1','test2','test3',to_date('23/11/10 00:00','RR/MM/DD HH24:MI'),0,'���Ⱑ��','y',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('121.û.234','û���� �̼�','�̼���','��Ʈ���ǻ�',to_date('16/11/18 00:00','RR/MM/DD HH24:MI'),18,'���Ⱑ��','Y',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('232.��.567','�¾��� �̼�','����ȯ','�ڿ����ǻ�',to_date('18/04/10 00:00','RR/MM/DD HH24:MI'),26,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('343.��.890','����� ���','�̴ټ�','�������ǻ�',to_date('20/07/05 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('454.��.234','������ ��','���ؼ�','��Ʈ���ǻ�',to_date('16/05/18 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('565.ź.567','źȯ�� �̼�','������','�ι�����',to_date('19/12/28 00:00','RR/MM/DD HH24:MI'),12,'���Ⱑ��','N',null,'500','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('676.��.890','�縻�� �̾߱�','������','�ڿ����ǻ�',to_date('22/07/10 00:00','RR/MM/DD HH24:MI'),31,'������','N',null,'600','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('787.��.321','������ ����','������','ö�����ǻ�',to_date('17/11/27 00:00','RR/MM/DD HH24:MI'),14,'���Ⱑ��','N',null,'700','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('898.��.654','�ܿ��� ����','���¿�','�ż������ǻ�',to_date('21/04/02 00:00','RR/MM/DD HH24:MI'),10,'���Ⱑ��','N',null,'800','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('909.��.987','���ο� ����','������','�������ǻ�',to_date('15/01/15 00:00','RR/MM/DD HH24:MI'),20,'���Ⱑ��','N',null,'900','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('121.��.567','�¾��� ����','������','�ڿ����ǻ�',to_date('20/01/05 00:00','RR/MM/DD HH24:MI'),22,'���Ⱑ��','N',null,'100','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('232.��.890','�޻��� �ձ�','��ٿ�','�������ǻ�',to_date('22/04/10 00:00','RR/MM/DD HH24:MI'),15,'���Ⱑ��','N',null,'200','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('343.��.321','������ �ð�','�̽���','ö�����ǻ�',to_date('16/11/20 00:00','RR/MM/DD HH24:MI'),11,'���Ⱑ��','Y',null,'300','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('454.��.654','������ ���','�̹ο�','�ż������ǻ�',to_date('19/06/15 00:00','RR/MM/DD HH24:MI'),27,'������','Y','user001','400','N');
Insert into LIB.BOOK (BOOK_NO,TITLE,AUTHOR,PUBLISHER,PUB_DATE,RENT_COUNT,BOOK_STAT,RECOM_BOOK,RESV_MEM_ID,CATE_NO,BOOK_DEL) values ('409.��.192','���������Ŀ�','��Ҷ�','�������ǻ�',to_date('19/09/12 00:00','RR/MM/DD HH24:MI'),0,'���Ⱑ��','y',null,'400','N');
REM INSERTING into LIB.BOOK_REQUEST
SET DEFINE OFF;
Insert into LIB.BOOK_REQUEST (TITLE,AUTHOR,MEM_ID,PUBLISHER,REQ_ID,REGIST) values ('���� �ڶ��','�����','user001','â��','REQB89323   ','N');
Insert into LIB.BOOK_REQUEST (TITLE,AUTHOR,MEM_ID,PUBLISHER,REQ_ID,REGIST) values ('���� �� ������ ��ƶ� ','��ũ�ϸ�Ʈ','user001','�繮','REQB10928   ','N');
Insert into LIB.BOOK_REQUEST (TITLE,AUTHOR,MEM_ID,PUBLISHER,REQ_ID,REGIST) values ('����','����','test1','����','REQB76009   ','N');
REM INSERTING into LIB.CATEGORY
SET DEFINE OFF;
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('100','ö��');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('200','����');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('300','��ȸ����');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('400','�ڿ�����');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('500','�������');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('600','����');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('700','���');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('800','����');
Insert into LIB.CATEGORY (CATE_NO,CATE_NM) values ('900','����');
REM INSERTING into LIB.CATE_SPEC
SET DEFINE OFF;
REM INSERTING into LIB.EVENT
SET DEFINE OFF;
REM INSERTING into LIB.EVT_APPLY
SET DEFINE OFF;
REM INSERTING into LIB.MEMBER
SET DEFINE OFF;
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('user001','0000','�̼���','010-3333-6666',to_date('23/01/01 00:00','RR/MM/DD HH24:MI'),'N',5);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('user002','1234','�ΰ漱','010-2394-8768',to_date('23/02/15 00:00','RR/MM/DD HH24:MI'),'N',3);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('test1','1111','������','010-1111-2222',to_date('23/11/15 16:04','RR/MM/DD HH24:MI'),'N',4);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('bora0912','0000','Ȳ����','010-9878-0987',to_date('23/12/13 00:00','RR/MM/DD HH24:MI'),'N',5);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('yellow','ye0908','����','010-8234-9657',to_date('23/08/21 00:00','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('yke1029','tjkjcw','���ڼ�','010-0987-0769',to_date('23/09/21 00:00','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfd134','dcbonm','����','010-6578-9879',to_date('23/10/11 00:00','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('cnk1234','0000','����ȫ','010-6579-8679',to_date('23/02/11 00:00','RR/MM/DD HH24:MI'),'N',3);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('boobkj','ipclkj','��ȣ��','010=9879=9870',to_date('23/08/23 00:00','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('xsvas','dbikjl','��ȣ��','010-8762-9123',to_date('23/11/14 15:50','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfvdb','098jgh
','������','010-8768-0012',to_date('23/08/17 15:51','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('qpocj','vjkeiq','�迬��','010-7783-2190',to_date('23/11/19 15:52','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dgkjkw','djkvjo','���ʷ�','010-3765-8769',to_date('22/12/16 15:53','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('vinme','niniql','��ȣ��','010-3772-8788',to_date('23/06/12 15:54','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('vlnqlk','djijqn','������','010-3762-9879',to_date('22/11/25 15:54','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('xknks','vdgqds','��ȿ��','010-8781-5231',to_date('22/11/09 15:55','RR/MM/DD HH24:MI'),'N',2);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('poarkn','vkjil','������','010-2435-9879',to_date('23/09/13 15:55','RR/MM/DD HH24:MI'),'y',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('iuquk','knlblq','��ȣ��','010-8792-0091',to_date('23/05/08 15:56','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('sqolkj','jkjbqw','��ȭ��','010-2321-9801',to_date('23/08/10 15:56','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('imqlk','djkkln','���ҿ�','010-3887-9281',to_date('23/11/12 16:00','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('vdfdg','dfdwq','����ȯ','010-2328-7679',to_date('23/11/05 16:00','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dkjqw12','dkjqd','Ȳ�ҿ�','010-3878-1211',to_date('23/07/12 16:01','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('bkqq11','qoqyjj','������','010-6672-9768',to_date('23/08/10 16:01','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfd2342','eiinw','��ҿ�','010-3311-9482',to_date('23/05/01 16:04','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('vdvvdd','jhjhn','������','010-2231-9879',to_date('23/11/13 16:05','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('sbbf','tdgfjy','���ڰ�','010-3412-7661',to_date('23/08/16 16:05','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('bdhh','jhmukk','������','010-8877-3847',to_date('23/03/14 16:06','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('nthth','poki12','������','010-5464-8790',to_date('23/05/30 16:07','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('ffgvc23','ujthr','����ȯ','010-3211-7689',to_date('23/05/31 16:07','RR/MM/DD HH24:MI'),'y',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('jyjm98','dfde2u','��ٴ�','010-3342-8789',to_date('23/09/19 16:07','RR/MM/DD HH24:MI'),'Y',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('test123','333','�����','010-2222-3333',to_date('23/11/17 09:15','RR/MM/DD HH24:MI'),'N',5);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('qoolnk12','djknn','��ȣ��','010-9385-8768',to_date('23/11/05 10:26','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dbiwkj','dkqppll','������','010-9901-9879',to_date('23/06/12 10:27','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('vv28jk','kjb46g','������','010-7787-8768',to_date('22/11/10 10:27','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('uuak22','dvbfgg','������','010-8879-9887',to_date('23/11/06 10:30','RR/MM/DD HH24:MI'),'n',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('sddsd123','bfgfh','�����','010-8121-9821',to_date('22/11/23 10:30','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('ggdg45','dfdf54','�ɾ���','010-7765-0897',to_date('22/11/09 10:36','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('fhdgs22','hhn98','������','010-9289-1232',to_date('23/06/29 10:36','RR/MM/DD HH24:MI'),'n',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dggf88','ghgn12g','������','010-2984-8879',to_date('23/07/18 10:36','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfvcv24','ngfn45','�����','010-7274-4121',to_date('23/05/18 10:37','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfdoj6','dfdf56','������','010-9872-0897',to_date('22/11/06 10:37','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfd223','fbqxx11','������','010-9212-0201',to_date('23/11/17 10:37','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('nddg89','bthn55','��ȣ��','010-9827-9823',to_date('22/07/15 10:37','RR/MM/DD HH24:MI'),'n',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('fss23','ggfb88','����ȭ','010-2321-0239',to_date('22/11/25 10:37','RR/MM/DD HH24:MI'),'n',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('ffgh89','ffbc44','������','010-2098-0912',to_date('22/11/24 10:37','RR/MM/DD HH24:MI'),'n',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('fnte11','dfos88','��ȭ��','010-9291-0987',to_date('22/06/24 10:37','RR/MM/DD HH24:MI'),'n',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dgfg55','dvdv564','����ȣ','010-0201-0987',to_date('21/11/10 10:38','RR/MM/DD HH24:MI'),'y',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('ghghj88','dwdws1','����ȿ','010-0909-0212',to_date('21/11/12 10:38','RR/MM/DD HH24:MI'),'n',2);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('fgfc11','dfdcd4','�����','010-2031-0012',to_date('21/11/07 10:38','RR/MM/DD HH24:MI'),'y',2);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfdnt21','0000','��û��','010-8765-0291',to_date('21/11/05 10:38','RR/MM/DD HH24:MI'),'n',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('ddnt99','gfgbf7','������','010-2029-8709',to_date('22/11/11 10:38','RR/MM/DD HH24:MI'),'y',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('dfezx11','dffew5','������','010-0293-0912',to_date('22/11/11 10:38','RR/MM/DD HH24:MI'),'y',2);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('fgfj00','sdggg1','�����','010-2210-2091',to_date('23/11/17 10:38','RR/MM/DD HH24:MI'),'y',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('gfbf2','2efdf3','������','010-9810-0912',to_date('22/06/22 10:38','RR/MM/DD HH24:MI'),'y',2);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('test2','0000','������','010-3333-1111',to_date('23/11/17 15:25','RR/MM/DD HH24:MI'),'Y',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('qwer12','0000','ȫ�浿','010-1111-2222',to_date('23/11/20 09:42','RR/MM/DD HH24:MI'),'N',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('oasis','lib1012','�縷����','010-7768-3123',to_date('23/11/20 11:06','RR/MM/DD HH24:MI'),'Y',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('user123','0000','ȫ�浿','010-7777-8888',to_date('23/11/20 11:20','RR/MM/DD HH24:MI'),'N',4);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('qweqwe','1234','ȫ�浿','01011112222',to_date('23/11/20 12:19','RR/MM/DD HH24:MI'),'y',1);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('test22222','1234','����','01077775555',to_date('23/11/20 16:14','RR/MM/DD HH24:MI'),'N',0);
Insert into LIB.MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_TELNO,JOIN_DATE,MEM_DEL,COUNT) values ('user111','0000','������','01077774444',to_date('23/11/20 16:35','RR/MM/DD HH24:MI'),'Y',3);
REM INSERTING into LIB.RENT
SET DEFINE OFF;
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('890.��.123','user001','12345    ',to_date('23/11/01 00:00','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('894.��.345','user002','789456123',to_date('23/11/03 00:00','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('890.��.123','test1','rent12882',to_date('23/11/16 16:02','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('891.��.456','user001','123456789',to_date('23/11/02 00:00','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('915.��.890','test1','rent12345',to_date('23/11/05 00:00','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('897.��.234','test1','rent48584',to_date('23/11/16 18:51','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('964.��.345','test1','rent31894',to_date('23/11/17 12:37','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('904.��.345','test1','rent97806',to_date('23/11/17 12:37','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('189.��.567','test123','rent10222',to_date('23/11/17 18:37','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('185.��.345','test123','rent28542',to_date('23/11/17 18:38','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('955.��.678','test123','rent82294',to_date('23/11/17 18:46','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('965.��.678','test123','rent39446',to_date('23/11/17 18:47','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('190.��.890','test123','rent67566',to_date('23/11/17 18:48','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('454.��.654','test1','rent90336',to_date('23/11/17 19:13','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('454.��.654','test1','rent74929',to_date('23/11/17 19:16','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('899.��.890','test1','rent50852',to_date('23/11/17 19:20','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('916.��.123','test1','rent52623',to_date('23/11/17 20:08','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('894.��.345','test1','rent55783',to_date('23/11/18 16:36','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('892.��.789','test1','rent45789',to_date('23/11/18 16:37','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('181.��.123','test1','rent22620',to_date('23/11/18 16:39','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('184.��.012','user002','rent26782',to_date('23/11/18 16:47','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('182.��.456','user002','rent41587',to_date('23/11/18 16:47','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('186.��.678','user002','rent12597',to_date('23/11/18 16:47','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('188.��.234','user002','rent72102',to_date('23/11/18 16:47','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('189.��.567','user002','rent32909',to_date('23/11/18 16:47','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('185.��.345','test1','rent22465',to_date('23/11/18 17:12','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('711.��.456','test1','rent65168',to_date('23/11/18 17:12','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('454.��.654','qwer12','rent93358',to_date('23/11/20 09:42','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('905.��.678','qwer12','rent86967',to_date('23/11/20 09:43','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('916.��.123','qwer12','rent92306',to_date('23/11/20 09:45','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('892.��.789','cnk1234','rent92925',to_date('23/11/20 10:00','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('176.��.321','user001','rent82982',to_date('23/11/20 11:07','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('176.��.321','user001','rent24268',to_date('23/11/20 11:08','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('454.��.654','user123','rent93244',to_date('23/11/20 11:22','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('343.��.321','user123','rent75689',to_date('23/11/20 11:22','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('918.��.890','yellow','rent88350',to_date('23/11/20 11:22','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('676.��.890','user123','rent79785',to_date('23/11/20 11:23','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('918.��.890','yellow','rent66052',to_date('23/11/20 11:23','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('908.Ÿ.567','user123','rent11812',to_date('23/11/20 11:24','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('725.��.678','yellow','rent39793',to_date('23/11/20 11:39','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('894.��.345','qweqwe','rent91979',to_date('23/11/20 12:20','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('187.��.901','qweqwe','rent65331',to_date('23/11/20 12:21','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('894.��.345','xknks','rent15099',to_date('23/11/20 13:40','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('893.��.012','user001','rent64466',to_date('23/11/20 14:14','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('232.��.567','user001','rent82692',to_date('23/11/20 14:17','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('960.ī.123','test1','rent67004',to_date('23/11/20 14:19','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('909.��.890','user111','rent68637',to_date('23/11/20 16:37','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('895.��.678','user111','rent99296',to_date('23/11/20 16:37','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('232.��.567','user111','rent84229',to_date('23/11/20 16:39','RR/MM/DD HH24:MI'),0);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('232.��.567','user111','rent78287',to_date('23/11/20 16:40','RR/MM/DD HH24:MI'),1);
Insert into LIB.RENT (BOOK_NO,MEM_ID,RENT_NO,RENT_DATE,EXTEN_COUNT) values ('232.��.567','user111','rent34608',to_date('23/11/20 16:40','RR/MM/DD HH24:MI'),0);
REM INSERTING into LIB.RETURN
SET DEFINE OFF;
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('asd1234 ',to_date('23/11/16 00:00','RR/MM/DD HH24:MI'),'rent12882');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret99999',to_date('23/11/16 20:26','RR/MM/DD HH24:MI'),'12345    ');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret49298',to_date('23/11/17 12:38','RR/MM/DD HH24:MI'),'rent31894');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret49302',to_date('23/11/17 12:38','RR/MM/DD HH24:MI'),'rent48584');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret12442',to_date('23/11/17 12:32','RR/MM/DD HH24:MI'),'rent12345');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret86967',to_date('23/11/17 21:51','RR/MM/DD HH24:MI'),'123456789');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret74303',to_date('23/11/18 12:30','RR/MM/DD HH24:MI'),'rent50852');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret95774',to_date('23/11/18 13:08','RR/MM/DD HH24:MI'),'rent52623');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret72815',to_date('23/11/18 13:08','RR/MM/DD HH24:MI'),'rent90336');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret11202',to_date('23/11/18 16:51','RR/MM/DD HH24:MI'),'rent45789');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret53765',to_date('23/11/18 16:51','RR/MM/DD HH24:MI'),'rent74929');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret30020',to_date('23/11/18 16:51','RR/MM/DD HH24:MI'),'rent22620');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret68676',to_date('23/11/18 16:51','RR/MM/DD HH24:MI'),'rent97806');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret36111',to_date('23/11/18 17:03','RR/MM/DD HH24:MI'),'rent55783');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret25774',to_date('23/11/18 17:13','RR/MM/DD HH24:MI'),'rent22465');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret87147',to_date('23/11/20 09:45','RR/MM/DD HH24:MI'),'rent93358');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret82988',to_date('23/11/20 09:46','RR/MM/DD HH24:MI'),'rent86967');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret62362',to_date('23/11/20 09:57','RR/MM/DD HH24:MI'),'rent32909');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret53061',to_date('23/11/20 10:03','RR/MM/DD HH24:MI'),'789456123');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret65726',to_date('23/11/20 10:03','RR/MM/DD HH24:MI'),'rent72102');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret85852',to_date('23/11/20 11:13','RR/MM/DD HH24:MI'),'rent82982');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret27343',to_date('23/11/20 11:26','RR/MM/DD HH24:MI'),'rent75689');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret13249',to_date('23/11/20 11:36','RR/MM/DD HH24:MI'),'rent88350');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret85437',to_date('23/11/20 11:36','RR/MM/DD HH24:MI'),'rent66052');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret31297',to_date('23/11/20 12:25','RR/MM/DD HH24:MI'),'rent91979');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret41347',to_date('23/11/20 14:17','RR/MM/DD HH24:MI'),'rent82692');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret57242',to_date('23/11/20 14:18','RR/MM/DD HH24:MI'),'rent64466');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret79921',to_date('23/11/20 14:18','RR/MM/DD HH24:MI'),'rent24268');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret27496',to_date('23/11/20 16:41','RR/MM/DD HH24:MI'),'rent78287');
Insert into LIB.RETURN (RET_NO,RET_DATE,RENT_NO) values ('ret96631',to_date('23/11/20 16:41','RR/MM/DD HH24:MI'),'rent34608');
REM INSERTING into LIB.ROOM
SET DEFINE OFF;
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('a1','n');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('a2','n');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('a3','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('a4','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('a5','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('b1','n');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('b2','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('b3','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('b4','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('b5','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('c1','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('c2','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('c3','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('c4','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('c5','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('d1','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('d2','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('d3','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('d4','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('d5','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('e1','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('e2','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('e3','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('e4','y');
Insert into LIB.ROOM (SEAT_NO,SEAT_STAT) values ('e5','y');
REM INSERTING into LIB.ROOM_RESV
SET DEFINE OFF;
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('qwer12','a2',to_date('23/11/20 09:50','RR/MM/DD HH24:MI'),'resvR89724',null);
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('user123','a1',to_date('23/11/20 11:28','RR/MM/DD HH24:MI'),'resvR89016',null);
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('test2','b1',to_date('23/11/17 15:25','RR/MM/DD HH24:MI'),'resvR73174',null);
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('test1','a1',to_date('23/11/17 15:38','RR/MM/DD HH24:MI'),'resvR18314',to_date('23/11/20 10:34','RR/MM/DD HH24:MI'));
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('test1','a3',to_date('23/11/20 11:55','RR/MM/DD HH24:MI'),'resvR89056',to_date('23/11/20 11:55','RR/MM/DD HH24:MI'));
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('test1','a3',to_date('23/11/20 11:56','RR/MM/DD HH24:MI'),'resvR26526',to_date('23/11/20 11:58','RR/MM/DD HH24:MI'));
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('test1','a3',to_date('23/11/20 12:00','RR/MM/DD HH24:MI'),'resvR55389',to_date('23/11/20 12:00','RR/MM/DD HH24:MI'));
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('qweqwe','a3',to_date('23/11/20 12:29','RR/MM/DD HH24:MI'),'resvR66760',to_date('23/11/20 12:29','RR/MM/DD HH24:MI'));
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('user111','a2',to_date('23/11/20 16:42','RR/MM/DD HH24:MI'),'resvR87994',null);
Insert into LIB.ROOM_RESV (MEM_ID,SEAT_NO,RESV_TIME,RESV_NO,OUT_TIME) values ('user111','a3',to_date('23/11/20 16:42','RR/MM/DD HH24:MI'),'resvR29023',to_date('23/11/20 16:43','RR/MM/DD HH24:MI'));
--------------------------------------------------------
--  DDL for Index XPK��ȭ���
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK��ȭ���" ON "LIB"."EVENT" ("EVT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPKå
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPKå" ON "LIB"."BOOK" ("BOOK_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK�ݳ�
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK�ݳ�" ON "LIB"."RETURN" ("RET_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EVT_APPLY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."EVT_APPLY_PK" ON "LIB"."EVT_APPLY" ("RESVE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK������
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK������" ON "LIB"."RENT" ("RENT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK��û�������
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK��û�������" ON "LIB"."BOOK_REQUEST" ("REQ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK������
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK������" ON "LIB"."ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPKī�װ�
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPKī�װ�" ON "LIB"."CATEGORY" ("CATE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK������
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK������" ON "LIB"."ROOM" ("SEAT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK������_����
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK������_����" ON "LIB"."ROOM_RESV" ("RESV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK��ī�װ�
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK��ī�װ�" ON "LIB"."CATE_SPEC" ("SPEC_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPKMEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPKMEMBER" ON "LIB"."MEMBER" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK��û�ڸ��
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIB"."XPK��û�ڸ��" ON "LIB"."EVT_APPLY" ("EVT_NO", "MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table EVT_APPLY
--------------------------------------------------------

  ALTER TABLE "LIB"."EVT_APPLY" ADD CONSTRAINT "EVT_APPLY_PK" PRIMARY KEY ("RESVE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."EVT_APPLY" MODIFY ("RESVE_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."EVT_APPLY" MODIFY ("EVT_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."EVT_APPLY" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROOM
--------------------------------------------------------

  ALTER TABLE "LIB"."ROOM" ADD CONSTRAINT "XPK������" PRIMARY KEY ("SEAT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."ROOM" MODIFY ("SEAT_STAT" NOT NULL ENABLE);
  ALTER TABLE "LIB"."ROOM" MODIFY ("SEAT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RENT
--------------------------------------------------------

  ALTER TABLE "LIB"."RENT" ADD CONSTRAINT "XPK������" PRIMARY KEY ("RENT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."RENT" MODIFY ("RENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "LIB"."RENT" MODIFY ("RENT_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."RENT" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "LIB"."RENT" MODIFY ("BOOK_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "LIB"."CATEGORY" ADD CONSTRAINT "XPKī�װ�" PRIMARY KEY ("CATE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."CATEGORY" MODIFY ("CATE_NM" NOT NULL ENABLE);
  ALTER TABLE "LIB"."CATEGORY" MODIFY ("CATE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "LIB"."MEMBER" ADD CONSTRAINT "XPKMEMBER" PRIMARY KEY ("MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."MEMBER" MODIFY ("MEM_DEL" NOT NULL ENABLE);
  ALTER TABLE "LIB"."MEMBER" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "LIB"."MEMBER" MODIFY ("MEM_TELNO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."MEMBER" MODIFY ("MEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "LIB"."MEMBER" MODIFY ("MEM_PW" NOT NULL ENABLE);
  ALTER TABLE "LIB"."MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOK_REQUEST
--------------------------------------------------------

  ALTER TABLE "LIB"."BOOK_REQUEST" ADD CONSTRAINT "XPK��û�������" PRIMARY KEY ("REQ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."BOOK_REQUEST" MODIFY ("REQ_ID" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK_REQUEST" MODIFY ("PUBLISHER" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK_REQUEST" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK_REQUEST" MODIFY ("AUTHOR" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK_REQUEST" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "LIB"."ADMIN" ADD CONSTRAINT "XPK������" PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."ADMIN" MODIFY ("ADMIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "LIB"."ADMIN" MODIFY ("ADMIN_PW" NOT NULL ENABLE);
  ALTER TABLE "LIB"."ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATE_SPEC
--------------------------------------------------------

  ALTER TABLE "LIB"."CATE_SPEC" ADD CONSTRAINT "XPK��ī�װ�" PRIMARY KEY ("SPEC_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."CATE_SPEC" MODIFY ("SPEC_NM" NOT NULL ENABLE);
  ALTER TABLE "LIB"."CATE_SPEC" MODIFY ("SPEC_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROOM_RESV
--------------------------------------------------------

  ALTER TABLE "LIB"."ROOM_RESV" ADD CONSTRAINT "XPK������_����" PRIMARY KEY ("RESV_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."ROOM_RESV" MODIFY ("RESV_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."ROOM_RESV" MODIFY ("RESV_TIME" NOT NULL ENABLE);
  ALTER TABLE "LIB"."ROOM_RESV" MODIFY ("SEAT_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."ROOM_RESV" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "LIB"."BOOK" MODIFY ("BOOK_DEL" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" MODIFY ("RECOM_BOOK" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" MODIFY ("RENT_COUNT" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" ADD CONSTRAINT "XPKå" PRIMARY KEY ("BOOK_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."BOOK" MODIFY ("CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" MODIFY ("PUBLISHER" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" MODIFY ("AUTHOR" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "LIB"."BOOK" MODIFY ("BOOK_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "LIB"."EVENT" ADD CONSTRAINT "XPK��ȭ���" PRIMARY KEY ("EVT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."EVENT" MODIFY ("EVT_TIME" NOT NULL ENABLE);
  ALTER TABLE "LIB"."EVENT" MODIFY ("EVT_NAME" NOT NULL ENABLE);
  ALTER TABLE "LIB"."EVENT" MODIFY ("EVT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RETURN
--------------------------------------------------------

  ALTER TABLE "LIB"."RETURN" ADD CONSTRAINT "XPK�ݳ�" PRIMARY KEY ("RET_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LIB"."RETURN" MODIFY ("RET_DATE" NOT NULL ENABLE);
  ALTER TABLE "LIB"."RETURN" MODIFY ("RET_NO" NOT NULL ENABLE);
  ALTER TABLE "LIB"."RETURN" MODIFY ("RENT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "LIB"."BOOK" ADD CONSTRAINT "R_80" FOREIGN KEY ("CATE_NO")
	  REFERENCES "LIB"."CATEGORY" ("CATE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOK_REQUEST
--------------------------------------------------------

  ALTER TABLE "LIB"."BOOK_REQUEST" ADD CONSTRAINT "R_42" FOREIGN KEY ("MEM_ID")
	  REFERENCES "LIB"."MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVT_APPLY
--------------------------------------------------------

  ALTER TABLE "LIB"."EVT_APPLY" ADD CONSTRAINT "R_66" FOREIGN KEY ("MEM_ID")
	  REFERENCES "LIB"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "LIB"."EVT_APPLY" ADD CONSTRAINT "R_68" FOREIGN KEY ("EVT_NO")
	  REFERENCES "LIB"."EVENT" ("EVT_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RENT
--------------------------------------------------------

  ALTER TABLE "LIB"."RENT" ADD CONSTRAINT "R_11" FOREIGN KEY ("MEM_ID")
	  REFERENCES "LIB"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "LIB"."RENT" ADD CONSTRAINT "R_9" FOREIGN KEY ("BOOK_NO")
	  REFERENCES "LIB"."BOOK" ("BOOK_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RETURN
--------------------------------------------------------

  ALTER TABLE "LIB"."RETURN" ADD CONSTRAINT "RETURN_FK1" FOREIGN KEY ("RENT_NO")
	  REFERENCES "LIB"."RENT" ("RENT_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ROOM_RESV
--------------------------------------------------------

  ALTER TABLE "LIB"."ROOM_RESV" ADD CONSTRAINT "R_63" FOREIGN KEY ("MEM_ID")
	  REFERENCES "LIB"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "LIB"."ROOM_RESV" ADD CONSTRAINT "R_65" FOREIGN KEY ("SEAT_NO")
	  REFERENCES "LIB"."ROOM" ("SEAT_NO") ENABLE;
