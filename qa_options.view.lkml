view: qa_options {
  sql_table_name: `edureka-prod`.qa_options ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
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