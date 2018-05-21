view: new_lms_otp_status {
  sql_table_name: youtube_report.new_lms_otp_status ;;

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: created1 {
    type: string
    sql: ${TABLE}.created1 ;;
  }

  dimension: users_not_verified {
    type: number
    sql: ${TABLE}.users_not_verified ;;
  }

  dimension: users_tot_newlms {
    type: number
    sql: ${TABLE}.users_tot_newlms ;;
  }

  dimension: users_verified {
    type: number
    sql: ${TABLE}.users_verified ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
