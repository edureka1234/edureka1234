view: dlvrydash_batch_feedback {
  sql_table_name: youtube_report.dlvrydash_batch_Feedback ;;

  dimension: active_flag {
    type: number
    sql: ${TABLE}.active_flag ;;
  }

  dimension: activity_status {
    type: number
    sql: ${TABLE}.activity_status ;;
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

  dimension: course_id {
    type: number
    sql: ${TABLE}.course_id ;;
  }

  dimension: detractor {
    type: number
    sql: ${TABLE}.Detractor ;;
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

  dimension: neutral {
    type: number
    sql: ${TABLE}.Neutral ;;
  }

  dimension: promoter {
    type: number
    sql: ${TABLE}.Promoter ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension: rating_latest {
    type: number
    sql: ${TABLE}.rating_latest ;;
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

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
