view: dlvrydash_cancellation_report {
  sql_table_name: youtube_report.dlvrydash_cancellation_Report ;;

  dimension: active_flag {
    type: number
    sql: ${TABLE}.active_flag ;;
  }

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: batch_type {
    type: string
    sql: ${TABLE}.batch_type ;;
  }

  dimension: cancelled_classes {
    type: string
    sql: ${TABLE}.Cancelled_Classes ;;
  }

  dimension: course_id {
    type: number
    sql: ${TABLE}.course_id ;;
  }

  dimension_group: dateduplicate {
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
    sql: ${TABLE}.dateduplicate ;;
  }

  dimension_group: dateduplicateweek {
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
    sql: ${TABLE}.dateduplicateweek ;;
  }

  dimension_group: ends {
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
    sql: ${TABLE}.ends_on ;;
  }

  dimension: impacted_customers {
    type: number
    sql: ${TABLE}.impacted_customers ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: is_batch_cancelled {
    type: number
    sql: ${TABLE}.is_batch_cancelled ;;
  }

  dimension: is_completed {
    type: number
    sql: ${TABLE}.is_completed ;;
  }

  dimension: is_instructor_confirmed {
    type: number
    sql: ${TABLE}.is_instructor_confirmed ;;
  }

  dimension: is_multiple_cancelled {
    type: number
    sql: ${TABLE}.is_multiple_cancelled ;;
  }

  dimension: is_new_instructor {
    type: number
    sql: ${TABLE}.is_new_instructor ;;
  }

  dimension: no_classes {
    type: number
    sql: ${TABLE}.no_classes ;;
  }

  dimension: no_classes_cancelled {
    type: number
    sql: ${TABLE}.no_classes_cancelled ;;
  }

  dimension: no_infra_issues {
    type: number
    sql: ${TABLE}.no_infra_issues ;;
  }

  dimension: no_late_join {
    type: number
    sql: ${TABLE}.no_late_join ;;
  }

  dimension: no_registrants {
    type: number
    sql: ${TABLE}.no_registrants ;;
  }

  dimension: short_desc {
    type: string
    sql: ${TABLE}.short_desc ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
