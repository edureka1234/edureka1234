view: knowlarity_call_logs {
  sql_table_name: edureka-prod.knowlarity_call_logs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: agent_number {
    type: string
    sql: ${TABLE}.agent_number ;;
  }

  dimension: bu_name {
    type: string
    sql: ${TABLE}.bu_name ;;
  }

  dimension: call_duration {
    type: string
    sql: ${TABLE}.call_duration ;;
  }

  dimension: call_start_time {
    type: string
    sql: ${TABLE}.call_start_time ;;
  }

  dimension: called_number {
    type: string
    sql: ${TABLE}.called_number ;;
  }

  dimension: caller_number {
    type: string
    sql: ${TABLE}.caller_number ;;
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

  dimension: hangup_by {
    type: string
    sql: ${TABLE}.hangup_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: recording_url {
    type: string
    sql: ${TABLE}.recording_url ;;
  }

  dimension: shift_name {
    type: string
    sql: ${TABLE}.shift_name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_duration {
    type: string
    sql: ${TABLE}.total_duration ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, bu_name, agent_name, shift_name]
  }
}
