view: new_lms_batches {
  sql_table_name: youtube_report.new_lms_batches ;;

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: sim_batch_id {
    type: number
    sql: ${TABLE}.sim_batch_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
