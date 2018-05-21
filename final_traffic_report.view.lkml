view: final_traffic_report {
  sql_table_name: youtube_report.final_traffic_report ;;

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
    sql: ${TABLE}.Date ;;
  }

  dimension: estimated_minutes_watched {
    type: number
    sql: ${TABLE}.estimatedMinutesWatched ;;
  }

  dimension: traffic_resource_type {
    type: string
    sql: ${TABLE}.TrafficResourceType ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.VideoId ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.Views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
