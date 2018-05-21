view: order {
  sql_table_name: `edureka-prod`.`order` ;;

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: coupon_id {
    type: string
    sql: ${TABLE}.coupon_id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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

  dimension: discounted_price {
    type: number
    sql: ${TABLE}.discounted_price ;;
  }

  dimension: discounted_price_usa {
    type: string
    sql: ${TABLE}.discounted_price_usa ;;
  }

  dimension: finalamount {
    type: string
    sql: ${TABLE}.finalamount ;;
  }

  dimension: finalamount_usa {
    type: string
    sql: ${TABLE}.finalamount_usa ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: paid {
    type: yesno
    sql: ${TABLE}.paid ;;
  }

  dimension: paypal_responce {
    type: string
    sql: ${TABLE}.paypal_responce ;;
  }

  dimension: paypal_status {
    type: string
    sql: ${TABLE}.paypal_status ;;
  }

  dimension: prediscounted {
    type: number
    sql: ${TABLE}.prediscounted ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: servicetax {
    type: string
    sql: ${TABLE}.servicetax ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: total_usa {
    type: number
    sql: ${TABLE}.total_usa ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name,
      customer_records.count,
      dell_coupoun_codes.count,
      extended_post_orders.count,
      merged_orders.count,
      order_courses.count,
      post_orders.count,
      post_order_payments.count,
      pre_orders.count,
      referral_in_use.count,
      referral_transactions.count,
      self_nominations.count,
      self_nomination_histories.count
    ]
  }
}