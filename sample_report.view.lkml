view: sample_report {
  sql_table_name: youtube_report.sample_report ;;

  dimension: average_view_duration {
    type: number
    sql: ${TABLE}.averageViewDuration ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

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

  dimension: group_title {
    type: string
    sql: ${TABLE}.Group_Title ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.VideoId ;;
  }

  dimension: video_title {
    type: string
    sql: ${TABLE}.Video_Title ;;
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
