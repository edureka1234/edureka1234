view: batch_feedback_summaries {
  sql_table_name: `edureka-prod`.batch_feedback_summaries ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: average_feedbacks {
    type: number
    sql: ${TABLE}.average_feedbacks ;;
  }

  dimension: bad_feedbacks {
    type: number
    sql: ${TABLE}.bad_feedbacks ;;
  }

  dimension: batches_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.batches_id ;;
  }

  dimension: class_cancelled {
    type: yesno
    sql: ${TABLE}.class_cancelled ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}.class_id ;;
  }

  dimension: excellent_feedbacks {
    type: number
    sql: ${TABLE}.excellent_feedbacks ;;
  }

  dimension: good_feedbacks {
    type: number
    sql: ${TABLE}.good_feedbacks ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
  }

  dimension: late_login {
    type: yesno
    sql: ${TABLE}.late_login ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructors.id, instructors.last_name, instructors.first_name, batches.id]
  }
}
