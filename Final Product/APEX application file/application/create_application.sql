prompt --application/create_application
begin
--   Manifest
--     FLOW: 11918
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DIQUINTERO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APPtivos')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APPTIVOS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'4BDA1B32E2B1AC1D9743E8BC98970C910ED643248409EC399E9DC80A0CE760EB'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'es'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('Aplicaci\00F3n creada desde el asistente de creaci\00F3n de aplicaciones 2020.07.21.')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(30893501215250777808)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'APPtivos'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('Versi\00F3n 1.0')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(30893744541282777934)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'APPtivos'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200723162348'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
wwv_flow_api.component_end;
end;
/
