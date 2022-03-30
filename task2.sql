create database musikshop with owner kumova;

create table if not exists Musician ( 
      Id serial primary key,
       nickname varchar(40) not null);

create table if not exists Album (
    Id serial primary key, 
    name varchar(40) not null,
    year_of_releas date,
   musician_id integer references Musician(id)
   );

create table if not exists Track (
         Id serial primary key,
         name varchar(40) not null, 
         time time, 
         album_id integer References Album(id)
   );
    
create table if not exists Genre ( 
     Id serial primary key, 
     name_genre varchar(40) not null,
     musician_id integer References Musician(id)
);  