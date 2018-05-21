view: quiz_answers {
  sql_table_name: `edureka-prod`.quiz_answers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: answer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.answer_id ;;
  }

  dimension: answer_text {
    type: string
    sql: ${TABLE}.answer_text ;;
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

  dimension: question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.question_id ;;
  }

  dimension: quiz_time_id {
    type: number
    sql: ${TABLE}.quiz_time_id ;;
  }

  dimension: reviewed {
    type: yesno
    sql: ${TABLE}.reviewed ;;
  }

  dimension: time_taken {
    type: number
    sql: ${TABLE}.time_taken ;;
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
      answers.id,
      questions.id,
      questions.name,
      courses.id,
      courses.short_name,
      modules.id,
      modules.file_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}