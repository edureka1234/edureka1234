view: qa_uservotes {
  sql_table_name: edureka-prod.qa_uservotes ;;

  dimension: flag {
    type: yesno
    sql: ${TABLE}.flag ;;
  }

  dimension: postid {
    type: number
    value_format_name: id
    sql: ${TABLE}.postid ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  dimension: vote {
    type: yesno
    sql: ${TABLE}.vote ;;
  }

  measure: count {
    type: count
    drill_fields: [users.id, users.image_name, users.last_name, users.first_name]
  }
}
