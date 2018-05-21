view: customer_class_mappings {
  sql_table_name: `edureka-prod`.customer_class_mappings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agent_action_type {
    type: number
    sql: ${TABLE}.agent_action_type ;;
  }

  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: batch_webinar_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.batch_webinar_id ;;
  }

  dimension: class_no {
    type: number
    sql: ${TABLE}.class_no ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: lifecycle_id {
    type: number
    sql: ${TABLE}.lifecycle_id ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
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

  dimension: user_class_status {
    type: string
    sql: ${TABLE}.user_class_status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, batch_webinars.instructor_name, batch_webinars.id]
  }
}