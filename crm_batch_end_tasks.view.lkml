view: crm_batch_end_tasks {
  sql_table_name: `edureka-prod`.crm_batch_end_tasks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: processing_time {
    type: string
    sql: ${TABLE}.processing_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}