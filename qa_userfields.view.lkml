view: qa_userfields {
  sql_table_name: edureka-prod.qa_userfields ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: fieldid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fieldid ;;
  }

  dimension: flags {
    type: yesno
    sql: ${TABLE}.flags ;;
  }

  dimension: permit {
    type: yesno
    sql: ${TABLE}.permit ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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
