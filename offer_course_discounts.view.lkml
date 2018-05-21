view: offer_course_discounts {
  sql_table_name: `edureka-prod`.offer_course_discounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: currency {
    type: number
    sql: ${TABLE}.currency ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: discount_type {
    type: number
    sql: ${TABLE}.discount_type ;;
  }

  dimension: offer_course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_course_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name, offer_courses.id]
  }
}