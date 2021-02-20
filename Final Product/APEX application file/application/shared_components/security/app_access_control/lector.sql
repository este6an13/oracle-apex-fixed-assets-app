prompt --application/shared_components/security/app_access_control/lector
begin
--   Manifest
--     ACL ROLE: Lector
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(30893744356269777934)
,p_static_id=>'READER'
,p_name=>'Lector'
,p_description=>'Rol asignado a los lectores de aplicaciones.'
);
wwv_flow_api.component_end;
end;
/
