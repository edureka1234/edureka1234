view: payment_gateways {
  sql_table_name: edureka-prod.payment_gateways ;;

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

  dimension: gateway_name {
    type: string
    sql: ${TABLE}.gateway_name ;;
  }

  dimension: gateway_value {
    type: string
    sql: ${TABLE}.gateway_value ;;
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

  measure: count {
    type: count
    drill_fields: [id, gateway_name]
  }
}
