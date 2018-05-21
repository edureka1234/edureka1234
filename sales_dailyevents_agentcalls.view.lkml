view: sales_dailyevents_agentcalls {
  sql_table_name: youtube_report.sales_dailyevents_agentcalls ;;

  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
  }

  dimension: bu {
    type: string
    sql: ${TABLE}.bu ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.modified ;;
  }

  dimension: start_hour {
    type: number
    sql: ${TABLE}.start_hour ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: callscount {
    type: count
    drill_fields: []
  }
}
