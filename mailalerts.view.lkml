view: mailalerts {
  sql_table_name: edureka-prod.mailalerts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: is_customer {
    type: number
    sql: ${TABLE}.is_customer ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: rule_qualified {
    type: string
    sql: ${TABLE}.rule_qualified ;;
  }

  dimension: rule_value {
    type: string
    sql: ${TABLE}.rule_value ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
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
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
