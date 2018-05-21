view: qa_userprofile {
  sql_table_name: `edureka-prod`.qa_userprofile ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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