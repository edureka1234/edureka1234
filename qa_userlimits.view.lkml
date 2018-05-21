view: qa_userlimits {
  sql_table_name: edureka-prod.qa_userlimits ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: qa_zcount {
    type: count
    drill_fields: [users.id, users.image_name, users.last_name, users.first_name]
  }
}
