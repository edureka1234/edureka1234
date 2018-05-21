view: batch_issues {
  sql_table_name: `edureka-prod`.batch_issues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: assigned {
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
    sql: ${TABLE}.assigned_on ;;
  }

  dimension: avg_feedback {
    type: number
    sql: ${TABLE}.avg_feedback ;;
  }

  dimension: bad_feedback {
    type: number
    sql: ${TABLE}.bad_feedback ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: cancellation_reason {
    type: string
    sql: ${TABLE}.cancellation_reason ;;
  }

  dimension: cancellation_type {
    type: string
    sql: ${TABLE}.cancellation_type ;;
  }

  dimension_group: class {
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
    sql: ${TABLE}.class_date ;;
  }

  dimension: class_no {
    type: yesno
    sql: ${TABLE}.class_no ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}.closed_on ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created ;;
  }

  dimension: feedback_comment {
    type: string
    sql: ${TABLE}.feedback_comment ;;
  }

  dimension: instructor_contact {
    type: string
    sql: ${TABLE}.instructor_contact ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: issue_description {
    type: string
    sql: ${TABLE}.issue_description ;;
  }

  dimension: issue_owner_email {
    type: string
    sql: ${TABLE}.issue_owner_email ;;
  }

  dimension: issue_owner_id {
    type: number
    sql: ${TABLE}.issue_owner_id ;;
  }

  dimension: issue_owner_name {
    type: string
    sql: ${TABLE}.issue_owner_name ;;
  }

  dimension: issue_type {
    type: yesno
    sql: ${TABLE}.issue_type ;;
  }

  dimension: late_by {
    type: number
    sql: ${TABLE}.late_by ;;
  }

  dimension_group: login {
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
    sql: ${TABLE}.login_time ;;
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

  dimension: new_instructor {
    type: yesno
    sql: ${TABLE}.new_instructor ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  dimension: slot {
    type: yesno
    sql: ${TABLE}.slot ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, issue_owner_name, instructor_name, courses.id, courses.short_name]
  }
}
