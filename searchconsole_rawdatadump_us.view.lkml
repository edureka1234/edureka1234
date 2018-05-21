view: searchconsole_rawdatadump_us {
  sql_table_name: youtube_report.searchconsole_rawdatadump_us ;;

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
