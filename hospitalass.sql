create database Hospital
use Hospital

create table doc(d_id int Primary key , dr_name nvarchar(20), dr_age int, speciality nvarchar(30), dr_mob_no nvarchar(15))
create table bed(b_id int primary key, no_of_days int, room_type nvarchar(10))
create table pat(p_id int Primary key , p_name nvarchar(20),p_age int, problem nvarchar(20), p_mob_no nvarchar(15) )

insert into doc values ( 101, 'Aanchal Sharma',31 ,'Gyneacologist', '9876567890' )
insert into doc values ( 102, ' Dr. Priyank Agarwal',41 ,'Orthopedic Surgeon', '9876195890')
insert into doc values ( 103, ' Dr. Arun Kumar',30 ,'Ophthalmologist', '7396567890')
insert into doc values ( 104, ' Dr. Pranav Gupta',42 ,'dental surgeon', '8430567890')
insert into doc values ( 105, ' Dr. Riya Mahajan',38 ,'Ent Surgeon', '9532867890')


drop table doc

insert into pat values ( 201, 'Shivani',29,'pregnancy','9856349072')
insert into pat values ( 202, 'Shweta',19,'fracture','8956106097')
insert into pat values ( 203, 'Arjit',32, 'Eye problem','8975435101')
insert into pat values ( 204, 'Shivam',29,'tooth worm','9531274173')
insert into pat values ( 205, 'Riya', 27, 'Ear infection','98431896104')

drop table pat

insert into bed values ( 01, 4,'AC')
insert into bed values ( 02, 5,'Non-AC')
insert into bed values ( 03, 2,'Non-AC')
insert into bed values ( 04, 1,'AC')
insert into bed values ( 05, 3,'AC')

drop table bed

create table doc_log(d_id int, opration nvarchar(10), updatedate datetime)
create table pat_log(p_id int, opration nvarchar(10), updatedate datetime)


create procedure sp_doctorlist
as
begin
select d_id, dr_name 
from doc
end 
exec sp_doctorlist


create procedure sp_insertdoctorlist
(
@d_id int , 
@dr_name nvarchar(20),
@dr_age int,
@speciality nvarchar(20), 
@dr_mob_no nvarchar(15)
)
as 
begin
insert into sp_doctorlist(d_id, dr_name, dr_age,speciality, dr_mob_no ) values(@d_id, @dr_name, @dr_age,@speciality,@dr_mob_no)
end

create table doctor_log(d_id int, opration nvarchar(10), updatedate datetime)
create table patient_log(p_id int, opration nvarchar(10), updatedate datetime)

--using trigger for insert
create trigger DoctorInsertTrigger
on doc
for insert
as
insert into doc_log(d_id,opration, updatedate)
select d_id, 'Data Inserted',GETDATE() from inserted

insert into doc values('Aish')
select * from doc_log


-- using trigger for update
create trigger DoctorupdateTrigger
on doc_log
for update
as
insert into doc_log(d_id,opration, updatedate)
select d_id, 'Data Inserted',GETDATE() from deleted

update  doc set dr_name ='Aishwarya' where d_id=103
select * from doc_log



--using trigger for delete:
create trigger PatDeleteTrigger
on pat
after delete
as
insert into pat_log(p_id,opration,updatedate)
select p_id,'Data Deleted',GETDATE() from deleted

delete from pat where p_id=201
select * from pat_log 





