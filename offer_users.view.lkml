view: offer_users {
  sql_table_name: `edureka-prod`.offer_users ;;

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

  dimension: custom_param1 {
    type: string
    sql: ${TABLE}.custom_param1 ;;
  }

  dimension: custom_param2 {
    type: string
    sql: ${TABLE}.custom_param2 ;;
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

  dimension: offer_batch_id {
    type: number
    sql: ${TABLE}.offer_batch_id ;;
  }

  dimension: offer_course_discount_inr {
    type: number
    sql: ${TABLE}.offer_course_discount_inr ;;
  }

  dimension: offer_course_discount_note {
    type: string
    sql: ${TABLE}.offer_course_discount_note ;;
  }

  dimension_group: offer_course_discount_startson {
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
    sql: ${TABLE}.offer_course_discount_startson ;;
  }

  dimension: offer_course_discount_type {
    type: string
    sql: ${TABLE}.offer_course_discount_type ;;
  }

  dimension: offer_course_discount_usd {
    type: number
    sql: ${TABLE}.offer_course_discount_usd ;;
  }

  dimension: offer_course_discount_val {
    type: number
    sql: ${TABLE}.offer_course_discount_val ;;
  }

  dimension_group: offer_course_discount_validity {
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
    sql: ${TABLE}.offer_course_discount_validity ;;
  }

  dimension: offer_course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_course_id ;;
  }

  dimension: old_offer_course_id {
    type: number
    sql: ${TABLE}.old_offer_course_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      offer_courses.id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}