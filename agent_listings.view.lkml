view: agent_listings {
  sql_table_name: `edureka-prod`.agent_listings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_status {
    type: number
    sql: ${TABLE}.activity_status ;;
  }

  dimension: agent_action {
    type: number
    sql: ${TABLE}.agent_action ;;
  }

  dimension_group: agent_action {
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
    sql: ${TABLE}.agent_action_date ;;
  }

  dimension: customercycleid {
    type: number
    value_format_name: id
    sql: ${TABLE}.customercycleid ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: day_half {
    type: number
    sql: ${TABLE}.day_half ;;
  }

  dimension: inactive_reason {
    type: string
    sql: ${TABLE}.inactive_reason ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
