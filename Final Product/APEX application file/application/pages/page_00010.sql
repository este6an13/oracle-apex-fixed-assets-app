prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Gestor de Mantenimientos'
,p_alias=>'GESTOR-DE-MANTENIMIENTOS'
,p_step_title=>'Gestor de Mantenimientos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200722212123'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31038696663736803744)
,p_plug_name=>'Activos pendientes de mantenimiento'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31038694749395803725)
,p_plug_name=>'Activos que necesitan Mantenimiento'
,p_parent_plug_id=>wwv_flow_api.id(31038696663736803744)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH c AS (SELECT A.ID_ACTIVO, NOMBRE_ACTIVO, ID_EDIFICIO, ID_LOCACION, MARCA_ACTIVO, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO, ID_AUXILIAR  FROM ACTIVO A INNER JOIN PROCEDIMIENTO P ON A.ID_ACTIVO = P.ID_ACTIVO WHERE ESTADO_RE'
||'VISION = ''M'')',
unistr('SELECT ID_ACTIVO, NOMBRE_ACTIVO, c.ID_EDIFICIO, NOMBRE_LOCACION, MARCA_ACTIVO, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO, c.ID_AUXILIAR AUXILIAR_QUE_REVIS\00D3  FROM c INNER JOIN LOCACION ON c.ID_EDIFICIO = locacion.ID_EDIFICIO AND')
||' c.ID_LOCACION = LOCACION.ID_LOCACION',
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
 p_id=>wwv_flow_api.id(31038694824858803726)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31038694824858803726
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038695026642803728)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038695765509803735)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038695821225803736)
,p_db_column_name=>'ID_EDIFICIO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Id Edificio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038695903093803737)
,p_db_column_name=>'NOMBRE_LOCACION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Nombre Locacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038696062349803738)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038696185358803739)
,p_db_column_name=>'MATERIAL_ACTIVO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Material Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038696207875803740)
,p_db_column_name=>'COLOR_ACTIVO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Color Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038696341104803741)
,p_db_column_name=>'TAMANO_ACTIVO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Tamano Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038696467117803742)
,p_db_column_name=>'COMPONENTES_ACTIVO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Componentes Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038696537125803743)
,p_db_column_name=>unistr('AUXILIAR_QUE_REVIS\00D3')
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>unistr('Auxiliar Que Revis\00F3')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31047954091313913516)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310479541'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_ACTIVO:NOMBRE_ACTIVO:ID_EDIFICIO:NOMBRE_LOCACION:MARCA_ACTIVO:MATERIAL_ACTIVO:COLOR_ACTIVO:TAMANO_ACTIVO:COMPONENTES_ACTIVO:AUXILIAR_QUE_REVIS\00D3')
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92953517310036771788)
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
 p_id=>wwv_flow_api.id(123850079035464475383)
,p_plug_name=>'Revisiones de Estado de Activos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_PROCE, ID_ACTIVO, FECHA_REVISION, ESTADO_ACTIVO ESTADO_POS_MANTENIMIENTO, OBSERVACIONES, ID_AUXILIAR, ID_FUNCIONARIO, NOMBRE_AUXILIAR',
'FROM (SELECT ID_PROCE, ID_ACTIVO, FECHA_PROCEDIMIENTO FECHA_REVISION, ESTADO_REVISION ESTADO_ACTIVO, OBSERVACIONES, ID_AUXILIAR, TIPO_PROCEDIMIENTO FROM PROCEDIMIENTO WHERE TIPO_PROCEDIMIENTO = ''M'') INNER JOIN ',
'(SELECT ID_FUNCIONARIO, NOMBRE_FUNCIONARIO NOMBRE_AUXILIAR FROM FUNCIONARIO)  ON ID_AUXILIAR = ID_FUNCIONARIO'))
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
 p_id=>wwv_flow_api.id(123850079148090475384)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>123850079148090475384
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31042999910712200502)
,p_db_column_name=>'ID_PROCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Proce'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31043000326907200502)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31043000752490200503)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31043001158747200503)
,p_db_column_name=>'ID_AUXILIAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Id Auxiliar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31043001528052200504)
,p_db_column_name=>'NOMBRE_AUXILIAR'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Nombre Auxiliar'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31042999508951200501)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31042998855366200498)
,p_db_column_name=>'FECHA_REVISION'
,p_display_order=>180
,p_column_identifier=>'U'
,p_column_label=>'Fecha Revision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038694623221803724)
,p_db_column_name=>'ESTADO_POS_MANTENIMIENTO'
,p_display_order=>190
,p_column_identifier=>'V'
,p_column_label=>'Estado Pos Mantenimiento'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(123852852153462322657)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310430019'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PROCE:ID_ACTIVO:OBSERVACIONES:ID_AUXILIAR:NOMBRE_AUXILIAR:ID_FUNCIONARIO:FECHA_REVISION:ESTADO_POS_MANTENIMIENTO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123850743446471499898)
,p_plug_name=>'REGISTRAR MANTENIMIENTO'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31043002963021200526)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(123850743446471499898)
,p_button_name=>'REGISTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(30893717874043777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'REGISTRAR'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31043003313839200526)
,p_name=>'MAN_ACT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(123850743446471499898)
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
 p_id=>wwv_flow_api.id(31043003785118200529)
,p_name=>'MAN_AUX'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(123850743446471499898)
,p_prompt=>'ID Auxiliar'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT (NOMBRE_FUNCIONARIO || '' - ID: '' || ID_FUNCIONARIO) display_value, ID_FUNCIONARIO return_value FROM FUNCIONARIO WHERE TIPO_AUXILIAR = ''MAN'''
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
 p_id=>wwv_flow_api.id(31043004127330200529)
,p_name=>'MAN_EST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(123850743446471499898)
,p_prompt=>'Estado del Activo Revisado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Necesita comprarse uno nuevo;R'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>unistr('Deja este espacio en blanco si la reparaci\00F3n fue exitosa')
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31043004524075200529)
,p_name=>'MAN_OBS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(123850743446471499898)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31043006150132200538)
,p_name=>'INSERT_MAN'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31043002963021200526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31043006695968200539)
,p_event_id=>wwv_flow_api.id(31043006150132200538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'INSERT INTO PROCEDIMIENTO VALUES (9999, TO_NUMBER(:MAN_ACT), TO_NUMBER(:MAN_AUX), ''M'', SYSDATE, :MAN_EST, :MAN_OBS, null);'
,p_attribute_02=>'REV_ACT,REV_AUX,REV_EST,REV_OBS,MAN_ACT,MAN_AUX,MAN_EST,MAN_OBS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31043005211636200535)
,p_name=>'Mensaje Mantenimiento'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31043002963021200526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31043005760685200538)
,p_event_id=>wwv_flow_api.id(31043005211636200535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('alert(''Se ha hecho el registro en la base de datos. Actualiza la p\00E1gina para consultarlo'');'),
''))
);
wwv_flow_api.component_end;
end;
/
