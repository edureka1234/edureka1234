view: teaching_hours {
  sql_table_name: edureka-prod.teaching_hours ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: hours {
    type: number
    sql: ${TABLE}.hours ;;
  }

  dimension: module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.module_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, modules.id, modules.file_name, courses.id, courses.short_name]
  }
}
