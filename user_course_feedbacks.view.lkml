view: user_course_feedbacks {
  sql_table_name: `edureka-prod`.user_course_feedbacks ;;

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

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
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

  dimension: q1 {
    type: string
    sql: ${TABLE}.Q1 ;;
  }

  dimension: q2 {
    type: string
    sql: ${TABLE}.Q2 ;;
  }

  dimension: q3 {
    type: string
    sql: ${TABLE}.Q3 ;;
  }

  dimension: q4 {
    type: string
    sql: ${TABLE}.Q4 ;;
  }

  dimension: q5 {
    type: string
    sql: ${TABLE}.Q5 ;;
  }

  dimension: q6 {
    type: string
    sql: ${TABLE}.Q6 ;;
  }

  dimension: q7 {
    type: string
    sql: ${TABLE}.Q7 ;;
  }

  dimension: q8 {
    type: string
    sql: ${TABLE}.Q8 ;;
  }

  dimension: q9 {
    type: string
    sql: ${TABLE}.Q9 ;;
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
      instructors.id,
      instructors.last_name,
      instructors.first_name,
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}