view: sales_dailyevents_cc_pp {
  sql_table_name: youtube_report.sales_dailyevents_cc_pp ;;

  dimension: cc_pp {
    type: string
    sql: ${TABLE}.cc_pp ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.modified ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: cc_ppcount {
    type: count
    drill_fields: []
  }
}
