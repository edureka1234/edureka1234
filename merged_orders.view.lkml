view: merged_orders {
  sql_table_name: `edureka-prod`.merged_orders ;;

  dimension: ambassador_flag {
    type: number
    sql: ${TABLE}.ambassadorFlag ;;
  }

  dimension: ambassador_money_balance_usd {
    type: number
    sql: ${TABLE}.ambassadorMoneyBalanceUsd ;;
  }

  dimension: ambassador_money_usd {
    type: number
    sql: ${TABLE}.ambassadorMoneyUsd ;;
  }

  dimension: batchid {
    type: number
    value_format_name: id
    sql: ${TABLE}.batchid ;;
  }

  dimension: batchtitle {
    type: string
    sql: ${TABLE}.batchtitle ;;
  }

  dimension: courseid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.courseid ;;
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

  dimension: discountinr {
    type: number
    sql: ${TABLE}.discountinr ;;
  }

  dimension: discountusd {
    type: string
    sql: ${TABLE}.discountusd ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
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

  dimension: orderid {
    type: string
    # hidden: yes
    sql: ${TABLE}.orderid ;;
  }

  dimension: paymentorderid {
    type: string
    sql: ${TABLE}.paymentorderid ;;
  }

  dimension: priceinr {
    type: number
    sql: ${TABLE}.priceinr ;;
  }

  dimension: priceusd {
    type: number
    sql: ${TABLE}.priceusd ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: servicetaxinr {
    type: string
    sql: ${TABLE}.servicetaxinr ;;
  }

  dimension: servicetaxusd {
    type: number
    sql: ${TABLE}.servicetaxusd ;;
  }

  dimension: totalinr {
    type: string
    sql: ${TABLE}.totalinr ;;
  }

  dimension: totalusd {
    type: string
    sql: ${TABLE}.totalusd ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name,
      order.order_id
    ]
  }
}