create database BookSwap;
use BookSwap;

select * from users;
select * from books;
select * from  trade_requests;

create table users(
	id				int AUTO_INCREMENT					not null,
	username 		varchar(100) 						not null,
    password_hash 	varchar(100) 						not null,
    email 			varchar(100) 						not null,
    create_at		TIMESTAMP							DEFAULT CURRENT_TIMESTAMP,
	primary key (id)
);

create table books(
	id					int AUTO_INCREMENT			not null,
    user_id 			int 						not null,
    title 				varchar(100)				not null,
    author 				varchar(100)				not null,
    description_book 	varchar(254)				not null,
    condition_book		varchar(254)				not null,
    primary key(id),
    foreign key (user_id) references users(id)
);

create table trade_requests(
	id 						int auto_increment					not null,
    book_id					int									not null,
    requested_by_user_id	int 								not null,
    status_book				varchar(100)						not null,
    created_at				varchar(100)						not null,
    primary key(id),
    foreign key (book_id) references books(id) 
);