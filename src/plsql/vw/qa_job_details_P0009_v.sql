  CREATE OR REPLACE FORCE EDITIONABLE VIEW "QA_JOB_DETAILS_P0009_V"
  AS 
select START_DATE, LAST_START_DATE, nvl(lpad(to_char(extract(hour from LAST_RUN_DURATION)),2,'0'), '00') || ':' || nvl(lpad(to_char(extract(minute from LAST_RUN_DURATION)),2,'0'), '00') || ':' || nvl(lpad(to_char(floor(extract(second from LAST_RUN_DURATION))),2,'0'), '00') as LAST_RUN_DURATION, NEXT_RUN_DATE, REPEAT_INTERVAL, STATE
from USER_SCHEDULER_JOBS
where job_name = qa_utils_pkg.f_get_constant_string_value('gc_utplsql_scheduler_cronjob_name');