view: new_lms_eng {
  sql_table_name: youtube_report.new_lms_eng ;;

  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
  }

  dimension: course_id {
    type: number
    sql: ${TABLE}.course_id ;;
  }

  dimension: lms_type {
    type: string
    sql: ${TABLE}.LMS_type ;;
  }

  dimension: registrants {
    type: number
    sql: ${TABLE}.registrants ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
