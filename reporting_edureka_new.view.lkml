view: reporting_edureka_new {
  sql_table_name: youtube_report.reporting_edureka_new ;;

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: tool {
    type: string
    sql: ${TABLE}.tool ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
