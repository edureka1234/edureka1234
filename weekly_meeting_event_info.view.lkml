view: weekly_meeting_event_info {
  sql_table_name: youtube_report.weekly_meeting_event_info ;;

  dimension: course {
    type: string
    sql: ${TABLE}.Course ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
