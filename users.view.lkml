view: users {
  sql_table_name: edureka-prod.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: add1 {
    type: string
    sql: ${TABLE}.add1 ;;
  }

  dimension: add2 {
    type: string
    sql: ${TABLE}.add2 ;;
  }

  dimension: attributes {
    type: string
    sql: ${TABLE}.attributes ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: corp_id {
    type: number
    sql: ${TABLE}.corp_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: customer_status {
    type: yesno
    sql: ${TABLE}.customer_status ;;
  }

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_utm_campaign {
    type: string
    sql: ${TABLE}.first_utm_campaign ;;
  }

  dimension: first_utm_medium {
    type: string
    sql: ${TABLE}.first_utm_medium ;;
  }

  dimension: first_utm_source {
    type: string
    sql: ${TABLE}.first_utm_source ;;
  }

  dimension: image_name {
    type: string
    sql: ${TABLE}.image_name ;;
  }

  dimension: is_corp {
    type: number
    sql: ${TABLE}.is_corp ;;
  }

  dimension: is_employee {
    type: yesno
    sql: ${TABLE}.is_employee ;;
  }

  dimension: is_instructor {
    type: number
    sql: ${TABLE}.is_instructor ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_activity_time ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }

  dimension: mobile_otp {
    type: string
    sql: ${TABLE}.mobile_otp ;;
  }

  dimension: mobile_verified {
    type: yesno
    sql: ${TABLE}.mobile_verified ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified ;;
  }

  dimension: otp {
    type: number
    sql: ${TABLE}.otp ;;
  }

  dimension_group: otp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.otp_time ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: platform_access {
    type: string
    sql: ${TABLE}.platform_access ;;
  }

  dimension: preferred_timezone {
    type: string
    sql: ${TABLE}.preferred_timezone ;;
  }

  dimension: preffered_country {
    type: number
    sql: ${TABLE}.preffered_country ;;
  }

  dimension: preffered_currency {
    type: string
    sql: ${TABLE}.preffered_currency ;;
  }

  dimension: profile_link {
    type: string
    sql: ${TABLE}.profile_link ;;
  }

  dimension: share_profile {
    type: yesno
    sql: ${TABLE}.share_profile ;;
  }

  dimension: social_media {
    type: yesno
    sql: ${TABLE}.social_media ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: technology {
    type: string
    sql: ${TABLE}.technology ;;
  }

  dimension: universal_otp {
    type: yesno
    sql: ${TABLE}.universal_otp ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: verification_code {
    type: string
    sql: ${TABLE}.verification_code ;;
  }

  dimension: verified {
    type: yesno
    sql: ${TABLE}.verified ;;
  }

  dimension_group: verified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.verified_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      image_name,
      last_name,
      first_name,
      activities_new.count,
      ambassadors.count,
      ambassador_activities.count,
      ambassador_referral_clicks.count,
      audits.count,
      auth_logging.count,
      batches.count,
      batch_report_permissions.count,
      batch_webinar_absents.count,
      batch_webinar_classes.count,
      corp_hr_users.count,
      corp_usercourses_libraries.count,
      corp_user_details.count,
      corp_user_detail_copies.count,
      corp_user_request_ids.count,
      customer_cycles.count,
      customer_records.count,
      dell_coupoun_codes.count,
      dell_user_courses.count,
      edureka_first_lead_date.count,
      edureka_leads_intermediate.count,
      edureka_leads_subtable.count,
      edureka_post_orders_data.count,
      error_logs.count,
      extended_users.count,
      forum_user_activities.count,
      instructor_bank_details.count,
      instructor_calendars.count,
      instructor_courses.count,
      instructor_infra_training_details.count,
      instructor_login_details.count,
      instructor_payments.count,
      instructor_profiles.count,
      instructor_signup_batches.count,
      lead_potentials.count,
      learners_stories.count,
      learning_manager_requests.count,
      library.count,
      log_params.count,
      mailalerts.count,
      merged_orders.count,
      ne_users_notifications.count,
      ne_user_email_notifications.count,
      ne_user_notification_actions.count,
      ne_user_push_notifications.count,
      ne_user_sms_notifications.count,
      notes.count,
      offer_users.count,
      order.count,
      post_orders.count,
      post_order_payments.count,
      pre_orders.count,
      qa_blobs.count,
      qa_np_event.count,
      qa_np_mail.count,
      qa_np_notice.count,
      qa_posts.count,
      qa_userevents.count,
      qa_userfavorites.count,
      qa_userlevels.count,
      qa_userlimits.count,
      qa_userlogins.count,
      qa_usermetas.count,
      qa_usernotices.count,
      qa_userpoints.count,
      qa_userprofile.count,
      qa_uservotes.count,
      quiz_answers.count,
      quiz_timings.count,
      referral_in_use.count,
      referral_transactions.count,
      reviews.count,
      sales_users.count,
      searchlogs.count,
      self_nominations.count,
      self_nomination_histories.count,
      social_facebooks.count,
      social_googles.count,
      social_linkedins.count,
      support_user_activities.count,
      users_groups.count,
      user_activity_summaries.count,
      user_batch_logs.count,
      user_career_reports.count,
      user_categories.count,
      user_cloud_access_details.count,
      user_cloud_enablers.count,
      user_courses.count,
      user_course_feedbacks.count,
      user_course_modules.count,
      user_course_stats.count,
      user_educations.count,
      user_events.count,
      user_google_reviews.count,
      user_interview.count,
      user_leads.count,
      user_notifications.count,
      user_professional_details.count,
      user_question_details_view.count,
      user_review_counts.count,
      user_tokens.count,
      user_vacations.count,
      user_virtual_labs.count,
      utm_params.count
    ]
  }
}
