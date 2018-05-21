view: batch_webinar_absents {
  sql_table_name: edureka-prod.batch_webinar_absents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: absent_reason_type {
    type: number
    sql: ${TABLE}.absent_reason_type ;;
  }

  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: batch_name {
    type: string
    sql: ${TABLE}.batch_name ;;
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

  dimension: feedback_comments {
    type: string
    sql: ${TABLE}.feedback_comments ;;
  }

  dimension: feedback_reason_type {
    type: number
    sql: ${TABLE}.feedback_reason_type ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: present_time {
    type: number
    sql: ${TABLE}.present_time ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  dimension: student_email {
    type: string
    sql: ${TABLE}.student_email ;;
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
      batch_name,
      first_name,
      last_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
