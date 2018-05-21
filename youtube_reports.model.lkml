connection: "edureka_analytics"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: youtube_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: youtube_report_default_datagroup

explore: cmp1 {}

explore: cmp2 {}

explore: content_performance {}

explore: content_performance_leads {}

explore: crm_leadsv2 {}

explore: crm_potentialsv1 {}

explore: crm_potentialsv2 {}

explore: crm_potentialsv3 {}

explore: cs_contacts {}

explore: cs_responses {}

explore: daily_sales_target {}

explore: db_leaddata {}

explore: dlvrydash_activeinstructor_age {}

explore: dlvrydash_activeinstructor_age_coursewise {}

explore: dlvrydash_batch_feedback {}

explore: dlvrydash_canc_type {}

explore: dlvrydash_cancellation_report {}

explore: dlvrydash_completion_report {}

explore: dlvrydash_instructor_dependency {}

explore: dlvrydash_instructor_utilization {}

explore: dlvrydash_master_nps {}

explore: dlvrydash_monthly_batch_iq_report {}

explore: dlvrydash_nps_view {}

explore: dlvrydash_upcoming_batch_iq_report {}

explore: dlvrydash_weekwise_report {}

explore: ds_channel_performance_90day_powerbi {}

explore: event_context_mapping {}

explore: exhaustive_leads_monthly {}

explore: final_bulk_channel {}

explore: final_bulk_channel_bkp {}

explore: final_bulk_channel_crt {}

explore: final_bulk_traffic {}

explore: final_bulk_traffic_bkp {}

explore: final_bulk_traffic_crt {}

explore: final_traffic_report {}

explore: ga_trafficdata {}

explore: group_info {}

explore: instructor_master {}

explore: leads_sales_dashboard {}

explore: move_users_new_lms {}

explore: new_channel {}

explore: new_lms_batches {}

explore: new_lms_bwr {}

explore: new_lms_eng {}

explore: new_lms_otp_status {}

explore: new_lms_ticket {}

explore: new_traffic {}

explore: pagetitles {}

explore: relevant_videos {}

explore: reporting_edureka_ga {}

explore: reporting_edureka_ga2 {}

explore: reporting_edureka_new {}

explore: revenue_gmv_dashboard {}

explore: sales_dailyevents_agentcalls {}

explore: sales_dailyevents_calls {}

explore: sales_dailyevents_cc_pp {}

explore: sales_dailyevents_custom_link {}

explore: sales_dailyevents_inquiry {}

explore: sales_events_agentcalls {}

explore: sample_report {}

explore: searchconsole_rawdatadump {}

explore: searchconsole_rawdatadump_india {}

explore: searchconsole_rawdatadump_us {}

explore: seo_base_table {}

explore: seo_base_table_blogs {}

explore: seo_dashboard {}

explore: seo_processed_table1 {}

explore: seo_processed_table2 {}

explore: seo_processed_table3 {}

explore: seo_processed_table_drop {}

explore: seo_processed_table_rise {}

explore: seo_raw_data {}

explore: traffic_report {}

explore: weekly_meeting_event_info {}

explore: weekly_meeting_events_daily {}

explore: youtube_channel_summary {}

explore: youtube_weekly_view {}
