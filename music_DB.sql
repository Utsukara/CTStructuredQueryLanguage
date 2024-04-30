create table Album(
id int auto_increment primary key,
title varchar(255) not null,
date DATE not null,
number_of_tracks int not null,
genre_id int not null,
artist_id int not null
);

create table Artist(
id int auto_increment primary key,
name varchar(255) not null,
biography varchar(1000) null,
album_id int not null,
genre_id int not null,
foreign key(album_id) references Album(id)
);

create table Genre(
id int auto_increment primary key,
description varchar(1000) null,
artist_id int not null,
album_id int,
foreign key (artist_id) references Artist(id),
foreign key (album_id) references Album(id)
);

alter table Album
add column duration time not null,
add foreign key (genre_id) references Genre(id),
add foreign key (artist_id) references Artist(id);

alter table Artist
add foreign key (genre_id) references Genre(id),
modify column album_id int,
modify column genre_id int;

alter table Genre
modify column artist_id int;