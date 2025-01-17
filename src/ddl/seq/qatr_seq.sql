PROMPT create sequence QATR_SEQ for table QA_TEST_RESULTS
declare 
  l_count number;
begin

  select count(1)
    into l_count
    from user_sequences
   where sequence_name = 'QATR_SEQ';

  if l_count = 0
  then
    execute immediate 'create sequence QATR_SEQ start with 1 increment by 1 minvalue 1 maxvalue 9999999999999999999999999999 nocycle noorder nocache';

    select count(1)
      into l_count
      from user_objects
     where object_name = 'QATR_SEQ';

    if l_count = 0
    then
      dbms_output.put_line('ERROR: Creation of sequence QATR_SEQ failed.');
    else
      dbms_output.put_line('INFO: Sequence QATR_SEQ has been created.');
    end if;
  else
    dbms_output.put_line('WARNING: Sequence QATR_SEQ was already created.');
  end if;

exception
  when others then
    dbms_output.put_line('ERROR: Sequence QATR_SEQ could not been created.' || SQLERRM);
end;
/
