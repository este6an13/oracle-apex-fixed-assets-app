prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Factura'
,p_alias=>'FACTURA'
,p_step_title=>'Factura'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'    var textFile = null,',
'    makeTextFile = function (text) {',
'    var data = new Blob([text], {type: ''text/plain''});',
'    if (textFile !== null) {',
'    window.URL.revokeObjectURL(textFile);}',
'    textFile = window.URL.createObjectURL(data);',
'    return textFile;};',
'    var create = document.getElementById(''create''),',
'    textbox = document.getElementById(''TEST_ID''); ',
'',
'    var link = document.getElementById(''downloadlink'');',
'    link.href =          makeTextFile(textbox.innerHTML.replace(/&amp;/g,"&").trim());',
'    link.style.display = ''block'';',
'})();'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200723150542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31129862899424295545)
,p_plug_name=>'Detalle:'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HTP.p (''<a download="factura.txt" id="downloadlink"  ><b>factura.txt</b></a> <br> <br> <br>'');  ',
'',
'DECLARE',
'    nulo EXCEPTION;',
'BEGIN',
'HTP.p (''<span id="TEST_ID">'');      ',
'      IF :ID_FACT IS NULL THEN',
'          RAISE nulo;',
'      END IF;',
'	  HTP.p(genFactura(TO_NUMBER(:ID_FACT)));',
'      HTP.p (''</span>'');',
'      EXCEPTION',
'      WHEN nulo THEN',
'          RETURN;',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31129863398742295550)
,p_plug_name=>'ID Factura:'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31286929807873593689)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893564999723777859)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(30893501578071777809)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(30893719196765777907)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31129863226143295549)
,p_name=>'ID_FACT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31129863398742295550)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.component_end;
end;
/
