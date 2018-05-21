view: dlvrydash_instructor_dependency {
  sql_table_name: youtube_report.dlvrydash_instructor_dependency ;;

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: batches {
    type: number
    sql: ${TABLE}.batches ;;
  }

  dimension: cancellation_batch_latest {
    type: number
    sql: ${TABLE}.cancellation_batch_latest ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: infra_issues_batch_latest {
    type: number
    sql: ${TABLE}.infra_issues_batch_latest ;;
  }

  dimension: late_login_batch_latest {
    type: number
    sql: ${TABLE}.late_login_batch_latest ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: pessimistic_rating_latest {
    type: number
    sql: ${TABLE}.pessimistic_rating_latest ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
