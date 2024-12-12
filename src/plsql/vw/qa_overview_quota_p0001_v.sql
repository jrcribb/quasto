
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "QA_OVERVIEW_QUOTA_P0001_V"
  AS 
select qatr_result testcase_status
     , count(1) over (partition by qatr_result) as status_amount
     , case qatr_result
         when 'Failure' then '#c42222'
         when 'Error' then '#7a1616'
         else '#1c6d11'
       end as color_hex
from QA_FACETED_SEARCH_DASHBOARD_DATA_P0001_V
;
/
