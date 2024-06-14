-- Создать таблицы реакций и комментариев (на видео)

create table reactions(
	id int primary key auto_increment,
	created_at timestamp,
	video_id int,
	author_id int,
	reaction_type int)

create table comments(
	id int primary key auto_increment,
	created_at timestamp,
	video_id int,
	author_id int,
	reaction_type int,
	content varchar(1000))

-- Добавить несколько записей в каждую таблицу выше
insert into reactions (created_at, video_id, author_id, reaction_type)
values
(current_timestamp(), 4, 1, 4),
(current_timestamp(), 5, 3, 2),
(current_timestamp(), 1, 5, 5)

insert into comments (created_at, video_id, author_id, content)
values
(current_timestamp(), 4, 1, 'I had questions about creating autotests, this video was useful'),
(current_timestamp(), 5, 3, 'Your video displays small details disgustingly'),
(current_timestamp(), 1, 5, 'I would love to learn to dance salsa at the same level')