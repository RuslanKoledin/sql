create table Visitors(
    id int primary key,
    fullName varchar (100) not null,
    Date_of_Birth varchar(100) not null,
    phone_number varchar(100) unique,
    section_id int not null,
    constraint fk_type_of_section foreign key (section_id) references section(id)
);



create table section(
    id int primary key,
    nameOfSection varchar(50) not null unique
);
insert into section
values
(1,'football'),
(2,'баскетбол'),
(3,'плавание');
insert into Visitors
values
(1,'bob bobson','01.07.2003','7777777',3),
(2,'tom tomson','19.02.2001','0708626629',1),
(3,'sam samson','19.02.2010','0708626',2);
create table trainer
(
    id int primary key,
    full_name varchar(100) not null,
    gender varchar(20) not null,
    section_id int not null ,
    constraint fk_section foreign key (section_id) references section(id)
);
insert into trainer
values
(1,'Алеша тренер','мужик',1);

create table Visits(

    visitor_id int references visitors(id),
    time_visit varchar(100) not null ,
    trainer_id int references trainer(id)
)--посещения
;
insert into Visits
values
(1,'15:00',1);
