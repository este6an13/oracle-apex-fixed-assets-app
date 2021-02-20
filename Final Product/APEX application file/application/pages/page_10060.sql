prompt --application/pages/page_10060
begin
--   Manifest
--     PAGE: 10060
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_page(
 p_id=>10060
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Acerca de'
,p_alias=>'HELP'
,p_step_title=>'Acerca de'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(30893746304720777938)
,p_required_patch=>wwv_flow_api.id(30893742447784777931)
,p_help_text=>unistr('Desde esta p\00E1gina se puede acceder a todo el texto de ayuda de la aplicaci\00F3n. Los enlaces de la regi\00F3n "Documentaci\00F3n" ofrecen una explicaci\00F3n mucho m\00E1s detallada de las funciones y la funcionalidad de la aplicaci\00F3n.')
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200721025300'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30893885543499778164)
,p_plug_name=>unistr('Acerca de la P\00E1gina')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(30893543977650777845)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>unistr('El texto sobre esta aplicaci\00F3n se puede colocar aqu\00ED.')
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
