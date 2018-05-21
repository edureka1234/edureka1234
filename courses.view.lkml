view: courses {
  sql_table_name: edureka-prod.courses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: autogenerated_selfpaced {
    type: yesno
    sql: ${TABLE}.autogenerated_selfpaced ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.business_unit ;;
  }

  dimension: certificate_title {
    type: string
    sql: ${TABLE}.certificate_title ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: course_updated {
    type: number
    sql: ${TABLE}.course_updated ;;
  }

  dimension: courses_master_no {
    type: number
    sql: ${TABLE}.courses_master_no ;;
  }

  dimension: courses_master_skills {
    type: number
    sql: ${TABLE}.courses_master_skills ;;
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

  dimension: default_master_group {
    type: number
    sql: ${TABLE}.default_master_group ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: description_text {
    type: string
    sql: ${TABLE}.description_text ;;
  }

  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }

  dimension: display_title {
    type: string
    sql: ${TABLE}.display_title ;;
  }

  dimension: ecorp_visibility {
    type: yesno
    sql: ${TABLE}.ecorp_visibility ;;
  }

  dimension: fd_product_id {
    type: number
    sql: ${TABLE}.fd_product_id ;;
  }

  dimension: high_priority_enroll_count {
    type: number
    sql: ${TABLE}.high_priority_enroll_count ;;
  }

  dimension: high_priority_trial_count {
    type: number
    sql: ${TABLE}.high_priority_trial_count ;;
  }

  dimension: image_path {
    type: string
    sql: ${TABLE}.image_path ;;
  }

  dimension: is_certificate_grade {
    type: yesno
    sql: ${TABLE}.is_certificate_grade ;;
  }

  dimension: is_corp {
    type: yesno
    sql: ${TABLE}.is_corp ;;
  }

  dimension: is_master_course {
    type: yesno
    sql: ${TABLE}.is_master_course ;;
  }

  dimension: is_selfpaced {
    type: yesno
    sql: ${TABLE}.is_selfpaced ;;
  }

  dimension: learners_count {
    type: number
    sql: ${TABLE}.learners_count ;;
  }

  dimension: mailchimp_enroll_mail {
    type: string
    sql: ${TABLE}.mailchimp_enrollMail ;;
  }

  dimension: mailchimp_mc_group {
    type: string
    sql: ${TABLE}.mailchimp_mcGroup ;;
  }

  dimension: mailchimp_mc_list {
    type: string
    sql: ${TABLE}.mailchimp_mcList ;;
  }

  dimension: mailchimp_mc_list_id {
    type: string
    sql: ${TABLE}.mailchimp_mcListId ;;
  }

  dimension: mailchimp_short_code {
    type: string
    sql: ${TABLE}.mailchimp_shortCode ;;
  }

  dimension: mailchimp_title {
    type: string
    sql: ${TABLE}.mailchimp_title ;;
  }

  dimension: mailchimp_welcome_mail {
    type: string
    sql: ${TABLE}.mailchimp_welcomeMail ;;
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

  dimension: official_partner_image {
    type: string
    sql: ${TABLE}.official_partner_image ;;
  }

  dimension: official_partner_text {
    type: string
    sql: ${TABLE}.official_partner_text ;;
  }

  dimension: official_text_visible {
    type: string
    sql: ${TABLE}.official_text_visible ;;
  }

  dimension: price_inr {
    type: number
    sql: ${TABLE}.price_inr ;;
  }

  dimension: price_usd {
    type: number
    sql: ${TABLE}.price_usd ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: search_tags {
    type: string
    sql: ${TABLE}.search_tags ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: skills {
    type: string
    sql: ${TABLE}.skills ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sparkpost_enroll_mail {
    type: string
    sql: ${TABLE}.sparkpost_enrollMail ;;
  }

  dimension: sparkpost_welcome_mail {
    type: string
    sql: ${TABLE}.sparkpost_welcomeMail ;;
  }

  dimension_group: updated_end {
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
    sql: ${TABLE}.updated_end_time ;;
  }

  dimension: updated_hover_text {
    type: string
    sql: ${TABLE}.updated_hover_text ;;
  }

  dimension_group: updated_start {
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
    sql: ${TABLE}.updated_start_date ;;
  }

  dimension: upload_curriculum {
    type: string
    sql: ${TABLE}.upload_curriculum ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: visibility {
    type: yesno
    sql: ${TABLE}.visibility ;;
  }

  dimension: whythiscourse_title {
    type: string
    sql: ${TABLE}.whythiscourse_title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      short_name,
      action_views.count,
      activities_new.count,
      ambassador_activities.count,
      ambassador_referral_clicks.count,
      batches.count,
      batch_discounts.count,
      batch_issues.count,
      batch_new_invoices.count,
      batch_report_permissions.count,
      certificate_mappings.count,
      completion_contribution.count,
      corporate_supports.count,
      corp_coursename_mappers.count,
      corp_course_mappings.count,
      corp_nominations.count,
      corp_user_choices.count,
      corp_user_details.count,
      corp_user_detail_copies.count,
      corp_user_request_ids.count,
      course_category_maps.count,
      course_content_types.count,
      course_features.count,
      course_highlight_texts.count,
      course_prices.count,
      course_qa_categories.count,
      course_slugs.count,
      course_type_mappings.count,
      course_units.count,
      customer_cycles.count,
      customer_records.count,
      dell_coupoun_codes.count,
      dell_user_courses.count,
      demo_classes.count,
      edureka_leads_intermediate.count,
      edureka_leads_subtable.count,
      edureka_post_orders_data.count,
      error_logs.count,
      feedback.count,
      freshdesk.count,
      instructor_acquisitions.count,
      instructor_courses.count,
      instructor_course_revisions.count,
      lead_potentials.count,
      learners_stories.count,
      learning_manager_requests.count,
      library.count,
      lms_content_meta.count,
      mailalerts.count,
      master_courses.count,
      master_course_contents.count,
      merged_orders.count,
      notes.count,
      offer_batches.count,
      offer_courses.count,
      offer_course_discounts.count,
      order.count,
      post_orders.count,
      post_order_payments.count,
      pre_orders.count,
      questions.count,
      quiz_answers.count,
      quiz_timings.count,
      related_courses.count,
      reviews.count,
      review_course_maps.count,
      self_nominations.count,
      self_nomination_histories.count,
      teaching_hours.count,
      user_activity_summaries.count,
      user_batch_logs.count,
      user_career_reports.count,
      user_categories.count,
      user_courses.count,
      user_course_feedbacks.count,
      user_course_modules.count,
      user_course_stats.count,
      user_events.count,
      user_google_reviews.count,
      user_interview.count,
      user_leads.count,
      user_virtual_labs.count
    ]
  }
}
