view: instructor_acquisition_ongoing_reviews {
  sql_table_name: edureka-prod.instructor_acquisition_ongoing_reviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: acquisition_id {
    type: number
    sql: ${TABLE}.acquisition_id ;;
  }

  dimension: action_taken {
    type: string
    sql: ${TABLE}.action_taken ;;
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

  dimension: observations {
    type: string
    sql: ${TABLE}.observations ;;
  }

  dimension: reason_for_avg {
    type: string
    sql: ${TABLE}.reason_for_avg ;;
  }

  dimension: reason_for_bad {
    type: string
    sql: ${TABLE}.reason_for_bad ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructors.id, instructors.last_name, instructors.first_name]
  }
}
