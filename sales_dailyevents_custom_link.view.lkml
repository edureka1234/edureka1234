view: sales_dailyevents_custom_link {
  sql_table_name: youtube_report.sales_dailyevents_custom_link ;;

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: generated_by {
    type: string
    sql: ${TABLE}.generated_by ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.modified ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }




}
