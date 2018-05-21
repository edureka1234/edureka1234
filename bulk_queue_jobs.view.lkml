view: bulk_queue_jobs {
  sql_table_name: `edureka-prod`.bulk_queue_jobs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: failed_attempts {
    type: yesno
    sql: ${TABLE}.failed_attempts ;;
  }

  dimension: method_name {
    type: string
    sql: ${TABLE}.method_name ;;
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

  dimension: param1 {
    type: string
    sql: ${TABLE}.param1 ;;
  }

  dimension: param2 {
    type: string
    sql: ${TABLE}.param2 ;;
  }

  dimension: param3 {
    type: string
    sql: ${TABLE}.param3 ;;
  }

  dimension: param4 {
    type: string
    sql: ${TABLE}.param4 ;;
  }

  dimension: param5 {
    type: string
    sql: ${TABLE}.param5 ;;
  }

  dimension: param6 {
    type: string
    sql: ${TABLE}.param6 ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension_group: schedule {
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
    sql: ${TABLE}.schedule_time ;;
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
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: time_taken {
    type: string
    sql: ${TABLE}.time_taken ;;
  }

  measure: count {
    type: count
    drill_fields: [id, method_name]
  }
}