view: offer_groups {
  sql_table_name: `edureka-prod`.offer_groups ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
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

  dimension: edited_by_agent {
    type: string
    sql: ${TABLE}.edited_by_agent ;;
  }

  dimension: free_course_id {
    type: number
    sql: ${TABLE}.free_course_id ;;
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

  dimension: offer_code {
    type: string
    sql: ${TABLE}.offer_code ;;
  }

  dimension: offer_course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_course_id ;;
  }

  dimension: offer_group_banner_header {
    type: string
    sql: ${TABLE}.offer_group_banner_header ;;
  }

  dimension: offer_group_discount_inr {
    type: number
    sql: ${TABLE}.offer_group_discount_inr ;;
  }

  dimension: offer_group_discount_link {
    type: string
    sql: ${TABLE}.offer_group_discount_link ;;
  }

  dimension: offer_group_discount_note {
    type: string
    sql: ${TABLE}.offer_group_discount_note ;;
  }

  dimension_group: offer_group_discount_startson {
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
    sql: ${TABLE}.offer_group_discount_startson ;;
  }

  dimension: offer_group_discount_type {
    type: string
    sql: ${TABLE}.offer_group_discount_type ;;
  }

  dimension: offer_group_discount_usd {
    type: number
    sql: ${TABLE}.offer_group_discount_usd ;;
  }

  dimension: offer_group_discount_val {
    type: number
    sql: ${TABLE}.offer_group_discount_val ;;
  }

  dimension_group: offer_group_discount_validity {
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
    sql: ${TABLE}.offer_group_discount_validity ;;
  }

  dimension: offer_type {
    type: string
    sql: ${TABLE}.offer_type ;;
  }

  dimension: offer_utm_campaign {
    type: string
    sql: ${TABLE}.offer_utm_campaign ;;
  }

  dimension: offer_utm_source {
    type: string
    sql: ${TABLE}.offer_utm_source ;;
  }

  dimension: old_offer_course_id {
    type: number
    sql: ${TABLE}.old_offer_course_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, offer_courses.id]
  }
}