view: extended_user_course_modules {
  sql_table_name: edureka-prod.extended_user_course_modules ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: solution_viewed {
    type: yesno
    sql: ${TABLE}.solution_viewed ;;
  }

  dimension_group: submission {
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
    sql: ${TABLE}.submission_date ;;
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
