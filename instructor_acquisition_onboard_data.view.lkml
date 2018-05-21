view: instructor_acquisition_onboard_data {
  sql_table_name: `edureka-prod`.instructor_acquisition_onboard_data ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
  }

  dimension: live_class_course {
    type: string
    sql: ${TABLE}.live_class_course ;;
  }

  dimension_group: live_class {
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
    sql: ${TABLE}.live_class_date ;;
  }

  dimension: live_class_link {
    type: string
    sql: ${TABLE}.live_class_link ;;
  }

  dimension: mock_class_course {
    type: string
    sql: ${TABLE}.mock_class_course ;;
  }

  dimension_group: mock_class {
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
    sql: ${TABLE}.mock_class_date ;;
  }

  dimension: mock_class_link {
    type: string
    sql: ${TABLE}.mock_class_link ;;
  }

  dimension_group: pre_class {
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
    sql: ${TABLE}.pre_class_date ;;
  }

  dimension: pre_class_link {
    type: string
    sql: ${TABLE}.pre_class_link ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructors.id, instructors.last_name, instructors.first_name]
  }
}