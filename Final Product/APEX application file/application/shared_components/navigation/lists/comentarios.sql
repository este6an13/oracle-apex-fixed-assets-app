prompt --application/shared_components/navigation/lists/comentarios
begin
--   Manifest
--     LIST: Comentarios
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
 p_id=>wwv_flow_api.id(30893896405491778176)
,p_name=>'Comentarios'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(30893741920876777931)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30893896809882778176)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Comentarios del usuario'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&SESSION.::&DEBUG.:10053:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>unistr('Informe de todos los comentarios enviados por los usuarios de la aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
