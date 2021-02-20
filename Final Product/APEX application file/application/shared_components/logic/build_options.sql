prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 11918
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4191826468060857088
,p_default_application_id=>11918
,p_default_id_offset=>0
,p_default_owner=>'DIQUINTERO'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(30893741722516777931)
,p_build_option_name=>unistr('Funci\00F3n: Control de Acceso')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>unistr('Incorpore la autenticaci\00F3n de usuarios basada en roles en la aplicaci\00F3n y gestione las asignaciones de nombres de usuario a roles de la aplicaci\00F3n.')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(30893741874736777931)
,p_build_option_name=>unistr('Funci\00F3n: Generaci\00F3n de informes de actividades')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>unistr('Incluya varios informes y gr\00E1ficos en la actividad del usuario final.')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(30893741920876777931)
,p_build_option_name=>unistr('Funci\00F3n: Comentarios')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>unistr('Proporcione a los usuarios finales un mecanismo para publicar comentarios generales como respuesta a los administradores y desarrolladores de la aplicaci\00F3n.')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(30893742126062777931)
,p_build_option_name=>unistr('Funci\00F3n: Opciones de Configuraci\00F3n')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>unistr('Permita a los administradores de la aplicaci\00F3n activar o desactivar una funcionalidad espec\00EDfica, asociadas a una opci\00F3n de creaci\00F3n de Application Express, en la aplicaci\00F3n.')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(30893742447784777931)
,p_build_option_name=>unistr('Funci\00F3n: Acerca de la P\00E1gina')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>unistr('P\00E1gina Acerca de esta aplicaci\00F3n.')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(30893742545825777931)
,p_build_option_name=>unistr('Funci\00F3n: Selecci\00F3n de estilo de tema')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>unistr('Permita a los administradores seleccionar un esquema de colores por defecto (estilo de tema) para la aplicaci\00F3n. Los administradores tambi\00E9n pueden permitir a los usuarios finales seleccionar su propio estilo de tema. ')
);
wwv_flow_api.component_end;
end;
/
