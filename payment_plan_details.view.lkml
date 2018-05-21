view: payment_plan_details {
  sql_table_name: edureka-prod.payment_plan_details ;;

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

  dimension: edureka_share {
    type: number
    sql: ${TABLE}.edureka_share ;;
  }

  dimension: instructor_courses_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_courses_id ;;
  }

  dimension: instructor_share {
    type: number
    sql: ${TABLE}.instructor_share ;;
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

  dimension: payment_plans_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payment_plans_id ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  dimension: students {
    type: number
    sql: ${TABLE}.students ;;
  }

  measure: count {
    type: count
    drill_fields: [id, payment_plans.id, instructor_courses.id]
  }
}
