view: ne_users_notifications {
  sql_table_name: edureka-prod.ne_users_notifications ;;

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

  dimension: api_parameters {
    type: string
    sql: ${TABLE}.api_parameters ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: notification_id {
    type: number
    sql: ${TABLE}.notification_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.image_name, users.last_name, users.first_name]
  }
}
