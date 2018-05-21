view: corp_user_detail_copies {
  sql_table_name: edureka-prod.corp_user_detail_copies ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_type {
    type: string
    sql: ${TABLE}.batch_type ;;
  }

  dimension: certificate_date {
    type: string
    sql: ${TABLE}.certificate_date ;;
  }

  dimension: certificate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.certificate_id ;;
  }

  dimension: certificate_status {
    type: string
    sql: ${TABLE}.certificate_status ;;
  }

  dimension: certificate_status_before_yesterday {
    type: string
    sql: ${TABLE}.certificate_status_before_yesterday ;;
  }

  dimension: certificate_status_yesterday {
    type: string
    sql: ${TABLE}.certificate_status_yesterday ;;
  }

  dimension: certificate_sub_status {
    type: string
    sql: ${TABLE}.certificate_sub_status ;;
  }

  dimension: certificate_sub_status_before_yesterday {
    type: string
    sql: ${TABLE}.certificate_sub_status_before_yesterday ;;
  }

  dimension: certificate_sub_status_yesterday {
    type: string
    sql: ${TABLE}.certificate_sub_status_yesterday ;;
  }

  dimension: client_course_id {
    type: string
    sql: ${TABLE}.client_course_id ;;
  }

  dimension: cloud_lab_available {
    type: string
    sql: ${TABLE}.cloud_lab_available ;;
  }

  dimension: cloud_lab_revoked_date {
    type: string
    sql: ${TABLE}.cloud_lab_revoked_date ;;
  }

  dimension: cloud_lab_shared_date {
    type: string
    sql: ${TABLE}.cloud_lab_shared_date ;;
  }

  dimension: corp_id {
    type: number
    sql: ${TABLE}.corp_id ;;
  }

  dimension: course_duration {
    type: string
    sql: ${TABLE}.course_duration ;;
  }

  dimension: course_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }

  dimension: course_slug {
    type: string
    sql: ${TABLE}.course_slug ;;
  }

  dimension: course_type {
    type: string
    sql: ${TABLE}.course_type ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: hours_consumed {
    type: string
    sql: ${TABLE}.hours_consumed ;;
  }

  dimension: hours_offered {
    type: string
    sql: ${TABLE}.hours_offered ;;
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

  dimension: module_details {
    type: string
    sql: ${TABLE}.module_details ;;
  }

  dimension: modules_completed {
    type: number
    sql: ${TABLE}.modules_completed ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: no_of_assignment {
    type: number
    sql: ${TABLE}.no_of_assignment ;;
  }

  dimension: no_of_assignment_completed {
    type: number
    sql: ${TABLE}.no_of_assignment_completed ;;
  }

  dimension: no_of_days_attended {
    type: number
    sql: ${TABLE}.no_of_days_attended ;;
  }

  dimension: no_of_days_course {
    type: number
    sql: ${TABLE}.no_of_days_course ;;
  }

  dimension: no_of_hours {
    type: number
    sql: ${TABLE}.no_of_hours ;;
  }

  dimension: project_status {
    type: string
    sql: ${TABLE}.project_status ;;
  }

  dimension: project_submitted_date {
    type: string
    sql: ${TABLE}.project_submitted_date ;;
  }

  dimension: quiz_completed {
    type: number
    sql: ${TABLE}.quiz_completed ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
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
    sql: ${TABLE}.session_end_time ;;
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
    sql: ${TABLE}.session_start_time ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: total_modules {
    type: number
    sql: ${TABLE}.total_modules ;;
  }

  dimension: total_quiz {
    type: number
    sql: ${TABLE}.total_quiz ;;
  }

  dimension: total_video_duration {
    type: number
    sql: ${TABLE}.total_video_duration ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      course_name,
      certificates.id,
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
