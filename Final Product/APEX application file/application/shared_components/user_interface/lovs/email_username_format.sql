prompt --application/shared_components/user_interface/lovs/email_username_format
begin
--   Manifest
--     EMAIL_USERNAME_FORMAT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(30893843269484778114)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(30893843269484778114)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30893843547296778114)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Direcciones de correo electr\00F3nico')
,p_lov_return_value=>'EMAIL'
);
wwv_flow_api.component_end;
end;
/
