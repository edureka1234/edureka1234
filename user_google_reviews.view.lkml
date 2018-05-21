view: user_google_reviews {
  sql_table_name: edureka-prod.user_google_reviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: bad {
    type: number
    sql: ${TABLE}.bad ;;
  }

  dimension_group: batch_ends {
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
    sql: ${TABLE}.batch_ends ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension_group: batch_starts {
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
    sql: ${TABLE}.batch_starts ;;
  }

  dimension: batch_title {
    type: string
    sql: ${TABLE}.batch_title ;;
  }

  dimension: class_type {
    type: string
    sql: ${TABLE}.class_type ;;
  }

  dimension: courseid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.courseid ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: excellent {
    type: number
    sql: ${TABLE}.excellent ;;
  }

  dimension: good {
    type: number
    sql: ${TABLE}.good ;;
  }

  dimension: google_review {
    type: string
    sql: ${TABLE}.google_review ;;
  }

  dimension: google_review_taken {
    type: number
    sql: ${TABLE}.google_review_taken ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: owner {
    type: number
    sql: ${TABLE}.owner ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      instructor_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name
    ]
  }
}
