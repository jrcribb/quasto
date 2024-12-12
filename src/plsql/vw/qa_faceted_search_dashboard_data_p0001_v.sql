
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "QA_FACETED_SEARCH_DASHBOARD_DATA_P0001_V" ("QATR_ID", "QATR_DATE", "QATR_SCHEME_NAME", "QATR_CATEGORY", "QATR_RESULT", "QARU_NAME", "QARU_LAYER", "QARU_ERROR_LEVEL", "QARU_IS_ACTIVE", "QARU_CLIENT_NAME", "QATR_PROGRAM_NAME") 
  AS 
  select c001 qatr_id, to_date(c002,'MM/DD/YYYY') qatr_date, c003 qatr_scheme_name, c004 qatr_category, c005 qatr_result, c006 qaru_name, c007 qaru_layer, c008 qaru_error_level, c009 qaru_is_active, c009 qaru_client_name, c010 qatr_program_name 
from apex_collections 
where collection_name = 'FACETED_SEARCH_DASHBOARD_DATA_P0001';

