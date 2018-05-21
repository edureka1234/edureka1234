view: qa_postmetas {
  sql_table_name: edureka-prod.qa_postmetas ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: postid {
    type: number
    value_format_name: id
    sql: ${TABLE}.postid ;;
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
