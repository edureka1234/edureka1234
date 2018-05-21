view: dlvrydash_weekwise_report {
  sql_table_name: youtube_report.dlvrydash_weekwise_Report ;;

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

  dimension: bw_session_key {
    type: number
    sql: ${TABLE}.bw_session_key ;;
  }

  dimension: bwc_session_key {
    type: number
    sql: ${TABLE}.bwc_session_key ;;
  }

  dimension: course_id {
    type: number
    sql: ${TABLE}.course_id ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ends_on ;;
  }

  dimension: impacted_customers {
    type: number
    sql: ${TABLE}.impacted_customers ;;
  }

  dimension: infra_issues {
    type: number
    sql: ${TABLE}.infra_issues ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: is_cancelled {
    type: number
    sql: ${TABLE}.is_cancelled ;;
  }

  dimension: is_new_instructor {
    type: number
    sql: ${TABLE}.is_new_instructor ;;
  }

  dimension: issue_description {
    type: string
    sql: ${TABLE}.issue_description ;;
  }

  dimension: late_join {
    type: number
    sql: ${TABLE}.late_join ;;
  }

  dimension: no_attendees {
    type: number
    sql: ${TABLE}.no_attendees ;;
  }

  dimension: no_registrants {
    type: number
    sql: ${TABLE}.no_registrants ;;
  }

  dimension: rating_average {
    type: number
    sql: ${TABLE}.rating_average ;;
  }

  dimension: rating_bad {
    type: number
    sql: ${TABLE}.rating_bad ;;
  }

  dimension: rating_excellent {
    type: number
    sql: ${TABLE}.rating_excellent ;;
  }

  dimension: rating_good {
    type: number
    sql: ${TABLE}.rating_good ;;
  }

  dimension: short_desc {
    type: string
    sql: ${TABLE}.short_desc ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
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

  dimension_group: webinar {
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
    sql: ${TABLE}.webinar_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
