view: new_lms_bwr {
  sql_table_name: youtube_report.new_lms_bwr ;;

  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: class_no {
    type: number
    sql: ${TABLE}.class_no ;;
  }

  dimension: cr {
    type: number
    sql: ${TABLE}.cr ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: ir {
    type: number
    sql: ${TABLE}.ir ;;
  }

  dimension: lms_type {
    type: string
    sql: ${TABLE}.lms_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
