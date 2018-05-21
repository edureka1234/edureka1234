view: weekly_meeting_events_daily {
  sql_table_name: youtube_report.weekly_meeting_events_daily ;;

  dimension: closing_date {
    type: string
    sql: ${TABLE}.closing_date ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.Course ;;
  }

  dimension: created_time {
    type: string
    sql: ${TABLE}.Created_Time ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: potential_owner {
    type: string
    sql: ${TABLE}.potential_owner ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.Stage ;;
  }

  measure: count {
    type: count
    drill_fields: [created_time]
  }
}
