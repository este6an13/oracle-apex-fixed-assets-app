prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
--   Manifest
--     USER_THEME_PREFERENCE
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
 p_id=>wwv_flow_api.id(30893764975283777981)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_api.id(30893764975283777981)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30893765276280777982)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Permitir a los usuarios finales seleccionar el estilo de tema'
,p_lov_return_value=>'Yes'
);
wwv_flow_api.component_end;
end;
/
