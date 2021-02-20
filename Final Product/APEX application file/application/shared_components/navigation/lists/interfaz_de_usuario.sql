prompt --application/shared_components/navigation/lists/interfaz_de_usuario
begin
--   Manifest
--     LIST: Interfaz de Usuario
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
 p_id=>wwv_flow_api.id(30893892361284778173)
,p_name=>'Interfaz de Usuario'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(30893742545825777931)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893892707363778173)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Selecci\00F3n de estilo de tema')
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>unistr('Definir la interfaz de usuario por defecto de la aplicaci\00F3n')
,p_required_patch=>wwv_flow_api.id(30893742545825777931)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
