--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."CATEGORIES" 
   (	"ID" NUMBER(10,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY" ON "C##VIDEOTUBE"."CATEGORIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."CATEGORIES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."CATEGORIES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."CATEGORIES" ADD CONSTRAINT "PRIMARY" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."COMMENTS" 
   (	"BODY" CLOB, 
	"DATEPOSTED" DATE DEFAULT SYSDATE, 
	"ID" NUMBER(10,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"POSTEDBY" VARCHAR2(50 CHAR), 
	"RESPONSETO" NUMBER(10,0), 
	"VIDEOID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("BODY") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Index PRIMARY_1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_1" ON "C##VIDEOTUBE"."COMMENTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."COMMENTS" MODIFY ("BODY" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."COMMENTS" MODIFY ("DATEPOSTED" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."COMMENTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."COMMENTS" MODIFY ("POSTEDBY" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."COMMENTS" MODIFY ("VIDEOID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."COMMENTS" ADD CONSTRAINT "PRIMARY_1" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table DISLIKES
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."DISLIKES" 
   (	"COMMENTID" NUMBER(10,0), 
	"ID" NUMBER(10,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USERNAME" VARCHAR2(50 CHAR), 
	"VIDEOID" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY_2
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_2" ON "C##VIDEOTUBE"."DISLIKES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DISLIKES
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."DISLIKES" MODIFY ("COMMENTID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."DISLIKES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."DISLIKES" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."DISLIKES" MODIFY ("VIDEOID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."DISLIKES" ADD CONSTRAINT "PRIMARY_2" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table LIKES
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."LIKES" 
   (	"COMMENTID" NUMBER(10,0), 
	"ID" NUMBER(10,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USERNAME" VARCHAR2(50 CHAR), 
	"VIDEOID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY_7
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_7" ON "C##VIDEOTUBE"."LIKES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table LIKES
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."LIKES" MODIFY ("COMMENTID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."LIKES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."LIKES" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."LIKES" MODIFY ("VIDEOID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."LIKES" ADD CONSTRAINT "PRIMARY_7" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table SUBSCRIBERS
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."SUBSCRIBERS" 
   (	"ID" NUMBER(10,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USERFROM" VARCHAR2(50 CHAR), 
	"USERTO" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY_4
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_4" ON "C##VIDEOTUBE"."SUBSCRIBERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SUBSCRIBERS
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."SUBSCRIBERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."SUBSCRIBERS" MODIFY ("USERFROM" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."SUBSCRIBERS" MODIFY ("USERTO" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."SUBSCRIBERS" ADD CONSTRAINT "PRIMARY_4" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table THUMBNAILS
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."THUMBNAILS" 
   (	"FILEPATH" VARCHAR2(250 CHAR), 
	"ID" NUMBER(10,0), 
	"SELECTED" NUMBER(10,0), 
	"VIDEOID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY_5
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_5" ON "C##VIDEOTUBE"."THUMBNAILS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger THUMBNAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##VIDEOTUBE"."THUMBNAILS_TRG" 
BEFORE INSERT ON THUMBNAILS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT SEQUENCE2.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "C##VIDEOTUBE"."THUMBNAILS_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table THUMBNAILS
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."THUMBNAILS" MODIFY ("FILEPATH" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."THUMBNAILS" MODIFY ("SELECTED" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."THUMBNAILS" MODIFY ("VIDEOID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."THUMBNAILS" ADD CONSTRAINT "PRIMARY_5" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."USERS" 
   (	"EMAIL" VARCHAR2(100 CHAR), 
	"FIRSTNAME" VARCHAR2(25 CHAR), 
	"ID" NUMBER(10,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"LASTNAME" VARCHAR2(25 CHAR), 
	"PASSWORD" VARCHAR2(255 CHAR), 
	"PROFILEPIC" VARCHAR2(255 CHAR), 
	"SIGNUPDATE" DATE DEFAULT SYSDATE, 
	"USERNAME" VARCHAR2(25 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY_6
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_6" ON "C##VIDEOTUBE"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("PROFILEPIC" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("SIGNUPDATE" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."USERS" ADD CONSTRAINT "PRIMARY_6" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table VIDEOS
--------------------------------------------------------

  CREATE TABLE "C##VIDEOTUBE"."VIDEOS" 
   (	"CATEGORY" NUMBER(10,0), 
	"DESCRIPTION" VARCHAR2(1000 CHAR), 
	"DURATION" VARCHAR2(10 CHAR), 
	"FILEPATH" VARCHAR2(250 CHAR), 
	"ID" NUMBER(10,0), 
	"PRIVACY" NUMBER(10,0), 
	"TITLE" VARCHAR2(70 CHAR), 
	"UPLOADDATE" DATE DEFAULT SYSDATE, 
	"UPLOADEDBY" VARCHAR2(50 CHAR), 
	"VIEWS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIMARY_3
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##VIDEOTUBE"."PRIMARY_3" ON "C##VIDEOTUBE"."VIDEOS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger VIDEOS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##VIDEOTUBE"."VIDEOS_TRG" 
BEFORE INSERT ON VIDEOS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT SEQUENCE1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "C##VIDEOTUBE"."VIDEOS_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table VIDEOS
--------------------------------------------------------

  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" MODIFY ("FILEPATH" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" MODIFY ("PRIVACY" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" MODIFY ("UPLOADDATE" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" MODIFY ("UPLOADEDBY" NOT NULL ENABLE);
  ALTER TABLE "C##VIDEOTUBE"."VIDEOS" ADD CONSTRAINT "PRIMARY_3" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;

--------------------------------------------------------
--  DDL for Sequences
--------------------------------------------------------
   
   CREATE SEQUENCE  "C##VIDEOTUBE"."SEQUENCE1"  MINVALUE 200 MAXVALUE 99999999 INCREMENT BY 1 START WITH 220 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
      
   CREATE SEQUENCE  "C##VIDEOTUBE"."SEQUENCE2"  MINVALUE 70 MAXVALUE 9999999 INCREMENT BY 1 START WITH 90 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
   
   CREATE SEQUENCE ISEQ$$_80096 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 0 CACHE 20;
   
   CREATE SEQUENCE ISEQ$$_80099 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 0 CACHE 20;
   
   CREATE SEQUENCE ISEQ$$_80104 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 0 CACHE 20;
   
   CREATE SEQUENCE ISEQ$$_80107 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 0 CACHE 20;
   
   CREATE SEQUENCE ISEQ$$_80110 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 0 CACHE 20;
   
   CREATE SEQUENCE ISEQ$$_80116 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 0 CACHE 20;
   
 --------------------------------------------------------
--  Seeding the data
--------------------------------------------------------
 
 alter session set nls_date_format = 'mm/dd/yyyy hh24:mi:ss';

INSERT ALL
  INTO categories (id, name) VALUES (1, 'Film & Animation')
  INTO categories (id, name) VALUES (2, 'Autos & Vehicles')
  INTO categories (id, name) VALUES (4, 'Pets & Animals')
  INTO categories (id, name) VALUES (5, 'Sports')
  INTO categories (id, name) VALUES (6, 'Travel & Events')
  INTO categories (id, name) VALUES (7, 'Gaming')
SELECT * FROM dual;

INSERT ALL
INTO thumbnails (id, videoId, filePath, selected) VALUES (25, 154, 'uploads/videos/thumbnails/154-5bb0ba5aa936c.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (26, 154, 'uploads/videos/thumbnails/154-5bb0ba5ad39b8.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (27, 154, 'uploads/videos/thumbnails/154-5bb0ba5b1b7a3.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (28, 155, 'uploads/videos/thumbnails/155-5bb7a68e7dccb.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (29, 155, 'uploads/videos/thumbnails/155-5bb7a68e9fa5f.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (30, 155, 'uploads/videos/thumbnails/155-5bb7a68ecb38c.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (31, 156, 'uploads/videos/thumbnails/156-5bba23fbd942d.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (32, 156, 'uploads/videos/thumbnails/156-5bba23fc048bd.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (33, 156, 'uploads/videos/thumbnails/156-5bba23fc30d48.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (34, 157, 'uploads/videos/thumbnails/157-5bba24337107c.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (35, 157, 'uploads/videos/thumbnails/157-5bba243393bec.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (36, 157, 'uploads/videos/thumbnails/157-5bba2433c32f8.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (37, 158, 'uploads/videos/thumbnails/158-5bba245c7fee8.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (38, 158, 'uploads/videos/thumbnails/158-5bba245c9c372.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (39, 158, 'uploads/videos/thumbnails/158-5bba245cbf323.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (40, 159, 'uploads/videos/thumbnails/159-5bba247ebfcc4.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (41, 159, 'uploads/videos/thumbnails/159-5bba247ee4ad9.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (42, 159, 'uploads/videos/thumbnails/159-5bba247f22bfa.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (43, 160, 'uploads/videos/thumbnails/160-5bba2c7c483e6.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (44, 160, 'uploads/videos/thumbnails/160-5bba2c7c77d22.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (45, 160, 'uploads/videos/thumbnails/160-5bba2c7cbc94b.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (46, 161, 'uploads/videos/thumbnails/161-5bba2cb995c1d.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (47, 161, 'uploads/videos/thumbnails/161-5bba2cba21a63.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (48, 161, 'uploads/videos/thumbnails/161-5bba2cbae6700.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (49, 162, 'uploads/videos/thumbnails/162-5bba2cdb87604.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (50, 162, 'uploads/videos/thumbnails/162-5bba2cdbc068a.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (51, 162, 'uploads/videos/thumbnails/162-5bba2cdc29934.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (52, 163, 'uploads/videos/thumbnails/163-5bba2d59ae676.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (53, 163, 'uploads/videos/thumbnails/163-5bba2d59d15fb.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (54, 163, 'uploads/videos/thumbnails/163-5bba2d5a0cd2b.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (55, 164, 'uploads/videos/thumbnails/164-5bba2d7cb0414.jpg', 1),
INTO thumbnails (id, videoId, filePath, selected) VALUES (56, 164, 'uploads/videos/thumbnails/164-5bba2d7ccc263.jpg', 0),
INTO thumbnails (id, videoId, filePath, selected) VALUES (57, 164, 'uploads/videos/thumbnails/164-5bba2d7cf3ce6.jpg', 0);
SELECT * FROM dual;




INSERT ALL
  INTO categories (id, name) VALUES (1, 'Film & Animation')
  INTO categories (id, name) VALUES (2, 'Autos & Vehicles')
  INTO categories (id, name) VALUES (4, 'Pets & Animals')
  INTO categories (id, name) VALUES (5, 'Sports')
  INTO categories (id, name) VALUES (6, 'Travel & Events')
  INTO categories (id, name) VALUES (7, 'Gaming')
SELECT * FROM dual;


INSERT ALL 
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (154, 'reece-kenney', 'This is a car video', 'Here is a video of my car', 1, 'uploads/videos/5bb0ba5665d24.mp4', 2, '2018-09-30 13:58:14', 96, '00:08'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (155, 'mario-sunshine', 'Dog plays in the sand on the beach', 'This is a video of my dog playing in the sand. He\'s awesome!', 1, 'uploads/videos/5bb7a68bd6276.mp4', 4, '2018-10-05 19:59:39', 95, '00:05'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (156, 'reece-kenney', 'Man playing guitar having fun', 'Some guy playing the guitar', 1, 'uploads/videos/5bba23f8e2f8c.mp4', 4, '2018-10-07 17:19:20', 6, '00:10'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (157, 'donkey-kong', 'Woman in front of the computer', '', 1, 'uploads/videos/5bba243098e18.mp4', 14, '2018-10-07 17:20:16', 0, '00:06'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (158, 'donkey-kong', 'Woman walking with phone', 'This is some stock footage I found', 1, 'uploads/videos/5bba245a573a3.mp4', 8, '2018-10-07 17:20:58', 7, '00:04'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (159, 'mike123', 'Ducks! Awesome!', 'Here are some ducks. Enjoy!', 1, 'uploads/videos/5bba247a83798.mp4', 4, '2018-10-07 17:21:30', 0, '00:05'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (160, 'reece-kenney', 'Table tennis with my friends', 'My friends an I playing tennis', 1, 'uploads/videos/5bba2c77ae7d8.mp4', 5, '2018-10-07 17:55:35', 1, '00:09'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (161, 'mickey-mouse', 'Card peeking', 'Playing poker', 1, 'uploads/videos/5bba2ca8896ee.mp4', 7, '2018-10-07 17:56:24', 4, '00:07'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (162, 'mickey-mouse', 'Kid playing ice hockey', 'He\'s awsome', 1, 'uploads/videos/5bba2cd313ebd.mp4', 5, '2018-10-07 17:57:07', 3, '00:13'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (163, 'littlemac', 'Clown fish ', 'Here is a video of a clown fish in water', 1, 'uploads/videos/5bba2d55ee97e.mp4', 4, '2018-10-07 17:59:17', 2, '00:05'),
INTO videos (id, uploadedBy, title, description, privacy, filePath, category, uploadDate, views, duration) VALUES (164, 'mickey-mouse', 'Some funny man swimming', '', 1, 'uploads/videos/5bba2d7a09460.mp4', 15, '2018-10-07 17:59:54', 1, '00:09');
SELECT * FROM dual;
