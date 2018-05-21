view: user_course_module_details {
  sql_table_name: `edureka-prod`.user_course_module_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignment_evaluation {
    type: string
    sql: ${TABLE}.assignment_evaluation ;;
  }

  dimension: assignment_status {
    type: string
    sql: ${TABLE}.assignment_status ;;
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