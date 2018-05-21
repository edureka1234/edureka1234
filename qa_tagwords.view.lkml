view: qa_tagwords {
  sql_table_name: edureka-prod.qa_tagwords ;;

  dimension: postid {
    type: number
    value_format_name: id
    sql: ${TABLE}.postid ;;
  }

  dimension: wordid {
    type: number
    value_format_name: id
    sql: ${TABLE}.wordid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
