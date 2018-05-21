view: event_context_mapping {
  sql_table_name: youtube_report.event_context_mapping ;;

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_context {
    type: string
    sql: ${TABLE}.event_context ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
