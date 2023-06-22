
                                                                                --((((------HOSPITAL_PROJECT------))))--
                                                                                      
                                                                                        
-----------------------------------(Department)---------------------------------

 create table department 
  ( department_id number(7) not null,
  department_name varchar2(50) primary key ,
  manger_name varchar2(20) not null,
  manger_id number(7) unique not null);
  
  ------
  
  create sequence seq_D 
  start with 101
  increment by 1
  nocache;
  
  ------
  
  create sequence seq_m_id 
  start with 1001
  increment by 1
  nocache;
  
  ------
  
------------------------------(constraint department)---------------------------
  
  Alter table department add constraint uq_dept unique(department_id);
  
--------------------------------------------------------------------------------  
  
  
  insert into department values(seq_D.nextval,'bddk','zead',seq_m_id.nextval);
  
  select * from department;
  
--------------------------------(synonym)---------------------------------------

create synonym D for department ;

---to select query with (H) withot name view----sumarry its nicname for view---

---------------------------(inserted from department)---------------------------

insert into department values(seq_D.nextval,'surgery','zead',seq_m_id.nextval)	;
insert into department values(seq_D.nextval,'Pediatric','salma',seq_m_id.nextval) ;	
insert into department values(seq_D.nextval,'operations','saed',seq_m_id.nextval)	;
insert into department values(seq_D.nextval,'emergency','Royda',seq_m_id.nextval)	;
insert into department values(seq_D.nextval,'Laboratory and blood bank','elpop',seq_m_id.nextval);	
insert into department values(seq_D.nextval,'Infection control','waled',seq_m_id.nextval);	
insert into department values(seq_D.nextval,'heart','ziad',seq_m_id.nextval);	
insert into department values(seq_D.nextval,'nursing','fefe',seq_m_id.nextval);	
insert into department values(seq_D.nextval,'Obstetrics','Gorjena',seq_m_id.nextval);	
insert into department values(seq_D.nextval,'psychological diseases','saad',seq_m_id.nextval);
insert into department values(seq_D.nextval,'Orthopedic','mousa',seq_m_id.nextval);
insert into department values(seq_D.nextval,'hypertension','nour',seq_m_id.nextval);
insert into department values(seq_D.nextval,'pressure','noura',seq_m_id.nextval);
insert into department values(seq_D.nextval,'neurology','faez',seq_m_id.nextval);
insert into department values(seq_D.nextval,'neurosurgery','josef',seq_m_id.nextval);
insert into department values(seq_D.nextval,'Ophthalmology','yousef',seq_m_id.nextval);
insert into department values(seq_D.nextval,'dentist','omar',seq_m_id.nextval);



select * from d;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



 -----------------------------------(Doctors)-----------------------------------

 CREATE TABLE DOCTORS_Delete
  (	ID_D NUMBER(7), 
	NAME_D VARCHAR2(25) NOT NULL, 
	DEPARTMENT_D VARCHAR2(20), 
	NUM_PHONE NUMBER(20) unique,                       ---(1)---
	CLINIC VARCHAR2(40), 
	SALARY NUMBER(10) check(salary>500));
  
  ------
 create sequence seq_D_id 
  start with 3001
  increment by 1
  nocache;
  
  ------

  -------------------------------------(index)------------------------------------
                                                               ---(3)---
  create index  doc_fognk on doctors (department_d);   ---to speet query---
  
  ---------------------------------------(constraint_D)-------------------------
                                                                ---(2)---
  Alter table Doctors add constraint doc_primk primary key(id_d);

 Alter table Doctors add constraint doc_fognk foreign key(DEPARTMENT_D) references department (department_name);
 
 alter table doctors add constraint check_salary check( salary >= 10000 );

 -------------------------------------------------------------------------------

  insert into doctors values(seq_D_id.nextval,,,);


--------------------------------(synonym)---------------------------------------

create synonym Do for doctors ;

---to select query with (H) withot name view----sumarry its nicname for view---

