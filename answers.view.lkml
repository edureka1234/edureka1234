view: answers {
  sql_table_name: edureka-prod.answers ;;

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

  dimension: is_correct {
    type: yesno
    sql: ${TABLE}.is_correct ;;
  }

  dimension: question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.question_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, questions.id, questions.name, quiz_answers.count, support_user_activities.count]
  }
}
