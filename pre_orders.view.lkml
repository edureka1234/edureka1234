view: pre_orders {
  sql_table_name: `edureka-prod`.pre_orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: all_discounts {
    type: string
    sql: ${TABLE}.all_discounts ;;
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

  dimension: coupoun_code {
    type: string
    sql: ${TABLE}.coupoun_code ;;
  }

  dimension: coupoun_discount {
    type: string
    sql: ${TABLE}.coupoun_discount ;;
  }

  dimension: coupoun_status {
    type: number
    sql: ${TABLE}.coupoun_status ;;
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

  dimension: discount_value {
    type: number
    sql: ${TABLE}.discount_value ;;
  }

  dimension: discounttype {
    type: string
    sql: ${TABLE}.discounttype ;;
  }

  dimension: final_value {
    type: number
    sql: ${TABLE}.final_value ;;
  }

  dimension: freecourseid {
    type: string
    sql: ${TABLE}.freecourseid ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: gov_tax {
    type: string
    sql: ${TABLE}.gov_tax ;;
  }

  dimension: is_gst {
    type: yesno
    sql: ${TABLE}.is_gst ;;
  }

  dimension: mbsy {
    type: string
    sql: ${TABLE}.mbsy ;;
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

  dimension: original_value {
    type: number
    sql: ${TABLE}.original_value ;;
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

  dimension: servicetax_value {
    type: number
    sql: ${TABLE}.servicetax_value ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
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