view: activities_new {
  sql_table_name: edureka-prod.activities_new ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clicked_from {
    type: string
    sql: ${TABLE}.clicked_from ;;
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

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
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

  dimension: module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.module_id ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: plan_id {
    type: string
    sql: ${TABLE}.plan_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_browser {
    type: string
    sql: ${TABLE}.user_browser ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ip {
    type: string
    sql: ${TABLE}.user_ip ;;
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
      users.first_name,
      modules.id,
      modules.file_name
    ]
  }
}
