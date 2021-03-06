prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Gestor de Activos'
,p_alias=>'GESTOR-DE-ACTIVOS'
,p_step_title=>'Gestor de Activos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200721130459'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30886110811331818035)
,p_plug_name=>'INSERTAR ACTIVO'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30893962519454797527)
,p_plug_name=>'Buscador de Activos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT ID_ACTIVO ID, ACTIVO.* FROM ACTIVO'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Buscador de Activos'
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
 p_id=>wwv_flow_api.id(30893962914308797527)
,p_name=>'Informe 1'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30893962914308797527
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893963044899797528)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893963454374797531)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893963852416797531)
,p_db_column_name=>'ID_COMPRA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Compra'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893964286855797532)
,p_db_column_name=>'REFERENCIA_ACTIVO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Referencia Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893964623346797533)
,p_db_column_name=>'CATEGORIA_ACTIVO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Categoria Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893965043036797533)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893965459347797534)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893965891909797534)
,p_db_column_name=>'VALOR_ACTIVO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Valor Activo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893966336730797535)
,p_db_column_name=>'DEPRECIACION_ACTIVO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Depreciacion Activo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893966769099797535)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893967185770797536)
,p_db_column_name=>'ID_EDIFICIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Id Edificio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893967574756797536)
,p_db_column_name=>'ID_LOCACION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Id Locacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893967969858797537)
,p_db_column_name=>'MATERIAL_ACTIVO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Material Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893968316669797537)
,p_db_column_name=>'COLOR_ACTIVO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Color Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893968746686797538)
,p_db_column_name=>'TAMANO_ACTIVO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Tamano Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893969168333797538)
,p_db_column_name=>'COMPONENTES_ACTIVO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Componentes Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30893163864461686092)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308931639'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ID_ACTIVO:ID_COMPRA:REFERENCIA_ACTIVO:CATEGORIA_ACTIVO:NOMBRE_ACTIVO:MARCA_ACTIVO:VALOR_ACTIVO:DEPRECIACION_ACTIVO:ID_FUNCIONARIO:ID_EDIFICIO:ID_LOCACION:MATERIAL_ACTIVO:COLOR_ACTIVO:TAMANO_ACTIVO:COMPONENTES_ACTIVO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30893970562054797551)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30886112369420818050)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_button_name=>'INSERTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(30893717874043777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'INSERTAR'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886110959249818036)
,p_name=>'AC_COMPR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'ID Compra'
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
 p_id=>wwv_flow_api.id(30886111012956818037)
,p_name=>'AC_REF'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Referencia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111140229818038)
,p_name=>'AC_CAT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT CATEGORIA_ACTIVO AS display_value, CATEGORIA_ACTIVO AS return_value FROM ACTIVO ORDER BY display_value'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAE: Centro de Ayudas Educativas',
unistr('DTS: Sistemas y Tecnolog\00EDa'),
unistr('LAB: Secci\00F3n de Laboratorios'),
unistr('LOG: Log\00EDstica'),
'SGT: Servicios Generales'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111233736818039)
,p_name=>'AC_NOM'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT NOMBRE_ACTIVO as display_value, NOMBRE_ACTIVO as return_value FROM ACTIVO ORDER BY display_value'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111361476818040)
,p_name=>'AC_MAR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT MARCA_ACTIVO AS display_value, MARCA_ACTIVO AS return_value FROM ACTIVO ORDER BY display_value'
,p_cSize=>30
,p_cMaxlength=>25
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111412328818041)
,p_name=>'AC_VAL'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Valor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111577822818042)
,p_name=>'AC_DEP'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>unistr('Depreciaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111655213818043)
,p_name=>'AC_FUN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'ID Funcionario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111706592818044)
,p_name=>'AC_EDI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Edificio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT (NOMBRE_SEDE || '' - '' || NOMBRE_EDIFICIO) AS display_value, ID_EDIFICIO AS return_value FROM EDIFICIO NATURAL JOIN SEDE ORDER BY display_value'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111893654818045)
,p_name=>'AC_LOC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>unistr('Locaci\00F3n')
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT NOMBRE_LOCACION AS display_value, ID_LOCACION AS return_value FROM LOCACION ORDER BY display_value'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886111997261818046)
,p_name=>'AC_MAT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Material'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT MATERIAL_ACTIVO AS display_value, MATERIAL_ACTIVO AS return_value FROM ACTIVO ORDER BY display_value'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886112045004818047)
,p_name=>'AC_COL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Color'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT COLOR_ACTIVO AS display_value, COLOR_ACTIVO AS return_value FROM ACTIVO ORDER BY display_value'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886112168778818048)
,p_name=>'AC_TAM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>unistr('Tama\00F1o')
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT TAMANO_ACTIVO AS display_value, TAMANO_ACTIVO AS return_value FROM ACTIVO ORDER BY display_value'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30886112221678818049)
,p_name=>'AC_COMPO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(30886110811331818035)
,p_prompt=>'Componentes'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'SELECT DISTINCT COMPONENTES_ACTIVO AS display_value, COMPONENTES_ACTIVO AS return_value FROM ACTIVO ORDER BY display_value'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'Ingrese cada componente separado por una coma y un espacio en blanco'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30896106983128028201)
,p_name=>'INSERT STATEMENT'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30886112369420818050)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30896107008026028202)
,p_event_id=>wwv_flow_api.id(30896106983128028201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'INSERT INTO ACTIVO VALUES (9999, TO_NUMBER(:AC_COMPR), :AC_REF, :AC_CAT, :AC_NOM, :AC_MAR, TO_NUMBER(:AC_VAL), TO_NUMBER(:AC_DEP), TO_NUMBER(:AC_FUN), :AC_EDI, TO_NUMBER(:AC_LOC), :AC_MAT, :AC_COL, :AC_TAM, :AC_COMPO);'
,p_attribute_02=>'AC_COMPR,AC_REF,AC_CAT,AC_NOM,AC_MAR,AC_VAL,AC_DEP,AC_FUN,AC_EDI,AC_LOC,AC_MAT,AC_COL,AC_TAM,AC_COMPO'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30957488930917986256)
,p_name=>'Mensaje Insertar Activo'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30886112369420818050)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30957489391386986257)
,p_event_id=>wwv_flow_api.id(30957488930917986256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('alert(''El activo se ha registrado con \00E9xito. Actualiza la p\00E1gina para verlo'');'),
''))
);
wwv_flow_api.component_end;
end;
/
