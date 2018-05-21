view: relevant_videos {
  sql_table_name: youtube_report.relevantVideos ;;

  dimension: custom_title {
    type: string
    sql: ${TABLE}.custom_title ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
