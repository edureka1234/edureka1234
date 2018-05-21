view: user_professional_details {
  sql_table_name: edureka-prod.user_professional_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: answer1 {
    type: string
    sql: ${TABLE}.answer1 ;;
  }

  dimension: answer2 {
    type: string
    sql: ${TABLE}.answer2 ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_professional_question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_professional_question_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user_professional_questions.id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
