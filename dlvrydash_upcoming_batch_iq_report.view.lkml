view: dlvrydash_upcoming_batch_iq_report {
  sql_table_name: youtube_report.dlvrydash_upcoming_Batch_Iq_Report ;;

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
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

  dimension: class_completion_rate {
    type: number
    sql: ${TABLE}.class_completion_rate ;;
  }

  dimension: commercials {
    type: number
    sql: ${TABLE}.commercials ;;
  }

  dimension: infra_issues_batch_latest {
    type: number
    sql: ${TABLE}.infra_issues_batch_latest ;;
  }

  dimension: infra_issues_class {
    type: number
    sql: ${TABLE}.infra_issues_class ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: is_new_instructor {
    type: number
    sql: ${TABLE}.is_new_instructor ;;
  }

  dimension: is_primary_instructor {
    type: number
    sql: ${TABLE}.is_primary_instructor ;;
  }

  dimension: late_login_batch_latest {
    type: number
    sql: ${TABLE}.late_login_batch_latest ;;
  }

  dimension: late_login_class {
    type: number
    sql: ${TABLE}.late_login_class ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: multiple_course {
    type: number
    sql: ${TABLE}.multiple_course ;;
  }

  dimension: no_registrants {
    type: number
    sql: ${TABLE}.no_registrants ;;
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

  dimension_group: starts {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.starts_on ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
    drill_fields: []
  }
}
