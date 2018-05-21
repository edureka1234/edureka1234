view: extended_user_courses {
  sql_table_name: edureka-prod.extended_user_courses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignment_data {
    type: string
    sql: ${TABLE}.assignment_data ;;
  }

  dimension: completed_percentage {
    type: number
    sql: ${TABLE}.completed_percentage ;;
  }

  dimension: content_rating_negative {
    type: yesno
    sql: ${TABLE}.content_rating_negative ;;
  }

  dimension: content_rating_positive {
    type: yesno
    sql: ${TABLE}.content_rating_positive ;;
  }

  dimension: grade_freezed {
    type: yesno
    sql: ${TABLE}.grade_freezed ;;
  }

  dimension: instructor_rating_negative {
    type: yesno
    sql: ${TABLE}.instructor_rating_negative ;;
  }

  dimension: instructor_rating_positive {
    type: yesno
    sql: ${TABLE}.instructor_rating_positive ;;
  }

  dimension: marks {
    type: number
    sql: ${TABLE}.marks ;;
  }

  dimension: other_rating_negative {
    type: yesno
    sql: ${TABLE}.other_rating_negative ;;
  }

  dimension: other_rating_positive {
    type: yesno
    sql: ${TABLE}.other_rating_positive ;;
  }

  dimension: positive_feedback_count {
    type: number
    sql: ${TABLE}.positive_feedback_count ;;
  }

  dimension: project_data {
    type: string
    sql: ${TABLE}.project_data ;;
  }

  dimension: quiz_data {
    type: string
    sql: ${TABLE}.quiz_data ;;
  }

  dimension: support_rating_negative {
    type: yesno
    sql: ${TABLE}.support_rating_negative ;;
  }

  dimension: support_rating_positive {
    type: yesno
    sql: ${TABLE}.support_rating_positive ;;
  }

  dimension: user_course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_course_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_courses.certificate_course_display_name, user_courses.certificate_lname, user_courses.certificate_fname, user_courses.id]
  }
}
