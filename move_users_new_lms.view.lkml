view: move_users_new_lms {
  sql_table_name: youtube_report.move_users_new_lms ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: v1 {
    type: string
    sql: ${TABLE}.V1 ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
