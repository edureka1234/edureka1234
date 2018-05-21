view: group_info {
  sql_table_name: youtube_report.group_info ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.GroupId ;;
  }

  dimension: grouptitle {
    type: string
    sql: ${TABLE}.Grouptitle ;;
  }

  dimension: videotitle {
    type: string
    sql: ${TABLE}.Videotitle ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
