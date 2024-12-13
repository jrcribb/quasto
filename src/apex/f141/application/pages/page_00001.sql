prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>33657925800256602
,p_default_application_id=>141
,p_default_id_offset=>33662320935301187
,p_default_owner=>'QUASTO'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'let waitSpinner;'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#t_Button_rightControlButton {',
'    bottom: 20px;',
'    background: #056ac8;',
'    color: #ffffff;',
'    border-color: #00000013;',
'}',
'#t_Header, #t_Body_nav {',
'    z-index: 901 !important;',
'}',
'#apex_wait_overlay {',
'    z-index: 900 !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(50686162692675091)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50026038309358532)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(50780356327675132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(15081484244011701)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53668689025955104)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(50780356327675132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15081484244011701)
,p_name=>'Test Executions Report'
,p_region_name=>'TEST_REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(53668689025955104)
,p_template=>wwv_flow_imp.id(50728801114675111)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'QA_OVERVIEW_TESTS_P0001_V'
,p_query_where=>':P1_LAZY_LOADING = 1'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_CATEGORIES,P1_PROJECT,P1_SCHEME,P1_TEST_RESULT,P1_ERRORLEVEL,P1_EXECUTION_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(50807155826675144)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1:2:3'
,p_query_no_data_found=>'No test results found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'REPEAT_HEADINGS_ON_BREAK_1'
,p_break_repeat_heading_format=>'Client Name: #COLUMN_VALUE#'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15081518459011702)
,p_query_column_id=>1
,p_column_alias=>'QATR_ID'
,p_column_display_sequence=>50
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19437053615895714)
,p_query_column_id=>2
,p_column_alias=>'QATR_SCHEME_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Scheme Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19435893579895702)
,p_query_column_id=>3
,p_column_alias=>'QATR_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_format=>'MM/DD/YYYY'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19435974686895703)
,p_query_column_id=>4
,p_column_alias=>'QATR_RESULT'
,p_column_display_sequence=>60
,p_column_heading=>'Test Result'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436034312895704)
,p_query_column_id=>5
,p_column_alias=>'QARU_CLIENT_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Client Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436166168895705)
,p_query_column_id=>6
,p_column_alias=>'QATR_DETAILS'
,p_column_display_sequence=>70
,p_column_heading=>'Details'
,p_use_as_row_header=>'N'
,p_column_link=>'#QATR_DETAILS#'
,p_column_linktext=>'#QATR_DETAILS#'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436210269895706)
,p_query_column_id=>7
,p_column_alias=>'QATR_RESTART_UNIT_TEST'
,p_column_display_sequence=>80
,p_column_heading=>'Restart'
,p_use_as_row_header=>'N'
,p_column_link=>'#QATR_RESTART_UNIT_TEST#'
,p_column_linktext=>'#QATR_RESTART_UNIT_TEST#'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436316129895707)
,p_query_column_id=>8
,p_column_alias=>'QARU_CATEGORY'
,p_column_display_sequence=>90
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>4
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(28141307571811854)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436487388895708)
,p_query_column_id=>9
,p_column_alias=>'QARU_NAME'
,p_column_display_sequence=>100
,p_column_heading=>'Rule Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>5
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436571248895709)
,p_query_column_id=>10
,p_column_alias=>'QARU_LAYER'
,p_column_display_sequence=>110
,p_column_heading=>'Layer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(28141931342798943)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436620060895710)
,p_query_column_id=>11
,p_column_alias=>'QARU_ERROR_LEVEL'
,p_column_display_sequence=>120
,p_column_heading=>'Error Level'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(28141712169803882)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436765678895711)
,p_query_column_id=>12
,p_column_alias=>'QARU_IS_ACTIVE'
,p_column_display_sequence=>130
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(54239364838095093)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436843297895712)
,p_query_column_id=>13
,p_column_alias=>'QATR_RUNTIME_ERROR'
,p_column_display_sequence=>140
,p_column_heading=>'Runtime Error'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19436973654895713)
,p_query_column_id=>14
,p_column_alias=>'QATR_PROGRAM_NAME'
,p_column_display_sequence=>150
,p_column_heading=>'Program Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53667478103955092)
,p_plug_name=>'Charts'
,p_parent_plug_id=>wwv_flow_imp.id(53668689025955104)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50790142840675136)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53667537845955093)
,p_plug_name=>'Quota Chart'
,p_region_name=>'QUOTA_CHART'
,p_parent_plug_id=>wwv_flow_imp.id(53667478103955092)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(50780356327675132)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(53667689137955094)
,p_region_id=>wwv_flow_imp.id(53667537845955093)
,p_chart_type=>'donut'
,p_title=>'Quota'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No test results found.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(53667818773955095)
,p_chart_id=>wwv_flow_imp.id(53667689137955094)
,p_seq=>10
,p_name=>'Quota'
,p_data_source_type=>'TABLE'
,p_ajax_items_to_submit=>'P1_CATEGORIES,P1_PROJECT,P1_SCHEME,P1_TEST_RESULT,P1_ERRORLEVEL,P1_EXECUTION_DATE'
,p_query_table=>'QA_OVERVIEW_QUOTA_P0001_V'
,p_query_where=>':P1_LAZY_LOADING = 1'
,p_include_rowid_column=>false
,p_items_value_column_name=>'STATUS_AMOUNT'
,p_items_label_column_name=>'TESTCASE_STATUS'
,p_items_short_desc_column_name=>'TESTCASE_STATUS'
,p_color=>'&COLOR_HEX.'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LBL_PCT'
,p_link_target=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.::P1_TEST_RESULT:&TESTCASE_STATUS.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53668118104955098)
,p_plug_name=>'Timeline Chart'
,p_region_name=>'TIMELINE_CHART'
,p_parent_plug_id=>wwv_flow_imp.id(53667478103955092)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(50780356327675132)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(53668181381955099)
,p_region_id=>wwv_flow_imp.id(53668118104955098)
,p_chart_type=>'lineWithArea'
,p_title=>'Timeline (max. 10 days)'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No test results found.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(53668311390955100)
,p_chart_id=>wwv_flow_imp.id(53668181381955099)
,p_seq=>10
,p_name=>'Success'
,p_data_source_type=>'TABLE'
,p_ajax_items_to_submit=>'P1_CATEGORIES,P1_PROJECT,P1_SCHEME,P1_TEST_RESULT,P1_ERRORLEVEL,P1_EXECUTION_DATE'
,p_query_table=>'QA_OVERVIEW_TIMELINE_SUCCESS_P0001_V'
,p_query_where=>':P1_LAZY_LOADING = 1'
,p_include_rowid_column=>false
,p_series_name_column_name=>'TESTCASE_STATUS'
,p_items_value_column_name=>'STATUS_AMOUNT'
,p_items_label_column_name=>'TESTCASE_DATE'
,p_color=>'&COLOR_HEX.'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.::P1_EXECUTION_DATE,P1_TEST_RESULT:&FILTER_DATE.,&TESTCASE_STATUS.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28125480259016701)
,p_chart_id=>wwv_flow_imp.id(53668181381955099)
,p_seq=>30
,p_name=>'Failure'
,p_data_source_type=>'TABLE'
,p_ajax_items_to_submit=>'P1_CATEGORIES,P1_PROJECT,P1_SCHEME,P1_TEST_RESULT,P1_ERRORLEVEL,P1_EXECUTION_DATE'
,p_query_table=>'QA_OVERVIEW_TIMELINE_FAILURE_P0001_V'
,p_query_where=>':P1_LAZY_LOADING = 1'
,p_include_rowid_column=>false
,p_series_name_column_name=>'TESTCASE_STATUS'
,p_items_value_column_name=>'STATUS_AMOUNT'
,p_items_label_column_name=>'TESTCASE_DATE'
,p_color=>'&COLOR_HEX.'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.::P1_EXECUTION_DATE,P1_TEST_RESULT:&FILTER_DATE.,&TESTCASE_STATUS.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(22079556541883204)
,p_chart_id=>wwv_flow_imp.id(53668181381955099)
,p_seq=>40
,p_name=>'Error'
,p_data_source_type=>'TABLE'
,p_ajax_items_to_submit=>'P1_CATEGORIES,P1_PROJECT,P1_SCHEME,P1_TEST_RESULT,P1_ERRORLEVEL,P1_EXECUTION_DATE'
,p_query_table=>'QA_OVERVIEW_TIMELINE_ERROR_P0001_V'
,p_query_where=>':P1_LAZY_LOADING = 1'
,p_include_rowid_column=>false
,p_series_name_column_name=>'TESTCASE_STATUS'
,p_items_value_column_name=>'STATUS_AMOUNT'
,p_items_label_column_name=>'TESTCASE_DATE'
,p_color=>'&COLOR_HEX.'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.::P1_EXECUTION_DATE,P1_TEST_RESULT:&FILTER_DATE.,&TESTCASE_STATUS.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(53668369396955101)
,p_chart_id=>wwv_flow_imp.id(53668181381955099)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Execution Dates'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'none'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(53668472558955102)
,p_chart_id=>wwv_flow_imp.id(53668181381955099)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>unistr('\2211 Amount of Tests')
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54282244796258516)
,p_plug_name=>'Breadcrumb Bar'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(50780356327675132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59669294668084191)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54282244796258516)
,p_button_name=>'CONFIG_SCHEDULER_JOB'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(50844844448675167)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Config Scheduler Job'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-clock-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54282394419258517)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54282244796258516)
,p_button_name=>'TEST_RESULT_FILES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(50844844448675167)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Test Result Files'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-file-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15020491569979834)
,p_name=>'P1_LAZY_LOADING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53668689025955104)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026191771358533)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026260819358534)
,p_name=>'P1_CATEGORIES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Categories'
,p_source=>'QARU_CATEGORY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026332952358535)
,p_name=>'P1_PROJECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Clients/Projects'
,p_source=>'QARU_CLIENT_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026461512358536)
,p_name=>'P1_SCHEME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Schemes'
,p_source=>'QATR_SCHEME_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'TEST_SCHEME_NAMES_LOV'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026549870358537)
,p_name=>'P1_TEST_RESULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Test Results'
,p_source=>'QATR_RESULT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026774894358539)
,p_name=>'P1_ERRORLEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Error Levels'
,p_source=>'QARU_ERROR_LEVEL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'RULE_ERROR_LEVELS_LOV'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50026801122358540)
,p_name=>'P1_EXECUTION_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50026038309358532)
,p_prompt=>'Dates'
,p_source=>'QATR_DATE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'TEST_EXECUTION_DATES_LOV'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_multi_value_trim_space=>false
,p_fc_filter_combination=>'OR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42250668839031716)
,p_name=>'Refresh Reports after Dialog closed (Breadcrumb)'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(54282244796258516)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021253692979842)
,p_event_id=>wwv_flow_imp.id(42250668839031716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh collection'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'qa_apex_app_pkg.p_fill_faceted_search_collection();',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021986166979849)
,p_event_id=>wwv_flow_imp.id(42250668839031716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Quota Chart'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53667537845955093)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42250900874031719)
,p_event_id=>wwv_flow_imp.id(42250668839031716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Timeline Chart'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53668118104955098)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22079294077883201)
,p_event_id=>wwv_flow_imp.id(42250668839031716)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Report'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15081484244011701)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43123012308871101)
,p_event_id=>wwv_flow_imp.id(42250668839031716)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Filter region'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50026038309358532)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50904210902097603)
,p_name=>'Filter Regions'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(50026038309358532)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'facetschange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15085258264011739)
,p_event_id=>wwv_flow_imp.id(50904210902097603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh collection'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'qa_apex_app_pkg.p_fill_faceted_search_collection();',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15020127762979831)
,p_event_id=>wwv_flow_imp.id(50904210902097603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Report'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15081484244011701)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50904357709097604)
,p_event_id=>wwv_flow_imp.id(50904210902097603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Quota Chart'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53667537845955093)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51633519640081204)
,p_event_id=>wwv_flow_imp.id(50904210902097603)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Timeline Chart'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53668118104955098)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32892749293706113)
,p_name=>'Refresh Reports after Dialog closed (Test Execution Report)'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15081484244011701)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32892829688706114)
,p_event_id=>wwv_flow_imp.id(32892749293706113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Quota Chart'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53667537845955093)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32892967031706115)
,p_event_id=>wwv_flow_imp.id(32892749293706113)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Timeline Chart'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53668118104955098)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32893057958706116)
,p_event_id=>wwv_flow_imp.id(32892749293706113)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Report'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15081484244011701)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43123119688871102)
,p_event_id=>wwv_flow_imp.id(32892749293706113)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Filter region'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50026038309358532)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15020512183979835)
,p_name=>'Lazy loading refresh'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15020680603979836)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_LAZY_LOADING'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021337945979843)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'require js wait'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'requirejs.config({ waitSeconds: 10 });'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021465950979844)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Waiting spinner'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'waitSpinner = apex.widget.waitPopup();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42250855318031718)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Fill collection'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'qa_apex_app_pkg.p_fill_faceted_search_collection();',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15020857271979838)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P1_LAZY_LOADING'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15020799896979837)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Report'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15081484244011701)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15020989497979839)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Refresh filter'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50026038309358532)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021049211979840)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Refresh filter'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53668118104955098)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021178379979841)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Refresh filter'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53667537845955093)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15021682364979846)
,p_event_id=>wwv_flow_imp.id(15020512183979835)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'waitSpinner.remove();'
);
wwv_flow_imp.component_end;
end;
/
