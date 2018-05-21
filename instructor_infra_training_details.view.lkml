view: instructor_infra_training_details {
  sql_table_name: `edureka-prod`.instructor_infra_training_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attended_live_class {
    type: string
    sql: ${TABLE}.attended_live_class ;;
  }

  dimension: audit_comment {
    type: string
    sql: ${TABLE}.audit_comment ;;
  }

  dimension: audit_conducted_by {
    type: number
    sql: ${TABLE}.audit_conducted_by ;;
  }

  dimension: class_flow {
    type: string
    sql: ${TABLE}.class_flow ;;
  }

  dimension: communication_flow {
    type: string
    sql: ${TABLE}.communication_flow ;;
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

  dimension: demo_ready {
    type: string
    sql: ${TABLE}.demo_ready ;;
  }

  dimension: demo_winning_areas {
    type: string
    sql: ${TABLE}.demo_winning_areas ;;
  }

  dimension: drop_box_setup {
    type: string
    sql: ${TABLE}.drop_box_setup ;;
  }

  dimension: energy {
    type: string
    sql: ${TABLE}.energy ;;
  }

  dimension: engagement {
    type: string
    sql: ${TABLE}.engagement ;;
  }

  dimension: internet_provider {
    type: string
    sql: ${TABLE}.internet_provider ;;
  }

  dimension: internet_speed {
    type: string
    sql: ${TABLE}.internet_speed ;;
  }

  dimension: introduction {
    type: string
    sql: ${TABLE}.introduction ;;
  }

  dimension: jitter_rating {
    type: string
    sql: ${TABLE}.jitter_rating ;;
  }

  dimension: last_audit_date {
    type: string
    sql: ${TABLE}.last_audit_date ;;
  }

  dimension: lms_explanation {
    type: string
    sql: ${TABLE}.lms_explanation ;;
  }

  dimension: mic_model {
    type: string
    sql: ${TABLE}.mic_model ;;
  }

  dimension: mock_class_gap_areas {
    type: string
    sql: ${TABLE}.mock_class_gap_areas ;;
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

  dimension: power_backup {
    type: string
    sql: ${TABLE}.power_backup ;;
  }

  dimension: pre_class_training_notes {
    type: string
    sql: ${TABLE}.pre_class_training_notes ;;
  }

  dimension: query_handling {
    type: string
    sql: ${TABLE}.query_handling ;;
  }

  dimension: ups {
    type: string
    sql: ${TABLE}.ups ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: winning_areas {
    type: string
    sql: ${TABLE}.winning_areas ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.image_name, users.last_name, users.first_name]
  }
}