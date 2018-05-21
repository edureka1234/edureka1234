view: qa_userlevels {
  sql_table_name: edureka-prod.qa_userlevels ;;

  dimension: entityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.entityid ;;
  }

  dimension: entitytype {
    type: string
    sql: ${TABLE}.entitytype ;;
  }

  dimension: level {
    type: yesno
    sql: ${TABLE}.level ;;
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
