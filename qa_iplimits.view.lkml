view: qa_iplimits {
  sql_table_name: edureka-prod.qa_iplimits ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: ip {
    type: number
    sql: ${TABLE}.ip ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }

  measure: qa_lcount {
    type: count
    drill_fields: []
  }
}
