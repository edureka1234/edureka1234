view: dlvrydash_master_nps {
  sql_table_name: youtube_report.dlvrydash_master_nps ;;

  dimension: child_course {
    type: string
    sql: ${TABLE}.child_course ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: masters {
    type: string
    sql: ${TABLE}.masters ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: no_attendees {
    type: number
    sql: ${TABLE}.no_attendees ;;
  }

  dimension: no_average {
    type: number
    sql: ${TABLE}.no_average ;;
  }

  dimension: no_bad {
    type: number
    sql: ${TABLE}.no_bad ;;
  }

  dimension: no_excellent {
    type: number
    sql: ${TABLE}.no_excellent ;;
  }

  dimension: no_good {
    type: number
    sql: ${TABLE}.no_good ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
