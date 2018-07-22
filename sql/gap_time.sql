set names utf8;
set foreign_key_checks=0;

drop database if exists gap_time;
create database if not exists gap_time;

use gap_time;

-- ユーザー
create table users(
	id int primary key not null auto_increment comment "ID",
	login_id varchar(16) unique not null comment "ログインID",
	password varchar(16) not null comment "パスワード",
	name varchar(100) not null comment "表示名",
	introductions varchar(500) not null default "" comment "紹介文",
	logined tinyint not null default 0 comment "ログインフラグ",
	created_at datetime not null comment "作成日",
	updated_at datetime not null comment "更新日"
);

insert into users values
(1, "a", "a", "aaa", "introductions", 0, now(), now()),
(2, "b", "b", "bbb", "introductions", 0, now(), now()),
(3, "c", "c", "ccc", "introductions", 0, now(), now());

-- ツイート
create table tweets(
	id int primary key not null auto_increment comment "ID",
	user_id int not null comment "ユーザーID",
	message varchar(140) not null comment "メッセージ",
	like_count int not null default 0 comment "いいねの数",
	created_at datetime not null comment "作成日",
	foreign key(user_id) references users(id)
);

insert into tweets values
(1, 1, "message1", 0, now()),
(2, 1, "message2", 0, now()),
(3, 2, "message3", 0, now()),
(4, 2, "message4", 0, now()),
(5, 3, "message5", 0, now()),
(6, 3, "message6", 0, now());
