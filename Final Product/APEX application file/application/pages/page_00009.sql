prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Gestor de Puestos de Trabajo'
,p_alias=>'GESTOR-DE-PUESTOS-DE-TRABAJO'
,p_step_title=>'Gestor de Puestos de Trabajo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200722150632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053462427659156815)
,p_plug_name=>'Docentes sin puesto de trabajo asignado'
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
 p_id=>wwv_flow_api.id(31053462218081156813)
,p_plug_name=>'Docentes sin puesto asignado'
,p_parent_plug_id=>wwv_flow_api.id(31053462427659156815)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_FUNCIONARIO, NOMBRE_FUNCIONARIO, TITULO_DOCENTE, ROL_DOCENTE, NOMBRE_PROGRAMA, NOMBRE_FACULTAD FROM FUNCIONARIO NATURAL JOIN FACULTAD NATURAL JOIN PROGRAMA WHERE ID_FUNCIONARIO NOT IN (SELECT ID_FUNCIONARIO FROM FUNCIONARIO NATURAL JOIN ACT'
||'IVO) AND TIPO_FUNCIONARIO = ''D''',
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
,p_prn_page_header=>'Docentes sin puesto asignado'
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
 p_id=>wwv_flow_api.id(31053462346934156814)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31053462346934156814
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462558241156816)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462636858156817)
,p_db_column_name=>'NOMBRE_FUNCIONARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462745907156818)
,p_db_column_name=>'TITULO_DOCENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Titulo Docente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462897131156819)
,p_db_column_name=>'ROL_DOCENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rol Docente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053462951772156820)
,p_db_column_name=>'NOMBRE_PROGRAMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre Programa'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053463092068156821)
,p_db_column_name=>'NOMBRE_FACULTAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre Facultad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31054794733526787736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310547948'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FUNCIONARIO:NOMBRE_FUNCIONARIO:TITULO_DOCENTE:ROL_DOCENTE:NOMBRE_PROGRAMA:NOMBRE_FACULTAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053463188380156822)
,p_plug_name=>'Administrativos sin puesto de trabajo asignado'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053463271689156823)
,p_plug_name=>'Administrativos sin puesto asignado'
,p_parent_plug_id=>wwv_flow_api.id(31053463188380156822)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.ID_FUNCIONARIO, R.NOMBRE_FUNCIONARIO, R.CARGO_EMPLEADO, R.JEFE, NOMBRE_AREA FROM (SELECT F.ID_FUNCIONARIO, F.NOMBRE_FUNCIONARIO, F.TIPO_FUNCIONARIO, F.CARGO_EMPLEADO, J.NOMBRE_FUNCIONARIO JEFE, F.ID_AREA',
'FROM FUNCIONARIO F INNER JOIN FUNCIONARIO J ON F.ID_JEFE = J.ID_FUNCIONARIO) R INNER JOIN AREA A ON R.ID_AREA = A.ID_AREA',
'WHERE R.ID_FUNCIONARIO NOT IN (SELECT ID_FUNCIONARIO FROM FUNCIONARIO NATURAL JOIN ACTIVO) AND R.TIPO_FUNCIONARIO = ''E'' ',
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
,p_prn_page_header=>'Administrativos sin puesto asignado'
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
 p_id=>wwv_flow_api.id(31053463305566156824)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31053463305566156824
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053463459541156825)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053463556008156826)
,p_db_column_name=>'NOMBRE_FUNCIONARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053464095216156831)
,p_db_column_name=>'CARGO_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cargo Empleado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053464106283156832)
,p_db_column_name=>'JEFE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Jefe'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053464278670156833)
,p_db_column_name=>'NOMBRE_AREA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre Area'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31055817697781411830)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310558177'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FUNCIONARIO:NOMBRE_FUNCIONARIO:CARGO_EMPLEADO:JEFE:NOMBRE_AREA'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053465770760156848)
,p_plug_name=>unistr('N\00FAmero de docentes sin puesto asignado por t\00EDtulo y escalaf\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053464833218156839)
,p_plug_name=>unistr('Docentes sin puesto asignado por T\00EDtulo y Escalaf\00F3n')
,p_parent_plug_id=>wwv_flow_api.id(31053465770760156848)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT TITULO_DOCENTE, ROL_DOCENTE, COUNT(*) N\00DAMERO FROM FUNCIONARIO '),
'WHERE ID_FUNCIONARIO NOT IN (SELECT ID_FUNCIONARIO FROM ACTIVO NATURAL JOIN FUNCIONARIO) AND TIPO_FUNCIONARIO =''D''',
'GROUP BY TITULO_DOCENTE, ROL_DOCENTE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Docentes sin puesto asignado por T\00EDtulo y Escalaf\00F3n')
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
 p_id=>wwv_flow_api.id(31053464987650156840)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31053464987650156840
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053465210350156843)
,p_db_column_name=>'TITULO_DOCENTE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Titulo Docente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31053465320173156844)
,p_db_column_name=>'ROL_DOCENTE'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Rol Docente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056131699471831005)
,p_db_column_name=>unistr('N\00DAMERO')
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31056113945006819269)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310561140'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('TITULO_DOCENTE:ROL_DOCENTE:N\00DAMERO')
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053465847069156849)
,p_plug_name=>unistr('N\00FAmero de administrativos sin puesto asignado por cargo')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053465904744156850)
,p_plug_name=>'Administrativos sin puesto asignado por cargo'
,p_parent_plug_id=>wwv_flow_api.id(31053465847069156849)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT CARGO_EMPLEADO, COUNT(*) N\00DAMERO FROM FUNCIONARIO '),
'WHERE ID_FUNCIONARIO NOT IN (SELECT ID_FUNCIONARIO FROM ACTIVO NATURAL JOIN FUNCIONARIO) AND TIPO_FUNCIONARIO =''E''',
unistr('GROUP BY CARGO_EMPLEADO ORDER BY N\00DAMERO')))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Administrativos sin puesto asignado por cargo'
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
 p_id=>wwv_flow_api.id(31056131221827831001)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31056131221827831001
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056131729572831006)
,p_db_column_name=>'CARGO_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Cargo Empleado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056131894507831007)
,p_db_column_name=>unistr('N\00DAMERO')
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31056166861585848371)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310561669'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('CARGO_EMPLEADO:N\00DAMERO')
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31053547192500659294)
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
 p_id=>wwv_flow_api.id(31056131954843831008)
