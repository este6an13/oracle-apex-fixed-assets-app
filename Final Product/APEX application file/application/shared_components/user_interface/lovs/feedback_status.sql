prompt --application/shared_components/user_interface/lovs/feedback_status
begin
--   Manifest
--     FEEDBACK_STATUS
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
 p_id=>wwv_flow_api.id(30893870564965778143)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(30893870564965778143)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30893870865577778143)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Ninguna Acci\00F3n')
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30893871299010778144)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Confirmado'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30893871672041778144)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Abrir'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30893872096672778144)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Cerrado'
,p_lov_return_value=>'4'
);
wwv_flow_api.component_end;
end;
/
