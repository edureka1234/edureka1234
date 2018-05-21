view: user_course_module_backups {
  sql_table_name: edureka-prod.user_course_module_backups ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attempt {
    type: number
    sql: ${TABLE}.attempt ;;
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

  dimension: marks {
    type: number
    sql: ${TABLE}.marks ;;
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

  dimension: total_marks {
    type: number
    sql: ${TABLE}.total_marks ;;
  }

  dimension: user_course_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_course_module_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_course_modules.id]
  }
}
