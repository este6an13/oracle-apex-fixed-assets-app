prompt --application/shared_components/security/authorizations/derechos_de_contribución
begin
--   Manifest
--     SECURITY SCHEME: Derechos de contribución
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(30893744622578777934)
,p_name=>unistr('Derechos de contribuci\00F3n')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrador,Contribuyente'
,p_attribute_02=>'A'
,p_error_message=>'Privilegios insuficientes. El usuario no es contribuyente'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
