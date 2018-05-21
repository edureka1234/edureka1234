view: corp_nominations {
  sql_table_name: `edureka-prod`.corp_nominations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alternate_schedule_requested {
    type: yesno
    sql: ${TABLE}.alternate_schedule_requested ;;
  }

  dimension: batch_type {
    type: string
    sql: ${TABLE}.batch_type ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: declined {
    type: yesno
    sql: ${TABLE}.declined ;;
  }

  dimension_group: declined {
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
    sql: ${TABLE}.declined_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: enroll_link {
    type: string
    sql: ${TABLE}.enroll_link ;;
  }

  dimension: enroll_status {
    type: yesno
    sql: ${TABLE}.enroll_status ;;
  }

  dimension_group: first_reminder {
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
    sql: ${TABLE}.first_reminder_date ;;
  }

  dimension: first_reminder_sent {
    type: yesno
    sql: ${TABLE}.first_reminder_sent ;;
  }

  dimension_group: invitation {
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
    sql: ${TABLE}.invitation_date ;;
  }

  dimension: link_validity {
    type: string
    sql: ${TABLE}.link_validity ;;
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

  dimension: new_user {
    type: yesno
    sql: ${TABLE}.new_user ;;
  }

  dimension_group: requested {
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
    sql: ${TABLE}.requested_date ;;
  }

  dimension_group: second_reminder {
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
    sql: ${TABLE}.second_reminder_date ;;
  }

  dimension: second_reminder_sent {
    type: yesno
    sql: ${TABLE}.second_reminder_sent ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}