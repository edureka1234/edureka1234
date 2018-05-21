view: instructor_courses {
  sql_table_name: edureka-prod.instructor_courses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_remarks {
    type: string
    sql: ${TABLE}.activity_remarks ;;
  }

  dimension: batch_amount {
    type: number
    sql: ${TABLE}.batch_amount ;;
  }

  dimension: class_recording {
    type: string
    sql: ${TABLE}.class_recording ;;
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

  dimension: edureka_rating {
    type: yesno
    sql: ${TABLE}.edureka_rating ;;
  }

  dimension: fixed {
    type: number
    sql: ${TABLE}.fixed ;;
  }

  dimension: incentive {
    type: number
    sql: ${TABLE}.incentive ;;
  }

  dimension: is_primary_instructor {
    type: yesno
    sql: ${TABLE}.is_primary_instructor ;;
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

  dimension: original_recording {
    type: string
    sql: ${TABLE}.original_recording ;;
  }

  dimension: parallel_batches {
    type: number
    sql: ${TABLE}.parallel_batches ;;
  }

  dimension: payment_plans_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payment_plans_id ;;
  }

  dimension: price_hour_fixed {
    type: string
    sql: ${TABLE}.price_hour_fixed ;;
  }

  dimension: price_hour_variable {
    type: string
    sql: ${TABLE}.price_hour_variable ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: single_batch_capacity {
    type: number
    sql: ${TABLE}.single_batch_capacity ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: system_rating {
    type: number
    sql: ${TABLE}.system_rating ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: variable {
    type: number
    sql: ${TABLE}.variable ;;
  }

  dimension: weekday_availability {
    type: string
    sql: ${TABLE}.weekday_availability ;;
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
      payment_plans.id,
      courses.id,
      courses.short_name,
      instructor_payments.count,
      payment_plan_details.count
    ]
  }
}
