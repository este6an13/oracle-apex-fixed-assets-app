prompt --application/pages/page_10041
begin
--   Manifest
--     PAGE: 10041
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
 p_id=>10041
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Gestionar acceso de usuarios'
,p_alias=>'GESTIONAR-ACCESO-DE-USUARIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestionar acceso de usuarios'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(30893746304720777938)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(30893744497448777934)
,p_required_patch=>wwv_flow_api.id(30893741722516777931)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>En esta p\00E1gina se muestra un informe de los usuarios de la aplicaci\00F3n y el nivel de acceso otorgado.</p>'),
unistr('<p>Haga clic en las cabeceras de columna para ordenar y filtrar los datos, o bien haga clic en el bot\00F3n <strong>Acciones</strong> para personalizar la visualizaci\00F3n de columnas y otras muchas funciones avanzadas.<br>'),
unistr('Haga clic en el bot\00F3n <strong>Restablecer</strong> para restablecer la configuraci\00F3n por defecto del informe interactivo.</p>'),
unistr('<p>Haga clic en el icono de edici\00F3n (l\00E1piz de color amarillo) para editar los detalles y el nivel de acceso del usuario, o bien para suprimir el usuario.</p>'),
'<p>Haga clic en <strong>Agregar usuario</strong>, en la parte superior del informe, para agregar un nuevo usuario y su nivel de acceso.</p>'))
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200721025300'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30893825903688778096)
,p_plug_name=>'Gestionar acceso de usuarios'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(30893553664381777852)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Gestionar acceso de usuarios'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(30893827042200778097)
,p_name=>'Gestionar acceso de usuarios'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::::P10042_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'DIQUINTERO@UNAL.EDU.CO'
,p_internal_uid=>30893827042200778097
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893827198704778097)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893827577229778098)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre de Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30893827955068778099)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30893828683387778100)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'308938287'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30893829559234778101)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30893825903688778096)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(30893717874043777905)
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30893829919543778102)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30893825903688778096)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(30893717747673777905)
,p_button_image_alt=>'Agregar varios usuarios'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&SESSION.::&DEBUG.:10043::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30893830329502778102)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(30893825903688778096)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(30893717747673777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Usuario'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30893826016849778096)
,p_name=>unistr('Refrescar al cerrar el cuadro de di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(30893825903688778096)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30893830937856778103)
,p_event_id=>wwv_flow_api.id(30893826016849778096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(30893825903688778096)
);
wwv_flow_api.component_end;
end;
/
