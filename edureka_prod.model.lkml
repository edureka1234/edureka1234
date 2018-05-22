connection: "edureka_analytics"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: edureka_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: edureka_prod_default_datagroup

explore: acos {}

explore: action_views {
  join: courses {
    type: left_outer
    sql_on: ${action_views.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: activities_new {
  join: courses {
    type: left_outer
    sql_on: ${activities_new.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${activities_new.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${activities_new.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: activity_summaries {}

explore: activity_summaries_updates {}

explore: affiliate_programs {}

explore: affiliates {}

explore: affiliates_commissions {
  join: affiliates {
    type: left_outer
    sql_on: ${affiliates_commissions.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }
}

explore: agent_listings {}

explore: agent_status_mappings {}

explore: ambassador_activities {
  join: users {
    type: left_outer
    sql_on: ${ambassador_activities.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${ambassador_activities.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: ambassador_credit_points {
  join: user_levels {
    type: left_outer
    sql_on: ${ambassador_credit_points.user_level_id} = ${user_levels.id} ;;
    relationship: many_to_one
  }
}

explore: ambassador_referral_clicks {
  join: courses {
    type: left_outer
    sql_on: ${ambassador_referral_clicks.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${ambassador_referral_clicks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: ambassadors {
  join: users {
    type: left_outer
    sql_on: ${ambassadors.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: answers {
  join: questions {
    type: left_outer
    sql_on: ${answers.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: app_users_token {}

explore: applications {
  join: job_openings {
    type: left_outer
    sql_on: ${applications.job_openings_id} = ${job_openings.id} ;;
    relationship: many_to_one
  }

  join: job_team_names {
    type: left_outer
    sql_on: ${job_openings.job_team_name_id} = ${job_team_names.id} ;;
    relationship: many_to_one
  }
}

explore: aros {}

explore: aros_acos {
  join: acos {
    type: left_outer
    sql_on: ${aros_acos.aco_id} = ${acos.id} ;;
    relationship: many_to_one
  }

  join: aros {
    type: left_outer
    sql_on: ${aros_acos.aro_id} = ${aros.id} ;;
    relationship: many_to_one
  }
}

explore: assesment_questions {
  join: questions {
    type: left_outer
    sql_on: ${assesment_questions.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${assesment_questions.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: attachments {}

explore: audits {
  join: users {
    type: left_outer
    sql_on: ${audits.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: auth_logging {
  join: users {
    type: left_outer
    sql_on: ${auth_logging.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: batch_discounts {
  join: courses {
    type: left_outer
    sql_on: ${batch_discounts.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: batch_feedback_summaries {
  join: instructors {
    type: left_outer
    sql_on: ${batch_feedback_summaries.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: batches {
    type: left_outer
    sql_on: ${batch_feedback_summaries.batches_id} = ${batches.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${batches.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${batches.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: batch_infos {}

explore: batch_issues {
  join: courses {
    type: left_outer
    sql_on: ${batch_issues.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: batch_new_invoices {
  join: instructor_bank_details {
    type: left_outer
    sql_on: ${batch_new_invoices.instructor_bank_details_id} = ${instructor_bank_details.id} ;;
    relationship: many_to_one
  }

  join: batches {
    type: left_outer
    sql_on: ${batch_new_invoices.batches_id} = ${batches.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${batch_new_invoices.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${instructor_bank_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: batch_report_permissions {
  join: users {
    type: left_outer
    sql_on: ${batch_report_permissions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${batch_report_permissions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: batch_support_tickets {}

explore: batch_webinar_absents {
  join: users {
    type: left_outer
    sql_on: ${batch_webinar_absents.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: batch_webinar_classes {
  join: users {
    type: left_outer
    sql_on: ${batch_webinar_classes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: batch_webinar_feedback_questions {}

explore: batch_webinar_ticket_counts {}

explore: batch_webinars {}

explore: batches {
  join: courses {
    type: left_outer
    sql_on: ${batches.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${batches.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: bulk_queue_jobs {}

explore: business_units {}

explore: career_admin_report_view {
  join: certificates {
    type: left_outer
    sql_on: ${career_admin_report_view.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: categories {}

explore: certificate_mappings {
  join: courses {
    type: left_outer
    sql_on: ${certificate_mappings.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: certificates {}

explore: cities {}

explore: cities_list {}

explore: class_content_ratings {
  join: batch_webinars {
    type: left_outer
    sql_on: ${class_content_ratings.batch_webinar_id} = ${batch_webinars.id} ;;
    relationship: many_to_one
  }
}

explore: class_instructor_feedbacks {
  join: batch_webinars {
    type: left_outer
    sql_on: ${class_instructor_feedbacks.batch_webinar_id} = ${batch_webinars.id} ;;
    relationship: many_to_one
  }
}

explore: completion_contribution {
  join: courses {
    type: left_outer
    sql_on: ${completion_contribution.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: content_repositories {}

explore: content_repositories_bkp_20180321 {}

explore: content_repository_links {}

explore: corp_course_mappings {
  join: courses {
    type: left_outer
    sql_on: ${corp_course_mappings.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: corp_coursename_mappers {
  join: courses {
    type: left_outer
    sql_on: ${corp_coursename_mappers.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: corp_hr_users {
  join: users {
    type: left_outer
    sql_on: ${corp_hr_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: corp_invoices {
  join: invoices {
    type: left_outer
    sql_on: ${corp_invoices.invoice_id} = ${invoices.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${invoices.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: corp_licences {}

explore: corp_nominations {
  join: courses {
    type: left_outer
    sql_on: ${corp_nominations.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: corp_payments {}

explore: corp_user_choices {
  join: courses {
    type: left_outer
    sql_on: ${corp_user_choices.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: corp_user_detail_copies {
  join: certificates {
    type: left_outer
    sql_on: ${corp_user_detail_copies.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${corp_user_detail_copies.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${corp_user_detail_copies.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: corp_user_details {
  join: courses {
    type: left_outer
    sql_on: ${corp_user_details.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${corp_user_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${corp_user_details.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: corp_user_request_ids {
  join: courses {
    type: left_outer
    sql_on: ${corp_user_request_ids.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${corp_user_request_ids.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: corp_usercourses_libraries {
  join: users {
    type: left_outer
    sql_on: ${corp_usercourses_libraries.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: corporate_accounts {}

explore: corporate_configs {}

explore: corporate_supports {
  join: courses {
    type: left_outer
    sql_on: ${corporate_supports.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: countries {}

explore: countries_list {}

explore: course_categories {}

explore: course_category_maps {
  join: courses {
    type: left_outer
    sql_on: ${course_category_maps.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_content_detail_catalogs {}

explore: course_content_details {}

explore: course_content_types {
  join: courses {
    type: left_outer
    sql_on: ${course_content_types.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_features {
  join: courses {
    type: left_outer
    sql_on: ${course_features.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_highlight_texts {
  join: courses {
    type: left_outer
    sql_on: ${course_highlight_texts.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_locals {}

explore: course_prices {
  join: courses {
    type: left_outer
    sql_on: ${course_prices.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_qa_categories {
  join: courses {
    type: left_outer
    sql_on: ${course_qa_categories.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_section_content_details {
  join: course_section_contents {
    type: left_outer
    sql_on: ${course_section_content_details.course_section_content_id} = ${course_section_contents.id} ;;
    relationship: many_to_one
  }
}

explore: course_section_contents {}

explore: course_slugs {
  join: courses {
    type: left_outer
    sql_on: ${course_slugs.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_type_mappings {
  join: courses {
    type: left_outer
    sql_on: ${course_type_mappings.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: course_units {
  join: courses {
    type: left_outer
    sql_on: ${course_units.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${course_units.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }
}

explore: courses {}

explore: creative_texts {
  join: creatives {
    type: left_outer
    sql_on: ${creative_texts.creative_id} = ${creatives.id} ;;
    relationship: many_to_one
  }
}

explore: creatives {}

explore: crm_batch_end_tasks {}

explore: crm_leads {}

explore: cron_tasks {}

explore: currency_rates {}

explore: currency_rates_view {}

explore: customer_class_mappings {
  join: batch_webinars {
    type: left_outer
    sql_on: ${customer_class_mappings.batch_webinar_id} = ${batch_webinars.id} ;;
    relationship: many_to_one
  }
}

explore: customer_cycles {
  join: courses {
    type: left_outer
    sql_on: ${customer_cycles.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${customer_cycles.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: customer_records {
  join: order {
    type: left_outer
    sql_on: ${customer_records.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${customer_records.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${customer_records.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: dell_coupoun_codes {
  join: order {
    type: left_outer
    sql_on: ${dell_coupoun_codes.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${dell_coupoun_codes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${dell_coupoun_codes.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: dell_user_courses {
  join: courses {
    type: left_outer
    sql_on: ${dell_user_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${dell_user_courses.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: demo_classes {
  join: courses {
    type: left_outer
    sql_on: ${demo_classes.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: dynamic_slugs {}

explore: edureka_crm_potentials {}

explore: edureka_first_lead_date {
  join: users {
    type: left_outer
    sql_on: ${edureka_first_lead_date.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: edureka_leads_intermediate {
  join: users {
    type: left_outer
    sql_on: ${edureka_leads_intermediate.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${edureka_leads_intermediate.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: edureka_leads_subtable {
  join: users {
    type: left_outer
    sql_on: ${edureka_leads_subtable.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${edureka_leads_subtable.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: edureka_post_orders_data {
  join: courses {
    type: left_outer
    sql_on: ${edureka_post_orders_data.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${edureka_post_orders_data.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: error_logs {
  join: courses {
    type: left_outer
    sql_on: ${error_logs.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${error_logs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: extended_post_orders {
  join: order {
    type: left_outer
    sql_on: ${extended_post_orders.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: post_orders {
    type: left_outer
    sql_on: ${extended_post_orders.post_order_id} = ${post_orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${order.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${order.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${post_orders.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: affiliates {
    type: left_outer
    sql_on: ${post_orders.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: extended_user_course_modules {
  join: user_course_modules {
    type: left_outer
    sql_on: ${extended_user_course_modules.user_course_module_id} = ${user_course_modules.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${user_course_modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_modules.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${user_course_modules.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_course_modules.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: extended_user_courses {
  join: user_courses {
    type: left_outer
    sql_on: ${extended_user_courses.user_course_id} = ${user_courses.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_courses.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${user_courses.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: extended_users {
  join: users {
    type: left_outer
    sql_on: ${extended_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: feedback {
  join: courses {
    type: left_outer
    sql_on: ${feedback.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: forum_user_activities {
  join: users {
    type: left_outer
    sql_on: ${forum_user_activities.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fresh_desk_reviews {}

explore: freshdesk {
  join: courses {
    type: left_outer
    sql_on: ${freshdesk.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: geoips {}

explore: gotowebinar_accounts {}

explore: groups {}

explore: instructor_acquisition_meta {
  join: instructors {
    type: left_outer
    sql_on: ${instructor_acquisition_meta.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: instructor_acquisitions {
    type: left_outer
    sql_on: ${instructor_acquisition_meta.instructor_acquisition_id} = ${instructor_acquisitions.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${instructor_acquisitions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_acquisition_onboard_data {
  join: instructors {
    type: left_outer
    sql_on: ${instructor_acquisition_onboard_data.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_acquisition_ongoing_reviews {
  join: instructors {
    type: left_outer
    sql_on: ${instructor_acquisition_ongoing_reviews.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_acquisition_params {}

explore: instructor_acquisition_params_value {
  join: instructor_acquisitions {
    type: left_outer
    sql_on: ${instructor_acquisition_params_value.instructor_acquisitions_id} = ${instructor_acquisitions.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${instructor_acquisitions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${instructor_acquisitions.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_acquisitions {
  join: courses {
    type: left_outer
    sql_on: ${instructor_acquisitions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${instructor_acquisitions.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_bank_details {
  join: users {
    type: left_outer
    sql_on: ${instructor_bank_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_batches {}

explore: instructor_bulk_uploads {
  join: module_types {
    type: left_outer
    sql_on: ${instructor_bulk_uploads.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${instructor_bulk_uploads.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${instructor_bulk_uploads.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_calendars {
  join: users {
    type: left_outer
    sql_on: ${instructor_calendars.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_vacations {
    type: left_outer
    sql_on: ${instructor_calendars.user_vacation_id} = ${user_vacations.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_course_revisions {
  join: courses {
    type: left_outer
    sql_on: ${instructor_course_revisions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${instructor_course_revisions.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_courses {
  join: users {
    type: left_outer
    sql_on: ${instructor_courses.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: payment_plans {
    type: left_outer
    sql_on: ${instructor_courses.payment_plans_id} = ${payment_plans.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${instructor_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_extra_earnings {}

explore: instructor_infra_training_details {
  join: users {
    type: left_outer
    sql_on: ${instructor_infra_training_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_login_details {
  join: batch_webinars {
    type: left_outer
    sql_on: ${instructor_login_details.batch_webinar_id} = ${batch_webinars.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${instructor_login_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_payments {
  join: users {
    type: left_outer
    sql_on: ${instructor_payments.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: instructor_courses {
    type: left_outer
    sql_on: ${instructor_payments.instructor_courses_id} = ${instructor_courses.id} ;;
    relationship: many_to_one
  }

  join: payment_plans {
    type: left_outer
    sql_on: ${instructor_courses.payment_plans_id} = ${payment_plans.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${instructor_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_profiles {
  join: users {
    type: left_outer
    sql_on: ${instructor_profiles.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_signup_batches {
  join: users {
    type: left_outer
    sql_on: ${instructor_signup_batches.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: instructor_summary {
  join: instructors {
    type: left_outer
    sql_on: ${instructor_summary.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: instructors {}

explore: invoice_type_masters {}

explore: invoices {
  join: instructors {
    type: left_outer
    sql_on: ${invoices.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }
}

explore: job_details {
  join: job_openings {
    type: left_outer
    sql_on: ${job_details.job_openings_id} = ${job_openings.id} ;;
    relationship: many_to_one
  }

  join: job_team_names {
    type: left_outer
    sql_on: ${job_openings.job_team_name_id} = ${job_team_names.id} ;;
    relationship: many_to_one
  }
}

explore: job_openings {
  join: job_team_names {
    type: left_outer
    sql_on: ${job_openings.job_team_name_id} = ${job_team_names.id} ;;
    relationship: many_to_one
  }
}

explore: job_team_names {}

explore: knowlarity_call_logs {}

explore: lead_event_info_exts {
  join: lead_event_infos {
    type: left_outer
    sql_on: ${lead_event_info_exts.lead_event_info_id} = ${lead_event_infos.id} ;;
    relationship: many_to_one
  }
}

explore: lead_event_infos {}

explore: lead_potentials {
  join: users {
    type: left_outer
    sql_on: ${lead_potentials.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${lead_potentials.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: learners_stories {
  join: courses {
    type: left_outer
    sql_on: ${learners_stories.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${learners_stories.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: learning_manager_requests {
  join: courses {
    type: left_outer
    sql_on: ${learning_manager_requests.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${learning_manager_requests.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: library {
  join: courses {
    type: left_outer
    sql_on: ${library.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${library.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: lms_content_mappings {}

explore: lms_content_meta {
  join: courses {
    type: left_outer
    sql_on: ${lms_content_meta.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: lms_drafts {}

explore: lms_pages {}

explore: lms_queue_jobs {}

explore: lms_settings {}

explore: log_params {
  join: users {
    type: left_outer
    sql_on: ${log_params.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: mailalerts {
  join: courses {
    type: left_outer
    sql_on: ${mailalerts.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${mailalerts.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: master_course_contents {
  join: courses {
    type: left_outer
    sql_on: ${master_course_contents.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: master_courses {
  join: courses {
    type: left_outer
    sql_on: ${master_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: media {}

explore: merged_orders {
  join: users {
    type: left_outer
    sql_on: ${merged_orders.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${merged_orders.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${merged_orders.orderid} = ${order.order_id} ;;
    relationship: many_to_one
  }
}

explore: mobile_screens {}

explore: module_types {}

explore: modules {
  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: modules_bkp_20180321 {
  join: wistia_media {
    type: left_outer
    sql_on: ${modules_bkp_20180321.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules_bkp_20180321.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules_bkp_20180321.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules_bkp_20180321.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: monthly_course_sales {}

explore: ne_actions {}

explore: ne_channels {}

explore: ne_group_types {}

explore: ne_notifications {}

explore: ne_trigger_channels {}

explore: ne_triggers {}

explore: ne_user_email_notifications {
  join: user_notifications {
    type: left_outer
    sql_on: ${ne_user_email_notifications.user_notification_id} = ${user_notifications.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${ne_user_email_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: ne_user_notification_actions {
  join: users {
    type: left_outer
    sql_on: ${ne_user_notification_actions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_notifications {
    type: left_outer
    sql_on: ${ne_user_notification_actions.user_notification_id} = ${user_notifications.id} ;;
    relationship: many_to_one
  }
}

explore: ne_user_push_notifications {
  join: user_notifications {
    type: left_outer
    sql_on: ${ne_user_push_notifications.user_notification_id} = ${user_notifications.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${ne_user_push_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: ne_user_sms_notifications {
  join: user_notifications {
    type: left_outer
    sql_on: ${ne_user_sms_notifications.user_notification_id} = ${user_notifications.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${ne_user_sms_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: ne_users_notifications {
  join: users {
    type: left_outer
    sql_on: ${ne_users_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: newsletters {}

explore: notes {
  join: users {
    type: left_outer
    sql_on: ${notes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${notes.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${notes.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${notes.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: offer_batches {
  join: courses {
    type: left_outer
    sql_on: ${offer_batches.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: offer_children {
  join: offers {
    type: left_outer
    sql_on: ${offer_children.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_course_discounts {
  join: courses {
    type: left_outer
    sql_on: ${offer_course_discounts.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: offer_courses {
    type: left_outer
    sql_on: ${offer_course_discounts.offer_course_id} = ${offer_courses.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${offer_courses.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_courses {
  join: courses {
    type: left_outer
    sql_on: ${offer_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${offer_courses.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_creative_texts {
  join: offer_creatives {
    type: left_outer
    sql_on: ${offer_creative_texts.offer_creatives_id} = ${offer_creatives.id} ;;
    relationship: many_to_one
  }

  join: creative_texts {
    type: left_outer
    sql_on: ${offer_creative_texts.creative_text_id} = ${creative_texts.id} ;;
    relationship: many_to_one
  }

  join: slots {
    type: left_outer
    sql_on: ${offer_creatives.slot_id} = ${slots.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${offer_creatives.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: creatives {
    type: left_outer
    sql_on: ${offer_creatives.creative_id} = ${creatives.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_creatives {
  join: slots {
    type: left_outer
    sql_on: ${offer_creatives.slot_id} = ${slots.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${offer_creatives.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: creatives {
    type: left_outer
    sql_on: ${offer_creatives.creative_id} = ${creatives.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_discounts {
  join: offers {
    type: left_outer
    sql_on: ${offer_discounts.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_groups {
  join: offer_courses {
    type: left_outer
    sql_on: ${offer_groups.offer_course_id} = ${offer_courses.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${offer_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${offer_courses.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_types {}

explore: offer_user_groups {
  join: offers {
    type: left_outer
    sql_on: ${offer_user_groups.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offer_users {
  join: offer_courses {
    type: left_outer
    sql_on: ${offer_users.offer_course_id} = ${offer_courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${offer_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${offer_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${offer_courses.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: offers {
  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: order {
  join: users {
    type: left_outer
    sql_on: ${order.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${order.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: order_courses {
  join: order {
    type: left_outer
    sql_on: ${order_courses.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${order.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${order.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: payment_details {}

explore: payment_gateways {}

explore: payment_plan_details {
  join: payment_plans {
    type: left_outer
    sql_on: ${payment_plan_details.payment_plans_id} = ${payment_plans.id} ;;
    relationship: many_to_one
  }

  join: instructor_courses {
    type: left_outer
    sql_on: ${payment_plan_details.instructor_courses_id} = ${instructor_courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${instructor_courses.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${instructor_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: payment_plans {}

explore: payment_queue_jobs {}

explore: post_job {}

explore: post_order_payments {
  join: users {
    type: left_outer
    sql_on: ${post_order_payments.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${post_order_payments.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${post_order_payments.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }
}

explore: post_orders {
  join: offers {
    type: left_outer
    sql_on: ${post_orders.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: affiliates {
    type: left_outer
    sql_on: ${post_orders.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${post_orders.orderid} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${post_orders.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${post_orders.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: potentials_sales {}

explore: pre_orders {
  join: users {
    type: left_outer
    sql_on: ${pre_orders.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${pre_orders.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${pre_orders.orderid} = ${order.order_id} ;;
    relationship: many_to_one
  }
}

explore: qa_blobs {
  join: users {
    type: left_outer
    sql_on: ${qa_blobs.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_cache {}

explore: qa_categories {}

explore: qa_categorymetas {}

explore: qa_contentwords {
  join: questions {
    type: left_outer
    sql_on: ${qa_contentwords.questionid} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: qa_cookies {}

explore: qa_iplimits {}

explore: qa_messages {}

explore: qa_np_event {
  join: users {
    type: left_outer
    sql_on: ${qa_np_event.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_np_mail {
  join: users {
    type: left_outer
    sql_on: ${qa_np_mail.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_np_notice {
  join: users {
    type: left_outer
    sql_on: ${qa_np_notice.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_options {}

explore: qa_pages {}

explore: qa_postmetas {}

explore: qa_posts {
  join: user_course_modules {
    type: left_outer
    sql_on: ${qa_posts.user_course_module_id} = ${user_course_modules.id} ;;
    relationship: many_to_one
  }

  join: freshdesk {
    type: left_outer
    sql_on: ${qa_posts.freshdesk_id} = ${freshdesk.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${qa_posts.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${user_course_modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_modules.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${user_course_modules.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: qa_posttags {}

explore: qa_sharedevents {
  join: questions {
    type: left_outer
    sql_on: ${qa_sharedevents.questionid} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: qa_tagmetas {}

explore: qa_tagwords {}

explore: qa_titlewords {}

explore: qa_userevents {
  join: questions {
    type: left_outer
    sql_on: ${qa_userevents.questionid} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${qa_userevents.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: qa_userfavorites {
  join: users {
    type: left_outer
    sql_on: ${qa_userfavorites.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_userfields {}

explore: qa_userlevels {
  join: users {
    type: left_outer
    sql_on: ${qa_userlevels.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_userlimits {
  join: users {
    type: left_outer
    sql_on: ${qa_userlimits.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_userlogins {
  join: users {
    type: left_outer
    sql_on: ${qa_userlogins.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_usermetas {
  join: users {
    type: left_outer
    sql_on: ${qa_usermetas.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_usernotices {
  join: users {
    type: left_outer
    sql_on: ${qa_usernotices.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_userpoints {
  join: users {
    type: left_outer
    sql_on: ${qa_userpoints.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_userprofile {
  join: users {
    type: left_outer
    sql_on: ${qa_userprofile.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_uservotes {
  join: users {
    type: left_outer
    sql_on: ${qa_uservotes.userid} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: qa_widgets {
  join: widgets {
    type: left_outer
    sql_on: ${qa_widgets.widgetid} = ${widgets.id} ;;
    relationship: many_to_one
  }
}

explore: qa_words {}

explore: questions {
  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: queue_jobs {}

explore: quiz_answers {
  join: answers {
    type: left_outer
    sql_on: ${quiz_answers.answer_id} = ${answers.id} ;;
    relationship: many_to_one
  }

  join: questions {
    type: left_outer
    sql_on: ${quiz_answers.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${quiz_answers.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${quiz_answers.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${quiz_answers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: quiz_end_timings {}

explore: quiz_timings {
  join: users {
    type: left_outer
    sql_on: ${quiz_timings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${quiz_timings.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${quiz_timings.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: rds_test {}

explore: redirects {}

explore: referral_in_use {
  join: order {
    type: left_outer
    sql_on: ${referral_in_use.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${referral_in_use.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${order.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: referral_transactions {
  join: users {
    type: left_outer
    sql_on: ${referral_transactions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${referral_transactions.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${order.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: related_courses {
  join: courses {
    type: left_outer
    sql_on: ${related_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: review_course_maps {
  join: reviews {
    type: left_outer
    sql_on: ${review_course_maps.review_id} = ${reviews.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${review_course_maps.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: user_courses {
    type: left_outer
    sql_on: ${reviews.user_course_id} = ${user_courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${reviews.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${user_courses.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: reviews {
  join: user_courses {
    type: left_outer
    sql_on: ${reviews.user_course_id} = ${user_courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${reviews.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${reviews.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${user_courses.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: sales_users {
  join: users {
    type: left_outer
    sql_on: ${sales_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: sales_users_timings {
  join: sales_users {
    type: left_outer
    sql_on: ${sales_users_timings.sales_user_id} = ${sales_users.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${sales_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: searchlogs {
  join: users {
    type: left_outer
    sql_on: ${searchlogs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: self_nomination_histories {
  join: users {
    type: left_outer
    sql_on: ${self_nomination_histories.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${self_nomination_histories.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${self_nomination_histories.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }
}

explore: self_nominations {
  join: users {
    type: left_outer
    sql_on: ${self_nominations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${self_nominations.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${self_nominations.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }
}

explore: seoimages {
  join: seopages {
    type: left_outer
    sql_on: ${seoimages.seopage_id} = ${seopages.id} ;;
    relationship: many_to_one
  }
}

explore: seopages {}

explore: setting_categories {}

explore: settings {}

explore: slots {}

explore: social_facebooks {
  join: users {
    type: left_outer
    sql_on: ${social_facebooks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: social_googles {
  join: users {
    type: left_outer
    sql_on: ${social_googles.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: social_linkedins {
  join: users {
    type: left_outer
    sql_on: ${social_linkedins.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: states_list {}

explore: support_agents {}

explore: support_user_activities {
  join: answers {
    type: left_outer
    sql_on: ${support_user_activities.answer_id} = ${answers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${support_user_activities.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: questions {
    type: left_outer
    sql_on: ${answers.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${questions.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: teaching_hours {
  join: modules {
    type: left_outer
    sql_on: ${teaching_hours.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${teaching_hours.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: templates {}

explore: units {}

explore: user_actions {}

explore: user_activity_summaries {
  join: users {
    type: left_outer
    sql_on: ${user_activity_summaries.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_activity_summaries.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: user_batch_logs {
  join: users {
    type: left_outer
    sql_on: ${user_batch_logs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_batch_logs.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: user_courses {
    type: left_outer
    sql_on: ${user_batch_logs.user_course_id} = ${user_courses.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${user_courses.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: user_career_reports {
  join: users {
    type: left_outer
    sql_on: ${user_career_reports.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_career_reports.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: user_categories {
  join: users {
    type: left_outer
    sql_on: ${user_categories.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_categories.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: user_cloud_access_details {
  join: users {
    type: left_outer
    sql_on: ${user_cloud_access_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_cloud_enablers {
  join: users {
    type: left_outer
    sql_on: ${user_cloud_enablers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_course_feedbacks {
  join: instructors {
    type: left_outer
    sql_on: ${user_course_feedbacks.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_feedbacks.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_course_feedbacks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_course_module_backups {
  join: user_course_modules {
    type: left_outer
    sql_on: ${user_course_module_backups.user_course_module_id} = ${user_course_modules.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${user_course_modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_modules.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${user_course_modules.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_course_modules.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: user_course_module_details {
  join: user_course_modules {
    type: left_outer
    sql_on: ${user_course_module_details.user_course_module_id} = ${user_course_modules.id} ;;
    relationship: many_to_one
  }

  join: units {
    type: left_outer
    sql_on: ${user_course_modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_modules.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${user_course_modules.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_course_modules.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: user_course_modules {
  join: units {
    type: left_outer
    sql_on: ${user_course_modules.unit_id} = ${units.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_modules.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: modules {
    type: left_outer
    sql_on: ${user_course_modules.module_id} = ${modules.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_course_modules.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: wistia_media {
    type: left_outer
    sql_on: ${modules.wistia_media_id} = ${wistia_media.id} ;;
    relationship: many_to_one
  }

  join: module_types {
    type: left_outer
    sql_on: ${modules.module_type_id} = ${module_types.id} ;;
    relationship: many_to_one
  }

  join: instructors {
    type: left_outer
    sql_on: ${modules.instructor_id} = ${instructors.id} ;;
    relationship: many_to_one
  }

  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: user_course_stats {
  join: users {
    type: left_outer
    sql_on: ${user_course_stats.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_course_stats.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: user_courses {
  join: courses {
    type: left_outer
    sql_on: ${user_courses.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_courses.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${user_courses.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: user_educations {
  join: users {
    type: left_outer
    sql_on: ${user_educations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_events {
  join: users {
    type: left_outer
    sql_on: ${user_events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_events.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: user_google_reviews {
  join: users {
    type: left_outer
    sql_on: ${user_google_reviews.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_google_reviews.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: user_interview {
  join: courses {
    type: left_outer
    sql_on: ${user_interview.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_interview.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_lead_mappings {
  join: user_leads {
    type: left_outer
    sql_on: ${user_lead_mappings.user_lead_id} = ${user_leads.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_leads.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_leads.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: affiliates {
    type: left_outer
    sql_on: ${user_leads.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${user_leads.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: user_leads {
  join: users {
    type: left_outer
    sql_on: ${user_leads.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_leads.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: affiliates {
    type: left_outer
    sql_on: ${user_leads.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }

  join: offers {
    type: left_outer
    sql_on: ${user_leads.offer_id} = ${offers.id} ;;
    relationship: many_to_one
  }

  join: offer_types {
    type: left_outer
    sql_on: ${offers.offer_type_id} = ${offer_types.id} ;;
    relationship: many_to_one
  }

  join: corporate_accounts {
    type: left_outer
    sql_on: ${offers.corporate_accounts_id} = ${corporate_accounts.id} ;;
    relationship: many_to_one
  }

  join: utm_params {
    type: inner
    sql_on: ${utm_params.lead_id} = ${user_leads.id} ;;
    relationship: many_to_one
  }

}

explore: user_levels {}

explore: user_notifications {
  join: users {
    type: left_outer
    sql_on: ${user_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_professional_details {
  join: user_professional_questions {
    type: left_outer
    sql_on: ${user_professional_details.user_professional_question_id} = ${user_professional_questions.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_professional_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_professional_questions {}

explore: user_question_details_view {
  join: users {
    type: left_outer
    sql_on: ${user_question_details_view.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_review_counts {
  join: reviews {
    type: left_outer
    sql_on: ${user_review_counts.review_id} = ${reviews.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_review_counts.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_courses {
    type: left_outer
    sql_on: ${reviews.user_course_id} = ${user_courses.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${reviews.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: certificates {
    type: left_outer
    sql_on: ${user_courses.certificate_id} = ${certificates.id} ;;
    relationship: many_to_one
  }
}

explore: user_tokens {
  join: users {
    type: left_outer
    sql_on: ${user_tokens.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_vacations {
  join: users {
    type: left_outer
    sql_on: ${user_vacations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: user_virtual_labs {
  join: users {
    type: left_outer
    sql_on: ${user_virtual_labs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${user_virtual_labs.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: users_groups {
  join: groups {
    type: left_outer
    sql_on: ${users_groups.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${users_groups.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: utm_params {
  join: users {
    type: left_outer
    sql_on: ${utm_params.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: vendor_api_access {}

explore: webinar_invoices {}

explore: widgets {}

explore: widgets_lms_pages {
  join: lms_pages {
    type: left_outer
    sql_on: ${widgets_lms_pages.lms_page_id} = ${lms_pages.id} ;;
    relationship: many_to_one
  }

  join: widgets {
    type: left_outer
    sql_on: ${widgets_lms_pages.widget_id} = ${widgets.id} ;;
    relationship: many_to_one
  }
}

explore: wistia_media {
  join: media {
    type: left_outer
    sql_on: ${wistia_media.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: wistia_media_new {
  join: media {
    type: left_outer
    sql_on: ${wistia_media_new.media_id} = ${media.id} ;;
    relationship: many_to_one
  }
}

explore: youtube_keywords {}

explore: youtube_video_rankings {}
