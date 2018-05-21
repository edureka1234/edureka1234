view: dlvrydash_canc_type {
  sql_table_name: youtube_report.dlvrydash_canc_type ;;

  dimension: cancellations {
    type: string
    sql: ${TABLE}.cancellations ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
