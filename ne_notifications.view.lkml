view: ne_notifications {
  sql_table_name: edureka-prod.ne_notifications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: api_parameters {
    type: string
    sql: ${TABLE}.api_parameters ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: expiry {
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
    sql: ${TABLE}.expiry_date ;;
  }

  dimension: group_type_id {
    type: number
    sql: ${TABLE}.group_type_id ;;
  }

  dimension: group_value {
    type: string
    sql: ${TABLE}.group_value ;;
  }

  dimension: is_schedule {
    type: yesno
    sql: ${TABLE}.is_schedule ;;
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

  dimension: processed_status {
    type: yesno
    sql: ${TABLE}.processed_status ;;
  }

  dimension: repeat_times {
    type: number
    sql: ${TABLE}.repeat_times ;;
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

  dimension: scheduler_msg {
    type: string
    sql: ${TABLE}.scheduler_msg ;;
  }

  dimension: trigger_id {
    type: number
    sql: ${TABLE}.trigger_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: zoho_api_parameter {
    type: string
    sql: ${TABLE}.zoho_api_parameter ;;
  }

  dimension: zoho_id {
    type: string
    sql: ${TABLE}.zoho_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
