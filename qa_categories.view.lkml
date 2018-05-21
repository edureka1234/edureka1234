view: qa_categories {
  sql_table_name: edureka-prod.qa_categories ;;

  dimension: backpath {
    type: string
    sql: ${TABLE}.backpath ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: categoryid {
    type: number
    value_format_name: id
    sql: ${TABLE}.categoryid ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: parentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parentid ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: qcount {
    type: number
    sql: ${TABLE}.qcount ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
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
