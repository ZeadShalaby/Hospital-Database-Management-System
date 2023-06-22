update t2 set name_='ch' where id_ = 77 ; 

select * FROM t;

select * FROM t2;

insert into t2 values (79,'lj','wnll',4000);

alter table t2 add salary number(20) not null ;
alter table t2 add constraint ch_t2 check(salary > 1000); 


select *from t2 ;


UPDATE T2 SET  salary = 7000 where id_ = 77;

DBMS_OUTPUT.PUT_LINE('old salary : ' );

CREATE OR REPLACE
TRIGGER TRIGGR1
BEFORE UPDATE OF salary ON T2
FOR EACH ROW 
BEGIN

dbms_output.put_line('old salary : ' ||:old.salary );

END;

SET serveroutp of ;

commit ;