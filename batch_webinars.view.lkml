view: batch_webinars {
  sql_table_name: `edureka-prod`.batch_webinars ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: cancellation_details_updated {
    type: yesno
    sql: ${TABLE}.cancellation_details_updated ;;
  }

  dimension: cancellation_type {
    type: string
    sql: ${TABLE}.cancellation_type ;;
  }

  dimension: class_completions {
    type: string
    sql: ${TABLE}.class_completions ;;
  }

  dimension: class_no {
    type: number
    sql: ${TABLE}.class_no ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: conducted_by {
    type: number
    sql: ${TABLE}.conducted_by ;;
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

  dimension: email_sent {
    type: string
    sql: ${TABLE}.email_sent ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: infra_issues {
    type: number
    sql: ${TABLE}.infra_issues ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_login_time {
    type: string
    sql: ${TABLE}.instructor_login_time ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: is_cancelled {
    type: yesno
    sql: ${TABLE}.is_cancelled ;;
  }

  dimension: is_completed {
    type: yesno
    sql: ${TABLE}.is_completed ;;
  }

  dimension: is_extra_class {
    type: yesno
    sql: ${TABLE}.is_extra_class ;;
  }

  dimension: is_moved {
    type: yesno
    sql: ${TABLE}.is_moved ;;
  }

  dimension: issue_action {
    type: string
    sql: ${TABLE}.issue_action ;;
  }

  dimension: issue_category {
    type: string
    sql: ${TABLE}.issue_category ;;
  }

  dimension: issue_description {
    type: string
    sql: ${TABLE}.issue_description ;;
  }

  dimension: issue_details {
    type: string
    sql: ${TABLE}.issue_details ;;
  }

  dimension: issue_during_the_class {
    type: string
    sql: ${TABLE}.issue_during_the_class ;;
  }

  dimension: issue_owner {
    type: string
    sql: ${TABLE}.issue_owner ;;
  }

  dimension: issue_owner_comments {
    type: string
    sql: ${TABLE}.issue_owner_comments ;;
  }

  dimension: issue_status {
    type: string
    sql: ${TABLE}.issue_status ;;
  }

  dimension: late_join {
    type: number
    sql: ${TABLE}.late_join ;;
  }

  dimension: mail_processed {
    type: yesno
    sql: ${TABLE}.mail_processed ;;
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

  dimension_group: noted_start {
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
    sql: ${TABLE}.noted_start_time ;;
  }

  dimension: org_email {
    type: string
    sql: ${TABLE}.org_email ;;
  }

  dimension: org_key {
    type: string
    sql: ${TABLE}.org_key ;;
  }

  dimension: reason_for_class_cancellation {
    type: string
    sql: ${TABLE}.reason_for_class_cancellation ;;
  }

  dimension: recording_uploaded_in_lms {
    type: string
    sql: ${TABLE}.recording_uploaded_in_lms ;;
  }

  dimension_group: session_end {
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
    sql: ${TABLE}.session_end ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  dimension_group: session_start {
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
    sql: ${TABLE}.session_start ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: webinar_key {
    type: string
    sql: ${TABLE}.webinar_key ;;
  }

  dimension: webinar_title {
    type: string
    sql: ${TABLE}.webinar_title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      instructor_name,
      class_content_ratings.count,
      class_instructor_feedbacks.count,
      customer_class_mappings.count,
      instructor_login_details.count
    ]
  }
}