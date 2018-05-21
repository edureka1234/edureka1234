view: offer_batches {
  sql_table_name: edureka-prod.offer_batches ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: batch_title {
    type: string
    sql: ${TABLE}.batch_title ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: discount_inr {
    type: number
    sql: ${TABLE}.discount_inr ;;
  }

  dimension: discount_note {
    type: string
    sql: ${TABLE}.discount_note ;;
  }

  dimension: discount_type {
    type: string
    sql: ${TABLE}.discount_type ;;
  }

  dimension: discount_usd {
    type: number
    sql: ${TABLE}.discount_usd ;;
  }

  dimension: discount_val {
    type: number
    sql: ${TABLE}.discount_val ;;
  }

  dimension_group: discount_validity {
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
    sql: ${TABLE}.discount_validity ;;
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

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}
