view: ambassador_credit_points {
  sql_table_name: `edureka-prod`.ambassador_credit_points ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: count_dependent {
    type: yesno
    sql: ${TABLE}.count_dependent ;;
  }

  dimension: count_value {
    type: number
    sql: ${TABLE}.count_value ;;
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

  dimension: credit_type {
    type: string
    sql: ${TABLE}.credit_type ;;
  }

  dimension: credit_value {
    type: number
    sql: ${TABLE}.credit_value ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: high_count {
    type: number
    sql: ${TABLE}.high_count ;;
  }

  dimension: low_count {
    type: number
    sql: ${TABLE}.low_count ;;
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

  dimension: recursive {
    type: number
    sql: ${TABLE}.recursive ;;
  }

  dimension: remove_multiple {
    type: yesno
    sql: ${TABLE}.remove_multiple ;;
  }

  dimension: user_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_level_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_levels.name, user_levels.id]
  }
}
