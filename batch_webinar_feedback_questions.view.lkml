view: batch_webinar_feedback_questions {
  sql_table_name: edureka-prod.batch_webinar_feedback_questions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: a1 {
    type: string
    sql: ${TABLE}.a1 ;;
  }

  dimension: a2 {
    type: string
    sql: ${TABLE}.a2 ;;
  }

  dimension: a3 {
    type: string
    sql: ${TABLE}.a3 ;;
  }

  dimension: a4 {
    type: string
    sql: ${TABLE}.a4 ;;
  }

  dimension: escalation {
    type: string
    sql: ${TABLE}.escalation ;;
  }

  dimension: old_question {
    type: string
    sql: ${TABLE}.old_question ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: question_code {
    type: string
    sql: ${TABLE}.question_code ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.question_type ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
