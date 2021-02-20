prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Gestor Contable de Activos'
,p_alias=>'GESTOR-CONTABLE-DE-ACTIVOS'
,p_step_title=>'Gestor Contable de Activos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200722032708'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31038696795381803745)
,p_plug_name=>unistr('Informaci\00F3n Contable por Activo')
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
 p_id=>wwv_flow_api.id(31053116063934443332)
,p_plug_name=>unistr('Informaci\00F3n Contable por Activo')
,p_parent_plug_id=>wwv_flow_api.id(31038696795381803745)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_ACTIVO ID, ID_ACTIVO, ID_COMPRA, NOMBRE_ACTIVO, MARCA_ACTIVO, FECHA_COMPRA, DIAS_DESDE_COMPRA(FECHA_COMPRA) DIAS_TRANSCURRIDOS, VALOR_ACTIVO,     ',
'       DEPRECIACION_ACTIVO, VALOR_ACTIVO_HOY(VALOR_ACTIVO, DEPRECIACION_ACTIVO, FECHA_COMPRA) VALOR_ACTIVO_HOY, DEPREC_TRANS(FECHA_COMPRA, DEPRECIACION_ACTIVO) DEPRECIACION_ACUMULADA, ',
'       (VALOR_ACTIVO - VALOR_ACTIVO_HOY(VALOR_ACTIVO, DEPRECIACION_ACTIVO, FECHA_COMPRA)) VALOR_DEPRECIADO',
'FROM ACTIVO NATURAL JOIN COMPRA',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Informaci\00F3n Contable por Activo')
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
 p_id=>wwv_flow_api.id(31053116433637443332)
,p_name=>'Informe 1'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31053116433637443332
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053116589426443333)
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
 p_id=>wwv_flow_api.id(31053116934662443334)
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
 p_id=>wwv_flow_api.id(31053117384192443334)
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
 p_id=>wwv_flow_api.id(31053117780379443334)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053118134285443335)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053118519103443335)
,p_db_column_name=>'FECHA_COMPRA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053118969249443335)
,p_db_column_name=>'DIAS_TRANSCURRIDOS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dias Transcurridos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053119359167443336)
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
 p_id=>wwv_flow_api.id(31053119765458443336)
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
 p_id=>wwv_flow_api.id(31053120182240443337)
,p_db_column_name=>'VALOR_ACTIVO_HOY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Valor Activo Hoy'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053120535427443337)
,p_db_column_name=>'DEPRECIACION_ACUMULADA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Depreciacion Acumulada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053120985070443337)
,p_db_column_name=>'VALOR_DEPRECIADO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Valor Depreciado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31053130643214450199)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310531307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ID_ACTIVO:ID_COMPRA:NOMBRE_ACTIVO:MARCA_ACTIVO:FECHA_COMPRA:DIAS_TRANSCURRIDOS:VALOR_ACTIVO:DEPRECIACION_ACTIVO:VALOR_ACTIVO_HOY:DEPRECIACION_ACUMULADA:VALOR_DEPRECIADO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31038696844043803746)
,p_plug_name=>unistr('Auditor\00EDa de Compras')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('A continuaci\00F3n se presenta el detalle de las compras realizadas en 2020 que han superado el promedio de las compras totales de ese a\00F1o en m\00E1s de 25 millones de pesos ')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31038696963131803747)
,p_plug_name=>unistr('Auditor\00EDa de Compras')
,p_parent_plug_id=>wwv_flow_api.id(31038696844043803746)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT ID_COMPRA, VALOR_COMPRA, FECHA_COMPRA, ID_ACTIVO, REFERENCIA_ACTIVO, NOMBRE_ACTIVO, MARCA_ACTIVO, VALOR_ACTIVO FROM COMPRA NATURAL JOIN ACTIVO WHERE (VALOR_COMPRA - (SELECT AVG(VALOR_COMPRA) FROM COMPRA)) >= 25000000 ORDER BY ID_COMPRA'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Auditor\00EDa de Compras')
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
 p_id=>wwv_flow_api.id(31038697007932803748)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31038697007932803748
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31038697223520803750)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053461023323156801)
,p_db_column_name=>'ID_COMPRA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Id Compra'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053461179333156802)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053461288557156803)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053461362354156804)
,p_db_column_name=>'FECHA_COMPRA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Fecha Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053461565652156806)
,p_db_column_name=>'VALOR_ACTIVO'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Valor Activo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462083386156811)
,p_db_column_name=>'VALOR_COMPRA'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Valor Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462123503156812)
,p_db_column_name=>'REFERENCIA_ACTIVO'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Referencia Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31053876573415509811)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310538766'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ACTIVO:ID_COMPRA:NOMBRE_ACTIVO:MARCA_ACTIVO:FECHA_COMPRA:VALOR_ACTIVO:VALOR_COMPRA:REFERENCIA_ACTIVO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053122232191443349)
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
wwv_flow_api.component_end;
end;
/
