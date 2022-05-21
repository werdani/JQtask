-- DDL
-- create - alter - drop 
-- 1 track => many students
create table track(
	-- col_name data_type constraint	
	trackID int primary key,
    trackName varchar(20) not null,
    start_date date,
    location varchar(20) default 'Cairo'
);

create table students(
-- 1,2,3
	sid int primary key auto_increment,
    sname varchar(20) not null,
    trackID int,
    foreign key(trackID) references track (trackID)
);



alter table track
add track_supervisor varchar(100) ;

alter table track
drop track_supervisor;

drop table track;


-- DML
-- insert - update -delete

insert into track values (10,'Python','2022-05-18','Alex');
insert into track (trackID,trackName) values (20,'.Net');
insert into track (trackID) values (30);

update track 
set location='Aswan'
where trackID=20;

update track
set start_date='2022-04-14';

delete from track
where trackID=20;


select * from track;

select *
from track;



