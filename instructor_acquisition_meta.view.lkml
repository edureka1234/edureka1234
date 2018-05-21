view: instructor_acquisition_meta {
  sql_table_name: `edureka-prod`.instructor_acquisition_meta ;;

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

  dimension: fixed_amount {
    type: number
    sql: ${TABLE}.fixed_amount ;;
  }

  dimension: instructor_acquisition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_acquisition_id ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
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

  dimension: negotiated_by {
    type: number
    sql: ${TABLE}.negotiated_by ;;
  }

  dimension_group: negotiation {
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
    sql: ${TABLE}.negotiation_date ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: variable_amount {
    type: number
    sql: ${TABLE}.variable_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      instructors.id,
      instructors.last_name,
      instructors.first_name,
      instructor_acquisitions.name,
      instructor_acquisitions.id
    ]
  }
}