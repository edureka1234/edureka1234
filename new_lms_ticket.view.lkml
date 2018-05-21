view: new_lms_ticket {
  sql_table_name: youtube_report.new_lms_ticket ;;

  dimension: day {
    type: string
    sql: ${TABLE}.Day ;;
  }

  dimension: lms_type {
    type: string
    sql: ${TABLE}.LMS_type ;;
  }

  dimension: tickets {
    type: number
    sql: ${TABLE}.tickets ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
