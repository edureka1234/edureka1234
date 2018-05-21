view: related_courses {
  sql_table_name: `edureka-prod`.related_courses ;;

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

  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: old_related_course_id {
    type: number
    sql: ${TABLE}.old_related_course_id ;;
  }

  dimension: related_course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.related_course_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, related_courses.id, courses.id, courses.short_name, related_courses.count]
  }
}