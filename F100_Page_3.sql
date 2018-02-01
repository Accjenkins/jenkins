set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>1950670522229301
,p_default_application_id=>100
,p_default_owner=>'TEST1'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 100 - Unit Testing
--
-- Application Export:
--   Application:     100
--   Name:            Unit Testing
--   Date and Time:   01:08 Monday January 22, 2018
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         5.1.0.00.45
--   Instance ID:     218208042498449
--

prompt --application/pages/delete_00003
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>3);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(9659948822438837)
,p_name=>'Test Cases'
,p_page_mode=>'NORMAL'
,p_step_title=>'Test Cases'
,p_step_sub_title=>'Test Cases'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'USER_4321'
,p_last_upd_yyyymmddhh24miss=>'20170308064717'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9679955836952631)
,p_plug_name=>'Test Cases'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9625842078438589)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UT_SUB_ID,',
'       TEST_SCENARIO,',
'       CREATED_DT,',
'       CREATED_BY,',
'       RESULT,',
'       UNIT_TEST_ID,',
'       REMARKS,',
'       EXECUTE',
'  from UNIT_TEST_CASES',
'  WHERE UNIT_TEST_ID = :P1_UNIT_TEST_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9680065276952631)
,p_name=>'Test Cases'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>9680065276952631
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9680461242952633)
,p_db_column_name=>'UT_SUB_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ut Sub Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9680831836952633)
,p_db_column_name=>'TEST_SCENARIO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Test Scenario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9681207916952634)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Created Dt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9681606033952634)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9682058675952634)
,p_db_column_name=>'RESULT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Result'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9682447621952634)
,p_db_column_name=>'UNIT_TEST_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unit Test Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9682893151952635)
,p_db_column_name=>'REMARKS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9683264395952636)
,p_db_column_name=>'EXECUTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Execute'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9684951864042451)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96850'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'UT_SUB_ID:TEST_SCENARIO:CREATED_DT:CREATED_BY:RESULT:UNIT_TEST_ID:REMARKS:EXECUTE'
,p_flashback_enabled=>'N'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

