prompt --application/shared_components/security/authentications/opendoor
begin
--   Manifest
--     AUTHENTICATION: opendoor
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>33657925800256602
,p_default_application_id=>141
,p_default_id_offset=>33662320935301187
,p_default_owner=>'QUASTO'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(48686292485118198)
,p_name=>'opendoor'
,p_scheme_type=>'NATIVE_OPEN_DOOR'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
