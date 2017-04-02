1.
create table log_change_Takes( Time_of_change timestamp, ID VARCHAR(5), 
course_id Varchar(8), sec_id Varchar(8), semester Varchar(6), year Number(4), grade Varchar(2));


create or replace trigger q1
before delete on takes
for each row
begin
	case
		when inserting then
			insert into log_change_takes(current timestamp, :NEW.ID, :NEW.course_id, :NEW.sec_id, :NEW.semester, :NEW.year, :NEW.grade);
	end case;
end;
/
