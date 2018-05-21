view: qa_categorymetas {
  sql_table_name: `edureka-prod`.qa_categorymetas ;;

  dimension: categoryid {
    type: number
    value_format_name: id
    sql: ${TABLE}.categoryid ;;
  }

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