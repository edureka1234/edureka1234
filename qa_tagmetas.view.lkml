view: qa_tagmetas {
  sql_table_name: edureka-prod.qa_tagmetas ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
