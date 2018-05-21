view: sales_events_agentcalls {
  sql_table_name: youtube_report.sales_events_agentcalls ;;

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

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: acallscount {
    type: count
    drill_fields: []
  }
}
