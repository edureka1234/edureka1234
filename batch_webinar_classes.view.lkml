view: batch_webinar_classes {
  sql_table_name: `edureka-prod`.batch_webinar_classes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: attendance_detail {
    type: string
    sql: ${TABLE}.attendanceDetail ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
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

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: isfollowed {
    type: number
    sql: ${TABLE}.isfollowed ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
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

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
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

  dimension: registrant_key {
    type: string
    sql: ${TABLE}.registrant_key ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: student_email {
    type: string
    sql: ${TABLE}.student_email ;;
  }

  dimension: student_join_time {
    type: string
    sql: ${TABLE}.student_join_time ;;
  }

  dimension: student_leave_time {
    type: string
    sql: ${TABLE}.student_leave_time ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: webinar {
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
    sql: ${TABLE}.webinar_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      lastname,
      firstname,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}