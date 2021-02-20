prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Gestor de Entregas'
,p_alias=>'GESTOR-DE-ENTREGAS'
,p_step_title=>'Gestor de Entregas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200723162348'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30896107134076028203)
,p_plug_name=>'Entregas de Puestos de Trabajo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH R AS (SELECT ID_PROCE, ID_ACTIVO, NOMBRE_ACTIVO, FUNCIONARIO_ENTREGA, NOMBRE_FUNCIONARIO, ID_AREA, NOMBRE_AREA, FECHA_PROCEDIMIENTO, OBSERVACIONES FROM ',
'(SELECT ID_PROCE, ID_ACTIVO, FUNCIONARIO_ENTREGA, OBSERVACIONES, FECHA_PROCEDIMIENTO, TIPO_PROCEDIMIENTO FROM PROCEDIMIENTO WHERE TIPO_PROCEDIMIENTO = ''E'') NATURAL JOIN ',
'(SELECT ID_ACTIVO, NOMBRE_ACTIVO, ID_FUNCIONARIO FROM ACTIVO) NATURAL JOIN',
'(SELECT ID_FUNCIONARIO, NOMBRE_FUNCIONARIO, ID_AREA FROM FUNCIONARIO) NATURAL JOIN ',
'(SELECT ID_AREA, NOMBRE_AREA FROM AREA))',
'',
'SELECT R.*, ID_AUXILIAR, FUNCIONARIO.NOMBRE_FUNCIONARIO NOMBRE_AUXILIAR FROM (R INNER JOIN PROCEDIMIENTO ON R.ID_PROCE = PROCEDIMIENTO.ID_PROCE) INNER JOIN FUNCIONARIO ON ID_AUXILIAR = ID_FUNCIONARIO',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Entregas de Puestos de Trabajo'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(30896107246702028204)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30896107246702028204
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896107355105028205)
,p_db_column_name=>'ID_PROCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Proce'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896107425421028206)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896107696235028208)
,p_db_column_name=>'FUNCIONARIO_ENTREGA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Funcionario Entrega'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896108016783028212)
,p_db_column_name=>'FECHA_PROCEDIMIENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Procedimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896108193545028213)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896108270458028214)
,p_db_column_name=>'ID_AUXILIAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Id Auxiliar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896109408178028226)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896109599994028227)
,p_db_column_name=>'NOMBRE_FUNCIONARIO'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896109660961028228)
,p_db_column_name=>'ID_AREA'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Id Area'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896109762172028229)
,p_db_column_name=>'NOMBRE_AREA'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Nombre Area'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896109830455028230)
,p_db_column_name=>'NOMBRE_AUXILIAR'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Nombre Auxiliar'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30898880252073875477)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308988803'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PROCE:ID_ACTIVO:FUNCIONARIO_ENTREGA:FECHA_PROCEDIMIENTO:OBSERVACIONES:ID_AUXILIAR:NOMBRE_ACTIVO:NOMBRE_FUNCIONARIO:ID_AREA:NOMBRE_AREA:NOMBRE_AUXILIAR'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30896108478673028216)
,p_plug_name=>'INSERTAR ENTREGA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30897714556591071255)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62264251283757285833)
,p_plug_name=>'Generador de Actas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31302785021458700991)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(62264251283757285833)
,p_button_name=>'GENERAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(30893717874043777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::ID_FUNC:&ID_FUN.'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30896108865979028220)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(30896108478673028216)
,p_button_name=>'ENTREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(30893717874043777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ENTREGAR'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30896108527382028217)
,p_name=>'PRO_ACT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30896108478673028216)
,p_prompt=>'ID Activo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30896108650391028218)
,p_name=>'PRO_FUN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30896108478673028216)
,p_prompt=>'ID Funcionario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30896108712610028219)
,p_name=>'PRO_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30896108478673028216)
,p_prompt=>'ID Auxiliar'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT (NOMBRE_FUNCIONARIO || '' - ID: '' || ID_FUNCIONARIO) display_value, ID_FUNCIONARIO return_value FROM FUNCIONARIO WHERE TIPO_AUXILIAR = ''INV'''
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30896109143418028223)
,p_name=>'PRO_OBS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30896108478673028216)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31302785433183700991)
,p_name=>'ID_FUN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(62264251283757285833)
,p_prompt=>'Id Fun'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_inline_help_text=>unistr('Presiona ENTER una vez ingreses el ID de la factura. Luego haz CLIC en el bot\00F3n GENERAR.')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30896108914218028221)
,p_name=>'INSERT ENTREGA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30896108865979028220)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30896109000604028222)
,p_event_id=>wwv_flow_api.id(30896108914218028221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'INSERT INTO PROCEDIMIENTO VALUES (9999, TO_NUMBER(:PRO_ACT), TO_NUMBER(:PRO_AUX), ''E'', SYSDATE, null, :PRO_OBS, TO_NUMBER(:PRO_FUN));'
,p_attribute_02=>'PRO_ACT,PRO_FUN,PRO_AUX,PRO_OBS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30957476304091979710)
,p_name=>'Mensaje Entrega'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30896108865979028220)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30957476733215979712)
,p_event_id=>wwv_flow_api.id(30957476304091979710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('alert(''La entrega se registr\00F3 con \00E9xito. Actualiza la p\00E1gina para consultarla'');'),
''))
);
wwv_flow_api.component_end;
end;
/
