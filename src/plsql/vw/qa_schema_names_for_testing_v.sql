create or replace force view QA_SCHEMA_NAMES_FOR_TESTING_V AS
SELECT USERNAME
FROM ALL_USERS
WHERE USERNAME NOT IN (-- ORACLE
                       'ANONYMOUS','APPQOSSYS','AUDSYS','AURORA$JIS$UTILITY$','AURORA$ORB$UNAUTHENTICATED','AWR_STAGE'
                       ,'CSMIG','CTXSYS'
                       ,'DBSFWUSER','DBSNMP','DIP','DMSYS','DSSYS','DVF','DVSYS'
                       ,'EXDSYS','EXFSYS'
                       ,'GGSYS','GSMADMIN_INTERNAL','GSMCATUSER','GSMUSER'
                       ,'LBACSYS'
                       ,'MDDATA','MDSYS','MGMT_VIEW','MTSSYS'
                       ,'ODM_MTR','ODM','OJVMSYS','OLAPSYS','ORACLE_OCM','ORDDATA','ORDPLUGINS','ORDSYS','ORMTN_SCHEMA','OSE$HTTP$ADMIN','OUTLN'
                       ,'PDBADMIN','PERFSTAT'
                       ,'REMOTE_SCHEDULER_AGENT'
                       ,'SI_INFORMTN_SCHEMA','SPATIAL_CSW_ADMIN_USR','SPATIAL_CSW_ADMIN','SPATIAL_WFS_ADMIN_USR','SPATIAL_WFS_ADMIN','SYS','SYSBACKUP','SYSDG','SYSKM','SYSMAN','SYSRAC','SYSTEM','SYS$UMF'
                       ,'TRACESVR','TSMSYS'
                       ,'WKPROXY','WKSYS','WMSYS'
                       ,'XDB','XS$NULL','XTISYS'
                       -- APEX
                      ,'APEX_LISTENER','APEX_PUBLIC_USER','APEX_REST_PUBLIC_USER','APEX_180100','APEX_180200','APEX_190100','APEX_190200','APEX_200100','APEX_200200','APEX_210100','APEX_210200','APEX_220100','APEX_220200','FLOWS_FILES'
                       -- ORDS
                      ,'ORDS_METADATA','ORDS_PUBLIC_USER'
;
/