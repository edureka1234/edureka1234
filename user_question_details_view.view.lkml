view: user_question_details_view {
  sql_table_name: edureka-prod.user_question_details_view ;;

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

  dimension: current_ctc {
    type: string
    sql: ${TABLE}.current_ctc ;;
  }

  dimension: current_industry {
    type: string
    sql: ${TABLE}.current_industry ;;
  }

  dimension: current_job_level {
    type: string
    sql: ${TABLE}.current_job_level ;;
  }

  dimension: current_location {
    type: string
    sql: ${TABLE}.current_location ;;
  }

  dimension: current_location_country {
    type: string
    sql: ${TABLE}.current_location_country ;;
  }

  dimension: employment_type {
    type: string
    sql: ${TABLE}.employment_type ;;
  }

  dimension: expected_ctc {
    type: string
    sql: ${TABLE}.expected_ctc ;;
  }

  dimension: experience {
    type: string
    sql: ${TABLE}.experience ;;
  }

  dimension: job_interested {
    type: string
    sql: ${TABLE}.job_interested ;;
  }

  dimension: linkedin {
    type: string
    sql: ${TABLE}.linkedin ;;
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

  dimension: preferred_location {
    type: string
    sql: ${TABLE}.preferred_location ;;
  }

  dimension: preferred_location_country {
    type: string
    sql: ${TABLE}.preferred_location_country ;;
  }

  dimension: relocate {
    type: string
    sql: ${TABLE}.relocate ;;
  }

  dimension: resume {
    type: string
    sql: ${TABLE}.resume ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.id, users.image_name, users.last_name, users.first_name]
  }
}
