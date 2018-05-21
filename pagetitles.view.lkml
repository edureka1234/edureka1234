view: pagetitles {
  sql_table_name: youtube_report.pagetitles ;;

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: pagetitle {
    type: string
    sql: ${TABLE}.pagetitle ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
