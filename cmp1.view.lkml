view: cmp1 {
  sql_table_name: youtube_report.cmp1 ;;

  dimension: completed {
    type: number
    sql: ${TABLE}.completed ;;
  }

  dimension: display_title {
    type: string
    sql: ${TABLE}.display_title ;;
  }

  dimension: mth {
    type: number
    sql: ${TABLE}.mth ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: yr {
    type: number
    sql: ${TABLE}.yr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
