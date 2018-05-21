view: qa_cookies {
  sql_table_name: edureka-prod.qa_cookies ;;

  dimension: cookieid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cookieid ;;
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

  dimension: createip {
    type: number
    sql: ${TABLE}.createip ;;
  }

  dimension: writeip {
    type: number
    sql: ${TABLE}.writeip ;;
  }

  dimension_group: written {
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
    sql: ${TABLE}.written ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
