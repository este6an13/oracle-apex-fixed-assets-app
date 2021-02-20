prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Procedimientos'
,p_alias=>'PROCEDIMIENTOS'
,p_step_title=>'Procedimientos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200723145314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30897506835501169866)
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
 p_id=>wwv_flow_api.id(30961462767846584806)
,p_plug_name=>'Solicitudes de Compra'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30896110766274028239)
,p_plug_name=>'Solicitudes de Compra'
,p_parent_plug_id=>wwv_flow_api.id(30961462767846584806)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_ACTIVO, REFERENCIA_ACTIVO, ID_COMPRA, FECHA_COMPRA, NOMBRE_ACTIVO, MARCA_ACTIVO, ',
'(TO_CHAR(VALOR_ACTIVO,''$999,999,999.99'') || '' COP'') VALOR_COMPRA, ',
'(TO_CHAR(VALOR_ACTIVO_HOY(VALOR_ACTIVO, DEPRECIACION_ACTIVO, FECHA_COMPRA), ''$999,999,999.99'') || '' COP'') VALOR_DEPRECIADO, ',
'OBSERVACIONES, ID_AUXILIAR, FECHA_PROCEDIMIENTO, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO',
'FROM ACTIVO NATURAL JOIN COMPRA NATURAL JOIN PROCEDIMIENTO  ',
'WHERE ESTADO_REVISION = ''R'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Solicitudes de Compra'
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
 p_id=>wwv_flow_api.id(30896110894182028240)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30896110894182028240
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896110920946028241)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111068393028242)
,p_db_column_name=>'REFERENCIA_ACTIVO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Referencia Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111106002028243)
,p_db_column_name=>'ID_COMPRA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Id Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111291436028244)
,p_db_column_name=>'FECHA_COMPRA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111348406028245)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111447358028246)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111732925028249)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30896111847902028250)
,p_db_column_name=>'ID_AUXILIAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Id Auxiliar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961462202535584801)
,p_db_column_name=>'FECHA_PROCEDIMIENTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Procedimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961462324946584802)
,p_db_column_name=>'MATERIAL_ACTIVO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Material Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961462402769584803)
,p_db_column_name=>'COLOR_ACTIVO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Color Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961462554306584804)
,p_db_column_name=>'TAMANO_ACTIVO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tamano Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961462615357584805)
,p_db_column_name=>'COMPONENTES_ACTIVO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Componentes Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961462819189584807)
,p_db_column_name=>'VALOR_COMPRA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Valor Compra'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961463055094584809)
,p_db_column_name=>'VALOR_DEPRECIADO'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Valor Depreciado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30962307183119127845)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'309623072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ACTIVO:REFERENCIA_ACTIVO:ID_COMPRA:FECHA_COMPRA:NOMBRE_ACTIVO:MARCA_ACTIVO:OBSERVACIONES:ID_AUXILIAR:FECHA_PROCEDIMIENTO:MATERIAL_ACTIVO:COLOR_ACTIVO:TAMANO_ACTIVO:COMPONENTES_ACTIVO:VALOR_COMPRA:VALOR_DEPRECIADO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961464252495584821)
,p_plug_name=>'Compras Realizadas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961463161500584810)
,p_plug_name=>'Compras Realizadas'
,p_parent_plug_id=>wwv_flow_api.id(30961464252495584821)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(SUBSTR(TO_CHAR(id_compra),5, 3)) cod_compra, ',
unistr('       TO_CHAR(fecha_compra, ''yyyy'') a\00F1o_compra, '),
'       TO_CHAR(fecha_compra, ''Month'') mes_compra, ',
'       TO_CHAR(fecha_compra, ''dd'') dia_compra,   ',
'       (TO_CHAR(VALOR_COMPRA,''$999,999,999.99'') || '' COP'') VALOR ',
'FROM COMPRA'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Compras Realizadas'
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
 p_id=>wwv_flow_api.id(30961463220132584811)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30961463220132584811
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961463705470584816)
,p_db_column_name=>'COD_COMPRA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961463868444584817)
,p_db_column_name=>unistr('A\00D1O_COMPRA')
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('A\00F1o Compra')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961463990891584818)
,p_db_column_name=>'MES_COMPRA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Mes Compra'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961464077398584819)
,p_db_column_name=>'DIA_COMPRA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dia Compra'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961464462911584823)
,p_db_column_name=>'VALOR'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Valor'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30965274930028256636)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'309652750'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('COD_COMPRA:A\00D1O_COMPRA:MES_COMPRA:DIA_COMPRA:VALOR')
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961464520943584824)
,p_plug_name=>unistr('Avance en Puestos Entregados Por \00C1rea')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961465174398584830)
,p_plug_name=>unistr('Tabla de Porcentaje de Entregas Por \00C1rea')
,p_parent_plug_id=>wwv_flow_api.id(30961464520943584824)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH puestos_asignados AS ',
'    (SELECT ID_AREA, COUNT(ID_AREA) PUESTOS_ASIGNADOS ',
'     FROM (SELECT ID_FUNCIONARIO FROM ACTIVO WHERE ID_FUNCIONARIO IS NOT NULL GROUP BY ID_FUNCIONARIO) ',
'    NATURAL JOIN FUNCIONARIO WHERE ID_AREA IS NOT NULL GROUP BY ID_AREA), ',
'    empleados_por_cargo AS',
'    (SELECT ID_AREA, COUNT(*) EMPLEADOS_EXISTENTES ',
'    FROM FUNCIONARIO WHERE ID_AREA IS NOT NULL GROUP BY ID_AREA)',
'SELECT puestos_asignados.ID_AREA, ',
'       AREA.NOMBRE_AREA,',
'       PUESTOS_ASIGNADOS, ',
'       EMPLEADOS_EXISTENTES, ',
'      ROUND((PUESTOS_ASIGNADOS*100)/EMPLEADOS_EXISTENTES, 2)  PORCENTAJE_ASIGNADO ',
'FROM (puestos_asignados INNER JOIN empleados_por_cargo ',
'     ON puestos_asignados.ID_AREA = empleados_por_cargo.ID_AREA) INNER JOIN AREA ON puestos_asignados.ID_AREA = AREA.ID_AREA',
'ORDER BY PORCENTAJE_ASIGNADO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Tabla de Porcentaje de Entregas Por \00C1rea')
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
 p_id=>wwv_flow_api.id(30961465242270584831)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30961465242270584831
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961465325102584832)
,p_db_column_name=>'ID_AREA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Area'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961465479925584833)
,p_db_column_name=>'NOMBRE_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Area'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961465506374584834)
,p_db_column_name=>'PUESTOS_ASIGNADOS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Puestos Asignados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961465614727584835)
,p_db_column_name=>'EMPLEADOS_EXISTENTES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Empleados Existentes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961465722246584836)
,p_db_column_name=>'PORCENTAJE_ASIGNADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Porcentaje Asignado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30969977276856377317)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'309699773'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_AREA:NOMBRE_AREA:PUESTOS_ASIGNADOS:EMPLEADOS_EXISTENTES:PORCENTAJE_ASIGNADO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961464627364584825)
,p_plug_name=>unistr('Porcentaje de Entregas \00C1rea')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(30961464739400584826)
,p_region_id=>wwv_flow_api.id(30961464627364584825)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(30961464824827584827)
,p_chart_id=>wwv_flow_api.id(30961464739400584826)
,p_seq=>10
,p_name=>'Nuevo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH puestos_asignados AS ',
'    (SELECT ID_AREA, COUNT(ID_AREA) PUESTOS_ASIGNADOS ',
'     FROM (SELECT ID_FUNCIONARIO FROM ACTIVO WHERE ID_FUNCIONARIO IS NOT NULL GROUP BY ID_FUNCIONARIO) ',
'    NATURAL JOIN FUNCIONARIO WHERE ID_AREA IS NOT NULL GROUP BY ID_AREA), ',
'    empleados_por_cargo AS',
'    (SELECT ID_AREA, COUNT(*) EMPLEADOS_EXISTENTES ',
'    FROM FUNCIONARIO WHERE ID_AREA IS NOT NULL GROUP BY ID_AREA)',
'SELECT puestos_asignados.ID_AREA, ',
'       AREA.NOMBRE_AREA,',
'       PUESTOS_ASIGNADOS, ',
'       EMPLEADOS_EXISTENTES, ',
'      ROUND((PUESTOS_ASIGNADOS*100)/EMPLEADOS_EXISTENTES, 2)  PORCENTAJE_ASIGNADO ',
'FROM (puestos_asignados INNER JOIN empleados_por_cargo ',
'     ON puestos_asignados.ID_AREA = empleados_por_cargo.ID_AREA) INNER JOIN AREA ON puestos_asignados.ID_AREA = AREA.ID_AREA',
'ORDER BY PORCENTAJE_ASIGNADO',
''))
,p_items_value_column_name=>'PORCENTAJE_ASIGNADO'
,p_items_label_column_name=>'ID_AREA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30961464966534584828)
,p_chart_id=>wwv_flow_api.id(30961464739400584826)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(30961465013221584829)
,p_chart_id=>wwv_flow_api.id(30961464739400584826)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961465862104584837)
,p_plug_name=>'Irregularidades en Compras'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La siguiente tabla muestra las inconsistencias que puedan existir entre el valor total de los activos que pertenecen a cierta compra y el valor total de la compra.',
'',
'Un valor negativo significa que la suma total de los activos registrados con una factura supera el monto registrado en la factura.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961465909304584838)
,p_plug_name=>'Tabla de Irregularidades'
,p_parent_plug_id=>wwv_flow_api.id(30961465862104584837)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH sumas AS (SELECT ID_COMPRA, SUM(VALOR_ACTIVO) SUMA FROM ACTIVO GROUP BY ID_COMPRA)',
'SELECT sumas.ID_COMPRA, (TO_CHAR(SUMA, ''$999,999,999.00'') || '' COP'') SUMA_ACTIVOS, (TO_CHAR(COM.VALOR_COMPRA, ''$999,999,999.00'') || '' COP'') VALOR_COMPRA, (TO_CHAR(((SELECT VALOR_COMPRA FROM COMPRA C WHERE C.ID_COMPRA = sumas.ID_COMPRA)-SUMA), ''$999,9'
||'99,999.00'') || '' COP'') DESFASE ',
'FROM sumas INNER JOIN COMPRA COM ON sumas.ID_COMPRA = COM.ID_COMPRA',
'WHERE SUMA < (SELECT VALOR_COMPRA FROM COMPRA WHERE ID_COMPRA = sumas.ID_COMPRA) OR SUMA > (SELECT VALOR_COMPRA FROM COMPRA WHERE ID_COMPRA = sumas.ID_COMPRA)',
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
,p_prn_page_header=>'Tabla de Irregularidades'
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
 p_id=>wwv_flow_api.id(30961466092781584839)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30961466092781584839
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961466154607584840)
,p_db_column_name=>'ID_COMPRA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961466279116584841)
,p_db_column_name=>'SUMA_ACTIVOS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Suma Activos'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961466384748584842)
,p_db_column_name=>'VALOR_COMPRA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Valor Compra'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30961466442706584843)
,p_db_column_name=>'DESFASE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desfase'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30977665845131720668)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'309776659'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_COMPRA:SUMA_ACTIVOS:VALOR_COMPRA:DESFASE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30961466511559584844)
,p_plug_name=>'Generador de Facturas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30961466614092584845)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30961466511559584844)
,p_button_name=>'GENERAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(30893717874043777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::ID_FACT:&ID_COM.'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30961466954182584848)
,p_name=>'ID_COM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30961466511559584844)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_inline_help_text=>unistr('Presiona ENTER una vez ingreses el ID de la factura. Luego haz CLIC en el bot\00F3n GENERAR. Solo se aceptan valores entre 2020000 y 2020050')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31129860155436295518)
,p_name=>'Hide When Unload'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.component_end;
end;
/