,p_plug_name=>'Funcionarios cuyo puesto de trabajo necesita un mantenimiento'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31056132028798831009)
,p_plug_name=>'Funcionarios cuyo puesto de trabajo necesita un mantenimiento'
,p_parent_plug_id=>wwv_flow_api.id(31056131954843831008)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH c AS (SELECT ID_ACTIVO, ID_FUNCIONARIO FROM ACTIVO NATURAL JOIN PROCEDIMIENTO WHERE ESTADO_REVISION = ''M'')',
'SELECT DISTINCT F.ID_FUNCIONARIO, NOMBRE_FUNCIONARIO FROM c INNER JOIN FUNCIONARIO F ON c.ID_FUNCIONARIO = F.ID_FUNCIONARIO',
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
,p_prn_page_header=>'Funcionarios cuyo puesto de trabajo necesita un mantenimiento'
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
 p_id=>wwv_flow_api.id(31056132178460831010)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31056132178460831010
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056132213666831011)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056132309976831012)
,p_db_column_name=>'NOMBRE_FUNCIONARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31056711386580580631)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310567114'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FUNCIONARIO:NOMBRE_FUNCIONARIO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31056132762652831016)
,p_plug_name=>'Posibles procesos de descargos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('Se presentan los funcionarios que despu\00E9s de una revisi\00F3n por parte del equipo de inventarios o al momento de retirarse la compa\00F1\00EDa, cuentan con alg\00FAn activo de su puesto de trabajo en malas condiciones y se evidencia negligencia por par parte del fu')
||'ncionario en el trato del mismo.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31056132825469831017)
,p_plug_name=>'Posibles procesos de descargos'
,p_parent_plug_id=>wwv_flow_api.id(31056132762652831016)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F.ID_FUNCIONARIO, F.NOMBRE_FUNCIONARIO, F.CARGO_EMPLEADO, F.ROL_DOCENTE, ID_ACTIVO, NOMBRE_ACTIVO, MARCA_ACTIVO, ESTADO_REVISION, OBSERVACIONES ',
'FROM (SELECT * FROM ACTIVO NATURAL JOIN PROCEDIMIENTO) R INNER JOIN FUNCIONARIO F ON R.ID_FUNCIONARIO = F.ID_FUNCIONARIO',
'WHERE (ESTADO_REVISION = ''M'' OR ESTADO_REVISION = ''R'') AND OBSERVACIONES IS NOT NULL AND (TIPO_PROCEDIMIENTO IN (''R'', ''P''))'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Posibles procesos de descargos'
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
 p_id=>wwv_flow_api.id(31056132921305831018)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31056132921305831018
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056133090491831019)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056133121763831020)
,p_db_column_name=>'NOMBRE_FUNCIONARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859140671295508)
,p_db_column_name=>'CARGO_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cargo Empleado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859251898295509)
,p_db_column_name=>'ROL_DOCENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rol Docente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859352773295510)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859496913295511)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859563640295512)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859635219295513)
,p_db_column_name=>'ESTADO_REVISION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado Revision'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859730888295514)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31056711992492580636)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310567120'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FUNCIONARIO:NOMBRE_FUNCIONARIO:CARGO_EMPLEADO:ROL_DOCENTE:ID_ACTIVO:NOMBRE_ACTIVO:MARCA_ACTIVO:ESTADO_REVISION:OBSERVACIONES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31056135742595831046)
,p_plug_name=>'Funcionarios cuyo puesto de trabajo necesita un reemplazo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(30893555508399777853)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31056135885050831047)
,p_plug_name=>'Funcionarios cuyo puesto de trabajo necesita un reemplazo'
,p_parent_plug_id=>wwv_flow_api.id(31056135742595831046)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F.ID_FUNCIONARIO, F.NOMBRE_FUNCIONARIO, F.CARGO_EMPLEADO, F.ROL_DOCENTE, ID_ACTIVO, NOMBRE_ACTIVO, MARCA_ACTIVO, ESTADO_REVISION, OBSERVACIONES ',
'FROM (SELECT * FROM ACTIVO NATURAL JOIN PROCEDIMIENTO) R INNER JOIN FUNCIONARIO F ON R.ID_FUNCIONARIO = F.ID_FUNCIONARIO',
'WHERE ESTADO_REVISION = ''M'' OR ESTADO_REVISION = ''R'' AND OBSERVACIONES IS NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Funcionarios cuyo puesto de trabajo necesita un reemplazo'
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
 p_id=>wwv_flow_api.id(31056135975778831048)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>31056135975778831048
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056136070319831049)
,p_db_column_name=>'ID_FUNCIONARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Funcionario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31056136174614831050)
,p_db_column_name=>'NOMBRE_FUNCIONARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129858408793295501)
,p_db_column_name=>'CARGO_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cargo Empleado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129858536272295502)
,p_db_column_name=>'ROL_DOCENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rol Docente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129858605528295503)
,p_db_column_name=>'ID_ACTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id Activo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129858717435295504)
,p_db_column_name=>'NOMBRE_ACTIVO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129858868558295505)
,p_db_column_name=>'MARCA_ACTIVO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marca Activo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129858917491295506)
,p_db_column_name=>'ESTADO_REVISION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado Revision'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31129859014772295507)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31129061645585670278)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'311290617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FUNCIONARIO:NOMBRE_FUNCIONARIO:CARGO_EMPLEADO:ROL_DOCENTE:ID_ACTIVO:NOMBRE_ACTIVO:MARCA_ACTIVO:ESTADO_REVISION:OBSERVACIONES'
);
wwv_flow_api.component_end;
end;
/