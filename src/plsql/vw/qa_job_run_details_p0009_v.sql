create or replace force view qa_job_run_details_p0009_v as
select job_name
      ,log_date
      ,case when status = 'FAILED' then 'ERROR' else status end as status
      ,error#
      ,errors
      ,nvl(lpad(to_char(extract(hour from run_duration))
          ,2
          ,'0'), '00') || ':' || nvl(lpad(to_char(extract(minute from run_duration))
                                    ,2
                                    ,'0'), '00') || ':' || nvl(lpad(to_char(floor(extract(second from run_duration)))
                                                              ,2
                                                              ,'0'), '00') as run_duration
from user_scheduler_job_run_details
where job_name = qa_utils_pkg.f_get_constant_string_value('gc_utplsql_scheduler_cronjob_name')
order by log_date desc;