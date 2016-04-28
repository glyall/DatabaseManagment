-- Gregory Lyall
--Question 1 of Lab 10 
create or replace function preRegsFor(int, REFCURSOR) returns refcursor as 
$$
declare
   preRegNum int       := $1;
   resultset REFCURSOR := $2;
begin
   open resultset for 
      select *
      from  Prerequisites
     order by courseNum desc;
   return resultset;
end;
$$ 
language plpgsql;

select preRegsFor(0, 'results');
Fetch all from results;
-- Question 2 of Lab 10
create or replace function IsPreReqsFor(int, REFCURSOR) returns refcursor as
$$
declare
	numberIn int       := $1;
	resultset   REFCURSOR := $2;
begin
	open resultset for
		select preReqNum, courseNum
		from Prerequisites, Courses
		where courseNum = num
		and numberIn = PreReqNum;
	return resultset;
end;
$$
language plpgsql;

select IsPreReqsFor(220, 'results');
Fetch all from results;
