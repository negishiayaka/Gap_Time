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
	introductions varchar(500) not null default "紹介文" comment "紹介文",
	logined tinyint not null default 0 comment "ログインフラグ",
	created_at datetime not null comment "作成日",
	updated_at datetime not null comment "更新日"
);

insert into users(login_id, password, name, introductions, created_at, updated_at) values
("guest", "guest", "ゲスト", "紹介文", now(), now()),
("guest1", "guest1", "ゲスト1", "紹介文1", now(), now()),
("guest2", "guest2", "ゲスト2", "紹介文2", now(), now());

-- ツイート
create table tweets(
	id int primary key not null auto_increment comment "ID",
	user_id int not null comment "ユーザーID",
	content varchar(255) not null comment "内容",
	like_count int not null default 0 comment "いいねの数",
	created_at datetime not null comment "作成日",
	updated_at datetime not null comment "更新日",
	foreign key(user_id) references users(id)
);

insert into tweets(user_id, content, created_at, updated_at) values
(1, "content1", now(), now()),
(1, "content2", now(), now()),
(2, "content3", now(), now()),
(2, "content4", now(), now()),
(3, "content5", now(), now()),
(3, "content6", now(), now());

-- フォロー
create table follows(
	id int primary key not null auto_increment comment "ID",
	user_id int not null comment "ユーザーID",
	target_user_id int not null comment "フォローするユーザーID",
	created_at datetime not null comment "作成日",
	updated_at datetime not null comment "更新日",
	foreign key(user_id) references users(id),
	foreign key(target_user_id) references users(id)
);

insert into follows(user_id, target_user_id, created_at, updated_at) values
(1, 2, now(), now()),
(1, 3, now(), now()),
(2, 1, now(), now());
