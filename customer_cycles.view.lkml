view: customer_cycles {
  sql_table_name: edureka-prod.customer_cycles ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: about_us {
    type: string
    sql: ${TABLE}.about_us ;;
  }

  dimension: agent_comment {
    type: string
    sql: ${TABLE}.agent_comment ;;
  }

  dimension: agent_name {
    type: number
    sql: ${TABLE}.agent_name ;;
  }

  dimension: agent_status {
    type: string
    sql: ${TABLE}.agent_status ;;
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

  dimension: batch_shift {
    type: number
    sql: ${TABLE}.batch_shift ;;
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

  dimension: batch_status {
    type: number
    sql: ${TABLE}.batch_status ;;
  }

  dimension: batch_title {
    type: string
    sql: ${TABLE}.batch_title ;;
  }

  dimension: class_added {
    type: number
    sql: ${TABLE}.class_added ;;
  }

  dimension: class_type {
    type: string
    sql: ${TABLE}.class_type ;;
  }

  dimension: cls_status {
    type: number
    sql: ${TABLE}.cls_status ;;
  }

  dimension: courseid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.courseid ;;
  }

  dimension: current_title {
    type: string
    sql: ${TABLE}.current_title ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}.education ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: google_review {
    type: string
    sql: ${TABLE}.google_review ;;
  }

  dimension: google_review_taken {
    type: string
    sql: ${TABLE}.google_review_taken ;;
  }

  dimension: industry_domain {
    type: string
    sql: ${TABLE}.industry_domain ;;
  }

  dimension: industry_role {
    type: string
    sql: ${TABLE}.industry_role ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: last_class_resolution {
    type: string
    sql: ${TABLE}.last_class_resolution ;;
  }

  dimension_group: last_contact {
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
    sql: ${TABLE}.last_contact ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }

  dimension: motivation {
    type: string
    sql: ${TABLE}.motivation ;;
  }

  dimension_group: next_class_end {
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
    sql: ${TABLE}.next_class_end ;;
  }

  dimension: next_class_id {
    type: number
    sql: ${TABLE}.next_class_id ;;
  }

  dimension_group: next_class_start {
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
    sql: ${TABLE}.next_class_start ;;
  }

  dimension: nps {
    type: number
    sql: ${TABLE}.nps ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: particulartolearn {
    type: string
    sql: ${TABLE}.particulartolearn ;;
  }

  dimension_group: scheduled_contact {
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
    sql: ${TABLE}.scheduled_contact ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
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

  dimension: wishlist {
    type: string
    sql: ${TABLE}.wishlist ;;
  }

  dimension: work_exp {
    type: string
    sql: ${TABLE}.work_exp ;;
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
      agent_name,
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
