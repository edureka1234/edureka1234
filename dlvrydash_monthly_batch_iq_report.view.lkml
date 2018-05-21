view: dlvrydash_monthly_batch_iq_report {
  sql_table_name: youtube_report.dlvrydash_monthly_Batch_Iq_Report ;;

  dimension: aggregated_rating {
    type: number
    sql: ${TABLE}.aggregated_rating ;;
  }

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: batch_count {
    type: number
    sql: ${TABLE}.batch_count ;;
  }

  dimension: cancel_0 {
    type: number
    sql: ${TABLE}.cancel_0 ;;
  }

  dimension: cancel_1_2 {
    type: number
    sql: ${TABLE}.cancel_1_2 ;;
  }

  dimension: cancel_2_more {
    type: number
    sql: ${TABLE}.cancel_2_more ;;
  }

  dimension: count_0 {
    type: number
    sql: ${TABLE}.count_0 ;;
  }

  dimension: count_1 {
    type: number
    sql: ${TABLE}.count_1 ;;
  }

  dimension: infra_0 {
    type: number
    sql: ${TABLE}.infra_0 ;;
  }

  dimension: infra_1_2 {
    type: number
    sql: ${TABLE}.infra_1_2 ;;
  }

  dimension: infra_2_more {
    type: number
    sql: ${TABLE}.infra_2_more ;;
  }

  dimension: late_login_0 {
    type: number
    sql: ${TABLE}.late_login_0 ;;
  }

  dimension: late_login_1_2 {
    type: number
    sql: ${TABLE}.late_login_1_2 ;;
  }

  dimension: late_login_2_more {
    type: number
    sql: ${TABLE}.late_login_2_more ;;
  }

  dimension: less_than_20_rating {
    type: number
    sql: ${TABLE}.less_than_20_rating ;;
  }

  dimension: new_instructors {
    type: number
    sql: ${TABLE}.new_instructors ;;
  }

  dimension: no_of_instructors {
    type: number
    sql: ${TABLE}.no_of_instructors ;;
  }

  dimension: old_instructors {
    type: number
    sql: ${TABLE}.old_instructors ;;
  }

  dimension: rating_20_40 {
    type: number
    sql: ${TABLE}.rating_20_40 ;;
  }

  dimension: rating_40_60 {
    type: number
    sql: ${TABLE}.rating_40_60 ;;
  }

  dimension: rating_60_more {
    type: number
    sql: ${TABLE}.rating_60_more ;;
  }

  dimension: unassigned {
    type: number
    sql: ${TABLE}.unassigned ;;
  }

  dimension_group: ymonth {
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
    sql: ${TABLE}.ymonth ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
