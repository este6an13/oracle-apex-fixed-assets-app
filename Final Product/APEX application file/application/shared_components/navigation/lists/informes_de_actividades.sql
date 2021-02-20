prompt --application/shared_components/navigation/lists/informes_de_actividades
begin
--   Manifest
--     LIST: Informes de Actividades
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(30893893023005778173)
,p_name=>'Informes de Actividades'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(30893741874736777931)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893893476386778174)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Panel de Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>unistr('Ver m\00E9tricas de actividad de la aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893893865405778174)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Usuarios Principales'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>unistr('Informe de vistas de p\00E1gina agregadas por usuarios')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893894246468778174)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Log de errores de la aplicaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032:::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>unistr('Informe de errores registrados por esta aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893894684752778175)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Rendimiento de P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033:::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>unistr('Informe de actividad y rendimiento por p\00E1gina de aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893895057645778175)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Vistas de P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RR,10034:::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>unistr('Informe de cada vista de p\00E1gina por usuario, incluida la fecha de acceso y el tiempo transcurrido')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
