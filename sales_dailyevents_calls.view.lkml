view: sales_dailyevents_calls {
  sql_table_name: youtube_report.sales_dailyevents_calls ;;

  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
  }

  dimension: bu {
    type: string
    sql: ${TABLE}.bu ;;
  }

  dimension: call_duration {
    type: string
    sql: ${TABLE}.call_duration ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.call_type ;;
  }

  dimension: closed {
    type: string
    sql: ${TABLE}.closed ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: lead_type {
    type: string
    sql: ${TABLE}.lead_type ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.modified ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: eventscount {
    type: count
    drill_fields: []
  }
}
