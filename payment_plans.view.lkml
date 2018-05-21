view: payment_plans {
  sql_table_name: `edureka-prod`.payment_plans ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: default {
    type: string
    sql: ${TABLE}.`default` ;;
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

  dimension: payment_plan {
    type: string
    sql: ${TABLE}.payment_plan ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructor_courses.count, payment_plan_details.count]
  }
}