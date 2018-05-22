view: post_orders {
  sql_table_name: `edureka-prod`.post_orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: affiliate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.affiliate_id ;;
  }

  dimension: am_dis_value {
    type: number
    sql: ${TABLE}.am_dis_value ;;
  }

  dimension: am_money_bal_value {
    type: number
    sql: ${TABLE}.am_money_bal_value ;;
  }

  dimension: am_money_value {
    type: number
    sql: ${TABLE}.am_money_value ;;
  }

  dimension: amb_edu_cash_discount {
    type: number
    sql: ${TABLE}.amb_edu_cash_discount ;;
  }

  dimension: ambassador_flag {
    type: number
    sql: ${TABLE}.ambassadorFlag ;;
  }

  dimension: batchid {
    type: number
    value_format_name: id
    sql: ${TABLE}.batchid ;;
  }

  dimension: child_courses {
    type: string
    sql: ${TABLE}.child_courses ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: currency_id {
    type: number
    sql: ${TABLE}.currency_id ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: discount_value {
    type: number
    sql: ${TABLE}.discount_value ;;
  }

  dimension: final_value {
    type: number
    sql: ${TABLE}.final_value ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: gov_tax {
    type: string
    sql: ${TABLE}.gov_tax ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.invoice_no ;;
  }

  dimension: is_gst {
    type: yesno
    sql: ${TABLE}.is_gst ;;
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

  dimension: offer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  dimension: orderid {
    type: string
    # hidden: yes
    sql: ${TABLE}.orderid ;;
  }

  dimension: original_value {
    type: number
    sql: ${TABLE}.original_value ;;
  }

  dimension: paymentorderid {
    type: string
    sql: ${TABLE}.paymentorderid ;;
  }

  dimension: prev_course_id {
    type: number
    sql: ${TABLE}.prev_course_id ;;
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

  dimension: servicetax_value {
    type: number
    sql: ${TABLE}.servicetax_value ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: url_parameter {
    type: string
    sql: ${TABLE}.url_parameter ;;
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
      id,
      offers.id,
      affiliates.last_name,
      affiliates.first_name,
      affiliates.id,
      order.order_id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name,
      extended_post_orders.count
    ]
  }
  measure: total_revenue {
    type: sum
    sql: ${final_value} ;;
  }
  measure: average_ticket_size {
    type: number
    sql: ${total_revenue}/${count} ;;
  }
}
