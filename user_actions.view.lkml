view: user_actions {
  sql_table_name: edureka-prod.user_actions ;;

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

  dimension: entry_point_url {
    type: string
    sql: ${TABLE}.entry_point_url ;;
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

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: user_browser {
    type: string
    sql: ${TABLE}.user_browser ;;
  }

  dimension: user_clicked_from {
    type: string
    sql: ${TABLE}.user_clicked_from ;;
  }

  dimension: user_ip {
    type: string
    sql: ${TABLE}.user_ip ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
