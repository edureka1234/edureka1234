view: dlvrydash_nps_view {
  sql_table_name: youtube_report.dlvrydash_nps_view ;;

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: class_seq {
    type: number
    sql: ${TABLE}.class_seq ;;
  }

  dimension: course_id {
    type: number
    sql: ${TABLE}.course_id ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
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

  dimension: exp_attendees {
    type: number
    sql: ${TABLE}.exp_attendees ;;
  }

  dimension: exp_average {
    type: number
    sql: ${TABLE}.exp_average ;;
  }

  dimension: exp_bad {
    type: number
    sql: ${TABLE}.exp_bad ;;
  }

  dimension: exp_excellent {
    type: number
    sql: ${TABLE}.exp_excellent ;;
  }

  dimension: exp_good {
    type: number
    sql: ${TABLE}.exp_good ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: is_new_instructor {
    type: number
    sql: ${TABLE}.is_new_instructor ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: no_attendees {
    type: number
    sql: ${TABLE}.no_attendees ;;
  }

  dimension: no_average {
    type: number
    sql: ${TABLE}.no_average ;;
  }

  dimension: no_bad {
    type: number
    sql: ${TABLE}.no_bad ;;
  }

  dimension: no_excellent {
    type: number
    sql: ${TABLE}.no_excellent ;;
  }

  dimension: no_good {
    type: number
    sql: ${TABLE}.no_good ;;
  }

  dimension: shift {
    type: string
    sql: ${TABLE}.shift ;;
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

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.weekday ;;
  }

  measure: count {
    type: count
    drill_fields: [instructor_name]
  }
}
