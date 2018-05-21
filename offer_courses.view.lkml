view: offer_courses {
  sql_table_name: edureka-prod.offer_courses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_discount_group {
    type: number
    sql: ${TABLE}.batch_discount_group ;;
  }

  dimension: buy_sequence {
    type: number
    sql: ${TABLE}.buy_sequence ;;
  }

  dimension: course_bundle {
    type: string
    sql: ${TABLE}.course_bundle ;;
  }

  dimension: course_groups_id {
    type: number
    sql: ${TABLE}.course_groups_id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: days_valid {
    type: number
    value_format_name: id
    sql: ${TABLE}.days_valid ;;
  }

  dimension: free_count {
    type: number
    sql: ${TABLE}.free_count ;;
  }

  dimension: is_group {
    type: yesno
    sql: ${TABLE}.is_group ;;
  }

  dimension: offer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      courses.id,
      courses.short_name,
      offers.id,
      offer_course_discounts.count,
      offer_groups.count,
      offer_users.count
    ]
  }
}
