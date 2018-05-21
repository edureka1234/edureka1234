view: ne_user_push_notifications {
  sql_table_name: edureka-prod.ne_user_push_notifications ;;

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

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: is_sent {
    type: yesno
    sql: ${TABLE}.is_sent ;;
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

  dimension: parameters {
    type: string
    sql: ${TABLE}.parameters ;;
  }

  dimension_group: schedule {
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
    sql: ${TABLE}.schedule_time ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_time ;;
  }

  dimension: status_description {
    type: string
    sql: ${TABLE}.status_description ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_notification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_notification_id ;;
  }

  dimension: user_token {
    type: string
    sql: ${TABLE}.user_token ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user_notifications.id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
