prompt --application/pages/page_10050
begin
--   Manifest
--     PAGE: 10050
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
 p_id=>10050
,p_user_interface_id=>wwv_flow_api.id(30893740287884777925)
,p_name=>'Comentarios'
,p_alias=>'COMENTARIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Comentarios'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(30893746304720777938)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_patch=>wwv_flow_api.id(30893741920876777931)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_last_updated_by=>'DIQUINTERO@UNAL.EDU.CO'
,p_last_upd_yyyymmddhh24miss=>'20200721025300'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30893855339576778129)
,p_plug_name=>unistr('Regi\00F3n de elementos de pantalla')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(30893528163239777834)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30893855431468778129)
,p_plug_name=>unistr('Regi\00F3n de botones')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(30893529195249777835)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30893855591344778129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30893855431468778129)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(30893717747673777905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar Comentarios'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30893855659108778129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30893855431468778129)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(30893717747673777905)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30893864273396778135)
,p_branch_name=>'correcto'
,p_branch_action=>'f?p=&APP_ID.:10051:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30893859078342778131)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30893855339576778129)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30893859480008778131)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30893855339576778129)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30893859813717778131)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30893855339576778129)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30893860253695778132)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(30893855339576778129)
,p_prompt=>'Experiencia'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_api.id(30893860375742778132)||'.'
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30893862166508778133)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30893855339576778129)
,p_prompt=>'Comentarios'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(30893716685812777904)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30893863810070778135)
,p_validation_name=>'Se necesita al menos un comentario'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Env\00EDe comentarios sobre su experiencia.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30893855799862778129)
,p_name=>unistr('Cancelar Cuadro de Di\00E1logo')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30893855659108778129)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30893862905999778134)
,p_event_id=>wwv_flow_api.id(30893855799862778129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30893863457482778135)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Enviar Comentarios'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10050_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10050_PAGE_ID,',
'    p_rating               => :P10050_RATING',
'',
' );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30893855591344778129)
,p_process_success_message=>'Comentarios enviados'
);
wwv_flow_api.component_end;
end;
/
