view: youtube_weekly_view {
  sql_table_name: youtube_report.youtubeWeeklyView ;;

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: group_title {
    type: string
    sql: ${TABLE}.group_title ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.Views ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
