prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>33657925800256602
,p_default_application_id=>141
,p_default_id_offset=>33662320935301187
,p_default_owner=>'QUASTO'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Invalid Objects'
,p_alias=>'INVALID-OBJECTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Invalid Objects'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1250'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MWILHELM'
,p_last_upd_yyyymmddhh24miss=>'20240303150311'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54068725227447789)
,p_plug_name=>'Invalid Objects Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50728801114675111)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'TESTRUNDETAILS_P0004_V'
,p_query_where=>'qato_qatr_id = :P4_QATR_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_QATR_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Invalid Objects Report'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19586254497742413)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MWILHELM'
,p_internal_uid=>19586254497742413
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586356587742414)
,p_db_column_name=>'QATO_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Qato Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586428279742415)
,p_db_column_name=>'QATR_SCHEME_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Scheme Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586587665742416)
,p_db_column_name=>'QATO_OBJECT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586644805742417)
,p_db_column_name=>'QATO_OBJECT_DETAILS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Object Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586792840742418)
,p_db_column_name=>'QATO_QATR_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Qato Qatr Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19625304016852498)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'196254'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QATO_ID:QATR_SCHEME_NAME:QATO_OBJECT_NAME:QATO_OBJECT_DETAILS:QATO_QATR_ID'
,p_sort_column_1=>'QATO_OBJECT_NAME'
,p_sort_direction_1=>'ASC'
,p_break_on=>'QATR_SCHEME_NAME:0:0:0:0:0'
,p_break_enabled_on=>'QATR_SCHEME_NAME:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54069757078447799)
,p_name=>'P4_QATR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54068725227447789)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