--------------------------------------------------------------------------------
insert into doctors values(seq_D_id.nextval,'ahmed','operations',01126585245,'6st abdelmen3m',15000);
insert into doctors values(seq_D_id.nextval,'aicel','emergency',01258964822,'35st elzo8by',19000);
insert into doctors values(seq_D_id.nextval,'hamdy','heart',01552046369,'4st_tal3at harb',16000);
insert into doctors values(seq_D_id.nextval,'shalaby','surgery',01552698749,'5st_elazhar',12000);
insert into doctors values(seq_D_id.nextval,'ehab','Obstetrics',01658958749,'7st_moharm bek',12000);
insert into doctors values(seq_D_id.nextval,'sharaf','Pediatric',015555958749,'12st_mohammed ali',17000);
insert into doctors values(seq_D_id.nextval,'joo','heart',15542046369,'7st_tal3at harb', 16000);
insert into doctors values(seq_D_id.nextval,'sharf','surgery',15526978749,'8st_elazhar',12000);
insert into doctors values(seq_D_id.nextval,'sharaf','Pediatric',015550958749,'12st_mohammed ali',17000);
insert into doctors values(seq_D_id.nextval,'adel','Pediatric',0157595958749,'12st_mohammed ali' , 17000);
insert into doctors values(seq_D_id.nextval,'bebo',	'operations',1058958749,'44st_moharm bek'	,10000);

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  select * from doctors;
  
------------------------------------(patients)----------------------------------
  
  CREATE TABLE PATIENTS 
   ( ID_P NUMBER(20), 
	NAME_P VARCHAR2(20) NOT NULL, 
	AGE NUMBER(3) not null, 
	INVOICE VARCHAR2(20) NOT NULL ,                        ---(1)---
	NUM_ROOM NUMBER(20,0)not null, 
	S_E_ME VARCHAR2(100) , 
	MONEY NUMBER(20) NOT NULL );
  
    ------
 create sequence seq_P_id 
  start with 5001
  increment by 1
  nocache;
  
  ------
  
-------------------------------------(index)------------------------------------
                                                                ---(3)---
create index  pant_invce_fognk  on PATIENTS (invoice);
create index  pant_fognk on PATIENTS (num_room);          ---to speet query---
  
-------------------------------(constraint patient)-----------------------------
                                                                    ---(2)---    
    Alter table patients add constraint pant_primk primary key(id_p);

    Alter table patients add constraint pant_fognk foreign key(num_room) references rooms (num_r);     
    
    Alter table patients add constraint pant_invce_fognk  foreign key(invoice) references department (department_name);
    
    alter table patients add constraint check_money check ( money >=5000 );

--------------------------------------------------------------------------------
 
 insert into patients values(seq_p_id.nextval,,,); 
 
 
--------------------------------(synonym)---------------------------------------

create synonym P for patients ;

---to select query with (H) withot name view----sumarry its nicname for view---

--------------------------------------------------------------------------------
insert into patients values(seq_p_id.nextval,'ali',	21 ,'heart', 2,	'non',40000); 
insert into patients values(seq_p_id.nextval,'moon',21,'heart',7,	'non'	,150000); 
insert into patients values(seq_p_id.nextval,'marwan',91,'surgery',2,	'non',780000); 
insert into patients values(seq_p_id.nextval,'medhat'	,51,'surgery',6,'non'	,40000); 
insert into patients values(seq_p_id.nextval,'sara',27,'Obstetrics',9,'non',78000); 
insert into patients values(seq_p_id.nextval,'mona',30,	'operations',5,	'non',30000); 
insert into patients values(seq_p_id.nextval,'fathe',41,'Pediatric',4,'non',10000); 
insert into patients values(seq_p_id.nextval,'sophia',61,	'heart',4,'non',5000); 
insert into patients values(seq_p_id.nextval,'nour',71,	'heart' ,6,'non',	20000); 
insert into patients values(seq_p_id.nextval,'marowa',21,'heart',8,'non',450000); 
insert into patients values(seq_p_id.nextval,'nemo',29,'heart',7,	'non',150000); 
 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  select *from patients;
  SELECT * from d;
  delete from department;
  
  
-----------------------------------(medical)------------------------------------
  
   CREATE TABLE MEDICAL 
   (	name_m VARCHAR2(20) NOT NULL,                     --(1)--
	NUM_OF_TIME NUMBER(5,0) NOT NULL , 
	PERMISABLE_AGE NUMBER(3,0) NOT NULL , 
	record_m VARCHAR2(20) NOT NULL , 
	T_DISEASE VARCHAR2(20) NOT NULL , 
	type_m VARCHAR2(20 BYTE) NOT NULL); 
  
------------------------------------(index)-------------------------------------  
                                                          --(3)--
  create index medc_fognk on medical (T_DISEASE);        ---to speet query---
  
--------------------------------(constraint medical)------------------------------------  
                                                                       --(2)--
Alter table medical add constraint medc_primk primary key(TYPE_M);

Alter table medical add constraint medc_fognk foreign key(T_DISEASE) references department (department_name);  
     
     

--------------------------------(synonym)---------------------------------------

