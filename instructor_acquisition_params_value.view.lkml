view: instructor_acquisition_params_value {
  sql_table_name: `edureka-prod`.instructor_acquisition_params_value ;;

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

  dimension: final_rating {
    type: number
    sql: ${TABLE}.final_rating ;;
  }

  dimension: final_rating_given_by {
    type: number
    sql: ${TABLE}.final_rating_given_by ;;
  }

  dimension: final_recommendation {
    type: string
    sql: ${TABLE}.final_recommendation ;;
  }

  dimension: instructor_acquisitions_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_acquisitions_id ;;
  }

  dimension: live_class_observation_comment {
    type: string
    sql: ${TABLE}.live_class_observation_comment ;;
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

  dimension: param_id {
    type: number
    sql: ${TABLE}.param_id ;;
  }

  dimension: peer_observation {
    type: string
    sql: ${TABLE}.peer_observation ;;
  }

  dimension: peer_rating {
    type: number
    sql: ${TABLE}.peer_rating ;;
  }

  dimension: peer_rating_given_by {
    type: number
    sql: ${TABLE}.peer_rating_given_by ;;
  }

  dimension: pre_class_observation_comment {
    type: string
    sql: ${TABLE}.pre_class_observation_comment ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructor_acquisitions.name, instructor_acquisitions.id]
  }
}