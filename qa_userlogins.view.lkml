view: qa_userlogins {
  sql_table_name: `edureka-prod`.qa_userlogins ;;

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: identifiermd5 {
    type: string
    sql: ${TABLE}.identifiermd5 ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [users.id, users.image_name, users.last_name, users.first_name]
  }
}