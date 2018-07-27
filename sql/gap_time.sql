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

insert into users(login_id, password, name, created_at, updated_at) values
("guest", "guest", "ゲスト",  now(), now()),
("a", "a", "あああああ", now(), now()),
("b", "b", "ああああい", now(), now()),
("c", "c", "あああいい", now(), now()),
("d", "d", "ああいいい", now(), now()),
("e", "e", "あいいいい", now(), now()),
("f", "f", "いいいいい", now(), now()),
("g", "g", "あいうえお", now(), now()),
("h", "h", "かきくけこ", now(), now());

update users set introductions = "とら/ポメラニアン /男の子/2016年5月25日生まれ/2歳/4.6キロ/人が大好き！/東京住み/ペット介護士取得" where id = 2;
update users set introductions = "とら/ポメラニアン /男の子/2016年5月25日生まれ/2歳/4.6キロ/人が大好き！/東京住み/ペット介護士取得/とらの日時をつぶやきます！/東京で定期的にポメ会開催中！" where id = 2;


-- ツイート
create table tweets(
	id int primary key not null auto_increment comment "ID",
	user_id int not null comment "ユーザーID",
	content varchar(140) not null comment "内容",
	like_count int not null default 0 comment "いいねの数",
	created_at datetime not null comment "作成日",
	updated_at datetime not null comment "更新日",
	foreign key(user_id) references users(id)
);

insert into tweets values
(1, 2, "content1", 0, now(), now()),
(2, 2, "content2", 0, now(), now()),
(3, 3, "content3", 0, now(), now()),
(4, 3, "content4", 0, now(), now()),
(5, 4, "content5", 0, now(), now()),
(6, 4, "content6", 0, now(), now());

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

insert into follows values
(1, 2, 3, now(), now()),
(2, 2, 4, now(), now()),
(3, 3, 2, now(), now()),
(4, 4, 2, now(), now());
