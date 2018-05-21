view: user_interview {
  sql_table_name: edureka-prod.user_interview ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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

  dimension: round_1_assessor {
    type: string
    sql: ${TABLE}.round_1_assessor ;;
  }

  dimension_group: round_1 {
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
    sql: ${TABLE}.round_1_date ;;
  }

  dimension: round_1_remarks {
    type: string
    sql: ${TABLE}.round_1_remarks ;;
  }

  dimension: round_2_assesment_ink {
    type: string
    sql: ${TABLE}.round_2_assesment_ink ;;
  }

  dimension_group: round_2 {
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
    sql: ${TABLE}.round_2_date ;;
  }

  dimension: round_2_instructor {
    type: string
    sql: ${TABLE}.round_2_instructor ;;
  }

  dimension: round_2_rating {
    type: number
    sql: ${TABLE}.round_2_rating ;;
  }

  dimension: round_2_remarks {
    type: string
    sql: ${TABLE}.round_2_remarks ;;
  }

  dimension: round_2_status {
    type: number
    sql: ${TABLE}.round_2_status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
