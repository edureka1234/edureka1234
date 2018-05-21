view: qa_messages {
  sql_table_name: edureka-prod.qa_messages ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
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

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: fromuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fromuserid ;;
  }

  dimension: messageid {
    type: number
    value_format_name: id
    sql: ${TABLE}.messageid ;;
  }

  dimension: touserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.touserid ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
