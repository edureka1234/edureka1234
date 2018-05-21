view: sales_dailyevents_inquiry {
  sql_table_name: youtube_report.sales_dailyevents_inquiry ;;

  dimension: closed {
    type: string
    sql: ${TABLE}.closed ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: in_status {
    type: string
    sql: ${TABLE}.in_status ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.modified ;;
  }

  dimension: potential_course {
    type: string
    sql: ${TABLE}.potential_course ;;
  }

  dimension: potential_email {
    type: string
    sql: ${TABLE}.potential_email ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: inquirycount {
    type: count
    drill_fields: []
  }
}
