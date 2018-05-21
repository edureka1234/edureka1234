view: master_courses {
  sql_table_name: edureka-prod.master_courses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: child_course_default_parent {
    type: yesno
    sql: ${TABLE}.child_course_default_parent ;;
  }

  dimension: child_course_id {
    type: number
    sql: ${TABLE}.child_course_id ;;
  }

  dimension: child_course_type {
    type: string
    sql: ${TABLE}.child_course_type ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified ;;
  }

  dimension: self_linked_courses {
    type: number
    sql: ${TABLE}.self_linked_courses ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}
