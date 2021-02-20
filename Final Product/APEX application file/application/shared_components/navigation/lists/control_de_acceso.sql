prompt --application/shared_components/navigation/lists/control_de_acceso
begin
--   Manifest
--     LIST: Control de Acceso
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
 p_id=>wwv_flow_api.id(30893895314580778175)
,p_name=>'Control de Acceso'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(30893741722516777931)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893895786348778175)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>unistr('Cambiar configuraci\00F3n de control de acceso y desactivar control de acceso')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893896157147778176)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Control de Acceso'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>unistr('Definir nivel de acceso para los usuarios autenticados de esta aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
