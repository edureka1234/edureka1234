view: extended_post_orders {
  sql_table_name: edureka-prod.extended_post_orders ;;

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

  dimension: gateway_order_id {
    type: string
    sql: ${TABLE}.gateway_order_id ;;
  }

  dimension: gateway_response_data {
    type: string
    sql: ${TABLE}.gateway_response_data ;;
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

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: post_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.post_order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, order.order_id, post_orders.id]
  }
}
