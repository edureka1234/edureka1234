view: sales_users_timings {
  sql_table_name: edureka-prod.sales_users_timings ;;

  dimension: day_id {
    type: string
    sql: ${TABLE}.day_id ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
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

  dimension: sales_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_user_id ;;
  }

  dimension: shift {
    type: string
    sql: ${TABLE}.shift ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: virtual {
    type: yesno
    sql: ${TABLE}.virtual ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_users.id]
  }
}
