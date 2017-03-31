2.

set serveroutput on;
declare
	doi date;
	dor date;
	dif integer;
	fine integer;
begin
	doi:=to_date('&x', 'DDMMYY');
	dor:=to_date('&y', 'DDMMYY');
	dif:=dor-doi;
	if dif<6 then
		fine:=(0.5*dif);
	elsif dif<11 then
		fine:=(1*dif);
	elsif dif<31 then
		fine:=(5*dif);
	else
		fine:=(10*dif);
	end if;
	dbms_output.put_line(fine);
end;
/

3.
set serveroutput on
declare
	a integer:=0;
	b integer:=1;
	c integer;
	n integer;
begin
	n:=&n;
	dbms_output.put_line(a||' '||b);
	while(b<n)
	loop
		c:=a+b;
		a:=b;
		b:=c;
		dbms_output.put_line(c||' ');
	end loop;
end;
/

4.
set serveroutput on
declare
	n integer;
	d integer;
	m integer;
	rev integer:=0;
begin
	n:=&n;
	d:=n;
	while n>0
	loop
		m:= n mod 10;
		rev:=(rev*10)+m;
		n:=floor(n/10);
	end loop;
	if rev=d then
		dbms_output.put_line('Palindrome');
	else
		dbms_output.put_line('Not a Palindrome');
	end if;
end;
/

5.
set serveroutput on
declare
	given_date date;
	type dt is varray(3) of date;
	d dt;
	i integer:=1;
begin
	d:=dt('20-Jan-1997', '31-March-2017', '10-May-1997');
	while i<3
	loop	
		insert into tbl_next_date values(d(i), d(i)+1);
		i:=i+1;
	end loop;
end;
/