create synonym M for medical ;

---to select query with (H) withot name view----sumarry its nicname for view---

--------------------------------------------------------------------------------
insert into medical values ('netromack',2,20,'non','heart'	,'imported_Eng');
insert into medical values ('mjoken',3	,15,'Exhaustion','hypertension','locall');
insert into medical values ('finselen',4,	15,'sleep','Obstetrics','imported_rash');
insert into medical values ('venadon',4,8,'Exhaustion','Orthopedic','imported_chena');
insert into medical values ('vetamen/D',3,15,	'non'	,'Ophthalmology','imported_jaban');
insert into medical values ('vetamen/C',2	,15,'sleep','hypertension','local_eg');
insert into medical values ('concor2.5',3	,35,'Exhaustion','pressure','local_egy');
insert into medical values ('concor',4,	25,'non','pressure','local');
insert into medical values ('concor/5(plus)',4,15,'Exhaustion','pressure','imported_ksa');
insert into medical values ('m_attack',4,15,'Exhaustion','heart','imported_usa');

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


select * from m; 

------------------------------------(nurses)------------------------------------ 

  CREATE TABLE NURSES 
 (	ID_N NUMBER(7) , 
	name_n VARCHAR2(20) NOT NULL , 
	DEPARTMENT_N VARCHAR2(20 ) NOT NULL , 
	ID_P number(7), 
	ID_D number(7)); 
   
    ------                                         --(1)--
 create sequence seq_N_id 
  start with 7001
  increment by 1
  nocache;
  
  ------
  
 
 ----------------------------------(index)-------------------------------------- 
                                                         --(3)--
create index nur_id_p_fognk on nurses (id_d);
create index nur_fognk on nurses (department_n);   ---to speet query---
create index nur_id_d_fognkk on nurses (id_p); 
  
 ---------------------------------(constraint nurses)--------------------------
                                                                    --(2)-- 
Alter table nurses add constraint nur_primk primary key(id_n);

Alter table nurses add constraint nur_fognk foreign key(department_n) references department (department_name);

Alter table nurses add constraint nur_id_p_fognk_unq unique(id_p);

Alter table nurses add constraint nur_id_d_fognk foreign key(id_d) references doctors (id_d);

Alter table nurses add constraint nur_id_p_fognk foreign key(id_p) references patients (id_p);
  
--------------------------------------------------------------------------------
  insert into nurses values(seq_n_id.nextval,,,,);
  
  
  
--------------------------------(synonym)---------------------------------------

create synonym N for nurses ;

---to select query with (H) withot name view----sumarry its nicname for view---

--------------------------------------------------------------------------------
insert into nurses values(seq_n_id.nextval,'jermeen','Obstetrics',5001,3003); 
insert into nurses values(seq_n_id.nextval,'sophee','heart',5002,3006); 
insert into nurses values(seq_n_id.nextval,'jermeen','surgery',5003,3004); 
insert into nurses values(seq_n_id.nextval,'gorgena','emergency',5004,3008); 
insert into nurses values(seq_n_id.nextval,'jermeen','surgery',5005,3005);  
insert into nurses values(seq_n_id.nextval,'jermeen','nursing',5006,3001); 
insert into nurses values(seq_n_id.nextval,'fefe','heart',5007,3009); 
insert into nurses values(seq_n_id.nextval,'mona','heart',5008,3007); 
insert into nurses values(seq_n_id.nextval,'abdallah','nursing',5009,3007); 
insert into nurses values(seq_n_id.nextval,'omar','heart',5010,3003); 
insert into nurses values(seq_n_id.nextval,'yousra','heart',5011,3007); 
      
   select  *from nurses  ;
   select *from patients;
   select *from doctors;
   
    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  
  
  
  
--------------------------------------(report)---------------------------------- 
  
  CREATE  TABLE report
   (ID_P NUMBER(10) not null, 
	ID_D NUMBER(10) NOT NULL , 
	ID_N NUMBER(10) NOT NULL ,                                         --(1)--
	TREATMENT_PERIOD VARCHAR2(20) NOT NULL, 
	ILLNESS VARCHAR2(20 ) NOT NULL );
  
------------------------------------(index)-------------------------------------
                                                            --(3)--
create index rop_id_p_fognk on report (id_p);
create index rop_id_d_fognk on report (id_d);         ----to speed query----
create index rop_id_n_fognk on report (id_n);         
  
--------------------------------(constraint report)-----------------------------
  
Alter table report add constraint rop_primk primary key(id_p);   
--(2)--

