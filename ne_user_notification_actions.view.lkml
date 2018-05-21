view: ne_user_notification_actions {
  sql_table_name: `edureka-prod`.ne_user_notification_actions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_id {
    type: number
    sql: ${TABLE}.action_id ;;
  }

  dimension_group: action {
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
    sql: ${TABLE}.action_time ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: notification_id {
    type: number
    sql: ${TABLE}.notification_id ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      user_notifications.id
    ]
  }
}