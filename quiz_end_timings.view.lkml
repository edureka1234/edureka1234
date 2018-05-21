view: quiz_end_timings {
  sql_table_name: `edureka-prod`.quiz_end_timings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: last_interaction {
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
    sql: ${TABLE}.last_interaction ;;
  }

  dimension: quiz_time_id {
    type: number
    sql: ${TABLE}.quiz_time_id ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}