view: instructor_summary {
  sql_table_name: edureka-prod.instructor_summary ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_status {
    type: yesno
    sql: ${TABLE}.activity_status ;;
  }

  dimension: batch_count {
    type: number
    sql: ${TABLE}.batch_count ;;
  }

  dimension: cancellation_batch {
    type: number
    sql: ${TABLE}.cancellation_batch ;;
  }

  dimension: cancellation_batch_latest {
    type: number
    sql: ${TABLE}.cancellation_batch_latest ;;
  }

  dimension: cancellation_class {
    type: number
    sql: ${TABLE}.cancellation_class ;;
  }

  dimension: cancellation_class_latest {
    type: number
    sql: ${TABLE}.cancellation_class_latest ;;
  }

  dimension: class_completion_rate {
    type: number
    sql: ${TABLE}.class_completion_rate ;;
  }

  dimension: commercials {
    type: number
    sql: ${TABLE}.commercials ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
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

  dimension_group: first_batch {
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
    sql: ${TABLE}.first_batch_date ;;
  }

  dimension: infra_issues_batch {
    type: number
    sql: ${TABLE}.infra_issues_batch ;;
  }

  dimension: infra_issues_batch_latest {
    type: number
    sql: ${TABLE}.infra_issues_batch_latest ;;
  }

  dimension: infra_issues_class {
    type: number
    sql: ${TABLE}.infra_issues_class ;;
  }

  dimension_group: instructor_add {
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
    sql: ${TABLE}.instructor_add_date ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: is_primary_instructor {
    type: yesno
    sql: ${TABLE}.is_primary_instructor ;;
  }

  dimension_group: last_batch {
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
    sql: ${TABLE}.last_batch_date ;;
  }

  dimension: late_login_batch {
    type: number
    sql: ${TABLE}.late_login_batch ;;
  }

  dimension: late_login_batch_latest {
    type: number
    sql: ${TABLE}.late_login_batch_latest ;;
  }

  dimension: late_login_class {
    type: number
    sql: ${TABLE}.late_login_class ;;
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

  dimension: multiple_course {
    type: yesno
    sql: ${TABLE}.multiple_course ;;
  }

  dimension: nps_det {
    type: number
    sql: ${TABLE}.nps_det ;;
  }

  dimension: nps_nutral {
    type: number
    sql: ${TABLE}.nps_nutral ;;
  }

  dimension: nps_pro {
    type: number
    sql: ${TABLE}.nps_pro ;;
  }

  dimension: optimistic_rating {
    type: number
    sql: ${TABLE}.optimistic_rating ;;
  }

  dimension: optimistic_rating_latest {
    type: number
    sql: ${TABLE}.optimistic_rating_latest ;;
  }

  dimension: pessimistic_rating {
    type: number
    sql: ${TABLE}.pessimistic_rating ;;
  }

  dimension: pessimistic_rating_latest {
    type: number
    sql: ${TABLE}.pessimistic_rating_latest ;;
  }

  dimension: rating_avg {
    type: number
    sql: ${TABLE}.rating_avg ;;
  }

  dimension: rating_bad {
    type: number
    sql: ${TABLE}.rating_bad ;;
  }

  dimension: rating_exc {
    type: number
    sql: ${TABLE}.rating_exc ;;
  }

  dimension: rating_good {
    type: number
    sql: ${TABLE}.rating_good ;;
  }

  dimension: unique_feebacks {
    type: number
    sql: ${TABLE}.unique_feebacks ;;
  }

  dimension: unique_learner {
    type: number
    sql: ${TABLE}.unique_learner ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      course_name,
      instructor_name,
      instructors.id,
      instructors.last_name,
      instructors.first_name
    ]
  }
}
