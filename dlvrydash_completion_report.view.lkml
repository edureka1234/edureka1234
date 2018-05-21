view: dlvrydash_completion_report {
  sql_table_name: youtube_report.dlvrydash_completion_Report ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: batch_hours {
    type: number
    sql: ${TABLE}.batch_hours ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: first_batch {
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
    sql: ${TABLE}.first_batch_date ;;
  }

  dimension: first_batch_type {
    type: string
    sql: ${TABLE}.first_batch_type ;;
  }

  dimension: hours_data {
    type: string
    sql: ${TABLE}.hours_data ;;
  }

  dimension: is_completed {
    type: number
    sql: ${TABLE}.is_completed ;;
  }

  dimension_group: last_batch {
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
    sql: ${TABLE}.last_batch_date ;;
  }

  dimension: last_batch_type {
    type: string
    sql: ${TABLE}.last_batch_type ;;
  }

  dimension: table_key {
    type: number
    sql: ${TABLE}.table_key ;;
  }

  dimension: unique_hourcount {
    type: number
    sql: ${TABLE}.unique_hourcount ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
