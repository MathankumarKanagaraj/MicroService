USE schools;
CREATE TABLE school(
school_id int not null,
school_name varchar(255),
primary key(school_id)
);

insert into school(school_id, school_name)
values(5,"PARK");


--delete from school where school_id=23;

SELECT * FROM school;

CREATE TABLE student(
student_id int not null,
student_name varchar(255),
school_id INT,
student_course varchar(255),
student_fees int,
primary key(student_id),
foreign key (school_id) references school(school_id)
);

alter table student rename column student_fess to student_fees;

insert into student(student_id,student_name,school_id,student_course,student_fees)
values(108,"BABU",5,"PARK",18000);


SELECT * FROM student;


CREATE TABLE tutors(
tutors_id int not null,
tutors_name varchar(255),
tutors_course varchar(255),
school_id INT,
tutors_salory int,
primary key(tutors_id),
foreign key (school_id) references school(school_id)
);

alter table tutors add school_name varchar(255)


update tutors set school_name="FYNDUS" WHERE tutors_id=11
update tutors set school_name="FTS" WHERE tutors_id=12
update tutors set school_name="CIDC" WHERE tutors_id=13
update tutors set school_name="TECH" WHERE tutors_id=10
update tutors set school_name="PARK" WHERE tutors_id=19

insert into tutors(tutors_id,tutors_name,tutors_course,school_id,tutors_salory)
values(19,"jothi","mysal",5,22000);

SELECT * FROM tutors;



CREATE TABLE course(
course_id int not null,
course_name varchar(255),
course_fess int,
COUNT_COURSE_ID INT,
feesid INT,
student_id int,
school_id int,
primary key(course_id),
foreign key (school_id) references school(school_id),
foreign key (student_id) references student(student_id)
);


insert into course(course_id,course_name,course_fess,COUNT_COURSE_ID,feesid,school_id,student_id)
values(8,"chemistry",2800,7,7,3,106);

SELECT * FROM course;


CREATE TABLE count_course(
course_id int not null,

school_id int,
primary key(course_id),
foreign key (school_id) references school(school_id)

);

alter table count_course drop column courset_id;

insert into count_course(course_id,school_id)
values(5,5);

update count_course set course_id=125 where course_id=99

SELECT * FROM count_course;



CREATE TABLE tutorssalory(
salory_paidORnot boolean,
tutor_id int,
foreign key (tutor_id) references tutors(tutors_id)
);
insert into tutorssalory(salory_paidORnot , tutor_id)
values(1,13);

alter table tutorssalory drop column tutor_id;

SELECT * FROM tutorssalory;