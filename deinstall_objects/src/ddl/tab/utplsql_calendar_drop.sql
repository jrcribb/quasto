PROMPT drop TABLE UTPLSQL_CALENDAR...
declare
  l_count  number;
  l_action varchar2(32767);
begin
  select count(1)
  into l_count
  from user_objects
  where object_type = 'TABLE'
  and object_name = 'UTPLSQL_CALENDAR';
  if l_count > 0
  then
    l_action := 'drop table UTPLSQL_CALENDAR';
    execute immediate l_action;
    dbms_output.put_line('INFO: drop table UTPLSQL_CALENDAR wurde erfolgreich ausgefuehrt.');
  else
    dbms_output.put_line('WARNING: drop TABLE UTPLSQL_CALENDAR wurde schon ausgefuehrt.');
  end if;

  select count(1)
  into l_count
  from user_objects
  where object_type = 'TABLE'
  and object_name = 'UTPLSQL_CALENDAR';
  if l_count > 0
  then
    dbms_output.put_line('ERROR: drop TABLE UTPLSQL_CALENDAR ist fehlgeschlagen.');
  end if;

exception
  when others then
    dbms_output.put_line('ERROR: drop table UTPLSQL_CALENDAR fehlgeschlagen.' || substr(sqlerrm
                                                                                       ,1
                                                                                       ,400));
end;
/

PROMPT drop SEQUENCE CLDR_SEQ...
declare
l_count number;
l_action varchar2(32767);
begin
select count(1) into l_count from user_objects
where object_type = 'SEQUENCE' and object_name = 'CLDR_SEQ';
if l_count > 0 then 
l_action := 'drop sequence CLDR_SEQ';
execute immediate l_action;
dbms_output.put_line('INFO: drop sequence CLDR_SEQ wurde erfolgreich ausgefuehrt.');
else
dbms_output.put_line('WARNING: drop SEQUENCE CLDR_SEQ wurde schon ausgefuehrt.');
end if;

select count(1) into l_count from user_objects
where object_type = 'SEQUENCE' and object_name = 'CLDR_SEQ';
if l_count > 0 then 
dbms_output.put_line('ERROR: drop SEQUENCE CLDR_SEQ ist fehlgeschlagen.');
end if;

exception
when others then
dbms_output.put_line('ERROR: drop sequence CLDR_SEQ fehlgeschlagen.' || substr(SQLERRM, 1, 400));
end;
/