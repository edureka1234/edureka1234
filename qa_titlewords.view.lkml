view: qa_titlewords {
  sql_table_name: `edureka-prod`.qa_titlewords ;;

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