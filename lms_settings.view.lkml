view: lms_settings {
  sql_table_name: edureka-prod.lms_settings ;;

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

  dimension: setting_key {
    type: string
    sql: ${TABLE}.setting_key ;;
  }

  dimension: setting_value {
    type: string
    sql: ${TABLE}.setting_value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
