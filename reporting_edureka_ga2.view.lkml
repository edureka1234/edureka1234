view: reporting_edureka_ga2 {
  sql_table_name: youtube_report.reporting_edureka_ga2 ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: page_depth {
    type: string
    sql: ${TABLE}.page_depth ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
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
