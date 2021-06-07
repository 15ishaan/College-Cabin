
drop table if exists USER;

create table USER(
     USER_ID INTEGER AUTO_INCREMENT,
     FIRSTNAME VARCHAR(128) NOT NULL,
     LASTNAME VARCHAR(128),
     USERNAME VARCHAR(128) NOT NULL,
     PASSWORD VARCHAR(128),
     CONFIRMPASSWORD VARCHAR(128),
     ROLES VARCHAR(128),
     COLLEGENAME VARCHAR(128),
     BRANCH VARCHAR(128),
     SEM VARCHAR(128),
     GENDER VARCHAR(128),
     BIO VARCHAR(128),
     BIRTHDATE VARCHAR(128),
     PICBYTE IMAGE,
     ENABLED BOOLEAN,
     BOOKMARKS VARCHAR(128),
     NOOFPOSTS INTEGER,
     AUTHPROVIDER ENUM('LOCAL', 'GOOGLE'),
     OTP INT,
     OTPCREATIONTIME VARCHAR(128)
);

drop table if exists CONFIRMATIONTOKEN;

create table CONFIRMATIONTOKEN(
      TOKENID INTEGER AUTO_INCREMENT,
      CREATEDDATE DATE NOT NULL,
      CONFIRMATIONTOKEN VARCHAR(128) NOT NULL,
      USER_ID INTEGER NOT NULL
);

drop table if exists POSTS;

create table POSTS(
     ID INTEGER AUTO_INCREMENT,
     USERNAME VARCHAR(128),
     COLNAME VARCHAR(128),
     BRANCH VARCHAR(128),
     SEM VARCHAR(128),
     CAPTION VARCHAR(128),
     SUBJECT VARCHAR(128),
     UNIT VARCHAR(128),
     NOOFLIKES INTEGER,
     NOOFCOMMENTS INTEGER,
     FILEBYTE IMAGE,
     FILETYPE VARCHAR(128),
     PICBYTE IMAGE,
     FIRSTNAME VARCHAR(128),
     LASTNAME VARCHAR(128),
     LIKED BOOLEAN,
     BOOKMARKED BOOLEAN
);

drop table if exists COMMENTS;

create table COMMENTS(
      ID INTEGER AUTO_INCREMENT,
      POSTID INTEGER,
      USERNAME VARCHAR(128),
      LIKES VARCHAR(128),
      COMMENTS VARCHAR(128),
      PICBYTE IMAGE,
      FIRSTNAME VARCHAR(128),
      LASTNAME VARCHAR(128)
);

drop table if exists LIKES;

create table LIKES
(
    ID INTEGER AUTO_INCREMENT,
    POSTID INTEGER,
    USERNAME VARCHAR(128),
    LIKED BOOLEAN,
    PICBYTE   IMAGE,
    FIRSTNAME VARCHAR(128),
    LASTNAME  VARCHAR(128)

);

drop table if exists CHATMESSAGE;

create table CHATMESSAGE
(
    ID INTEGER AUTO_INCREMENT,
    CHATID VARCHAR(128),
    SENDERID INTEGER,
    RECEPIENTID INTEGER,
    SENDERNAME VARCHAR(128),
    RECEPIENTNAME VARCHAR(128),
    CONTENT VARCHAR(128),
    TIMESTAMP DATE,
    STATUS ENUM('value_1', 'value_2')
);
