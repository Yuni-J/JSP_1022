-- 2024.10.22
-- javaUser / mysql / javadb


-- 게시판(board)
create table board(
 bno int auto_increment,
 title varchar(500) not null,
 writer varchar(100) not null,
 content text,
 regdate datetime default now(),
 moddate datetime default now(),
 primary key(bno));

 -- 2024.10.23
 -- 댓글(comment)
 create table comment(
 cno int auto_increment,
 bno int not null,
 content varchar(2000) not null,
 writer varchar(500) default "unknown",
 regdate datetime default now(),
 primary key(cno));
 
 -- 2024.10.24
 ALTER TABLE board ADD COLUMN readCount INT DEFAULT 0;
 alter table board add imageFile varchar(500);
 