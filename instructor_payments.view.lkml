view: instructor_payments {
  sql_table_name: edureka-prod.instructor_payments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: edureka_amount {
    type: number
    sql: ${TABLE}.edureka_amount ;;
  }

  dimension: instructor_amount {
    type: number
    sql: ${TABLE}.instructor_amount ;;
  }

  dimension: instructor_courses_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_courses_id ;;
  }

  dimension: invoice_raised {
    type: number
    sql: ${TABLE}.invoice_raised ;;
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

  dimension: payment_plan_type {
    type: number
    sql: ${TABLE}.payment_plan_type ;;
  }

  dimension: service_tax_deducted {
    type: number
    sql: ${TABLE}.service_tax_deducted ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tax_deducted {
    type: number
    sql: ${TABLE}.tax_deducted ;;
  }

  dimension: total_amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.total_amount_paid ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      instructor_courses.id
    ]
  }
}
