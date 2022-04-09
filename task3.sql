create database musikshop with owner kumova;

create table if not exists Musician ( 
      Id serial primary key,
      nickname varchar(40) not null
      );

create table if not exists Genre ( 
     Id serial primary key, 
     name_genre varchar(40) not null
     ); 

create table if not exists GenreMusician ( 
     Id serial primary key, 
     genre_id integer  References Genre (id),
     musician_id integer references Musician(id)
     ); 


create table if not exists Album (
     Id serial primary key, 
     name varchar(40) not null,
     year_of_releas integer
     );


create table if not exists AlbumMusician ( 
     Id serial primary key, 
     album_id integer  References Album (id),
     musician_id integer references Musician(id)
     ); 

create table if not exists Track (
     Id serial primary key,
     name varchar(40) not null, 
     time integer, 
     album_id integer References Album(id)
     );
    

create table if not exists Collection_of_songs (
     Id serial primary key, 
     name_collection varchar(40) not null,
     year_of_releas integer
    );

create table if not exists Collection_of_songsTrack (
     Id serial primary key,
     track_id integer  References Track (id),
     collection_of_songs_id integer  References Collection_of_songs (id)
     );






