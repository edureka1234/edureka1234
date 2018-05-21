view: qa_words {
  sql_table_name: edureka-prod.qa_words ;;

  dimension: contentcount {
    type: number
    sql: ${TABLE}.contentcount ;;
  }

  dimension: tagcount {
    type: number
    sql: ${TABLE}.tagcount ;;
  }

  dimension: tagwordcount {
    type: number
    sql: ${TABLE}.tagwordcount ;;
  }

  dimension: titlecount {
    type: number
    sql: ${TABLE}.titlecount ;;
  }

  dimension: word {
    type: string
    sql: ${TABLE}.word ;;
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
