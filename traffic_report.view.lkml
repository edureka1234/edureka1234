view: traffic_report {
  sql_table_name: youtube_report.traffic_report ;;

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

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
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