Alter table report add constraint rop_id_p_fognk foreign key(id_p) references patients (id_p);




Alter table report add constraint rop_id_d_fognk foreign key(id_d) references doctors (id_d);

Alter table report add constraint rop_id_n_fognk foreign key(id_n) references nurses (id_n);    
---error----


--------------------------------(synonym)---------------------------------------

create synonym R for report ;

---to select query with (H) withot name view----sumarry its nicname for view---

--------------------------------------------------------------------------------
insert into r values(5001,3003,7001,'4m','heart');    
insert into r values(5002,3006,7002,'2w','heart');
insert into r values(5003,3004,7003,'1y','surgery');
insert into r values(5004,3008,7004,'44m','surgery');
insert into r values(5005,3005,7005,'8m','Obstetrics');
insert into r values(5006,3001,7006,'7m','operations');
insert into r values(5007,3009,7007,'7w','pediatric');
insert into r values(5008,3007,7008,'1y','heart');
insert into r values(5009,3007,7009,'1w','heart');          
insert into r values(5010,3003,7010,'46d','heart');
insert into r values(5011,3007,7011,'46d','heart');

select * from r;
select  *from nurses  ;
   select *from patients;
   select *from doctors;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





--------------------------------------(Room)------------------------------------ 
  
 CREATE TABLE ROOMS 
  (	NUM_R NUMBER(10) NOT NULL, 
	FLOOR NUMBER(10) NOT NULL, 
	DEPARTEMENT_R VARCHAR2(20) NOT NULL ,   --(1)--
	TYPE_ROOM VARCHAR2(20) NOT NULL);
  
  
-------

create sequence seq_r_num
start with 1
increment by 1
nocache;

-------
  
 ----------------------------------(index)-------------------------------------- 
  
  create index Rom_fognk on rooms (DEPARTEMENT_R);------to speet query----(3)--- 
  
-------------------------------(constraint Rooms)-------------------------------

  Alter table Rooms add constraint Rom_primk primary key(num_r);  
  --(2)--               
  
  Alter table Rooms add constraint Rom_fognk foreign key(DEPARTEMENT_R) references department (department_name);
  
--------------------------------------------------------------------------------  


--------------------------------(synonym)---------------------------------------

create synonym RO for room ;

---to select query with (H) withot name view----sumarry its nicname for view---

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into rooms values (seq_r_num.nextval,3,'operations','single');
insert into rooms values (seq_r_num.nextval,2,'surgery','single');
insert into rooms values (seq_r_num.nextval,1,'Obstetrics','single');
insert into rooms values (seq_r_num.nextval,4,'heart','double');
insert into rooms values (seq_r_num.nextval,5,'emergency','trible');
insert into rooms values (seq_r_num.nextval,5,'Pediatric','single');
insert into rooms values (seq_r_num.nextval,2,'surgery','single');
insert into rooms values (seq_r_num.nextval,10,'heart','trible');
insert into rooms values (seq_r_num.nextval,7,'heart','single');
insert into rooms values (seq_r_num.nextval,9,'Pediatric','single');


select *from rooms;

delete from rooms;



------------------------------------(view)--------------------------------------

create or replace view hospital_data  as select p.id_p , p.name_p ,do.name_d ,d.department_name ,p.num_room , n.name_n , r.illness , m.name_m , r.treatment_period , p.money

from department d , doctors do , medical m , nurses n , patients p , report r , rooms ro

where d.department_name =do.department_d
and r.id_p = p.id_p 
and p.invoice = d.department_name
and m.t_disease = r.illness

--------------------------------(synonym)---------------------------------------

create synonym HD for hospital_data ;

---to select query with (H) withot name view----sumarry its nicname for view---


--------------------------------------------------------------------------------
                                  --(trigger)--
--------------------------------------------------------------------------------


Create or REPLACE trigger doc_trigger
before 
delete on doctors for each row 

begin

insert into doctors_delete (id_d, name_d, department_d, num_phone, clinic, salary) values (:OLD.id_d,:OLD.name_d,:OLD.Department_d,:OLD.num_phone,:OLD.clinic,:OLD.salary);

end;







--------------------------------------------------------------------------------
------------------------------------------------------------------------------------(FINALY)-----------------------------------------------------------------------------------------------
                                                                              
                                                                           --important to save your cods--
                                                                           
                                                                                    --------------
                                                                                   |               |
            --important to save your cods--                                        |    commit ;   |                                --important to save your cods--
                                                                                   |               | 
                                                                                    -------------- 

                                                                           --important to save your cods--

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------