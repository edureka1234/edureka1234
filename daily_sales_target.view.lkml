view: daily_sales_target {
  sql_table_name: youtube_report.daily_sales_target ;;

  dimension: agents {
    type: string
    sql: ${TABLE}.Agents ;;
  }

  dimension: daily_sales_target {
    type: number
    sql: ${TABLE}.daily_sales_target ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: monthly_target {
    type: number
    sql: ${TABLE}.monthly_target ;;
  }

  dimension: shift {
    type: string
    sql: ${TABLE}.shift ;;
  }

  dimension: yesterday_target {
    type: number
    sql: ${TABLE}.yesterday_target ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
