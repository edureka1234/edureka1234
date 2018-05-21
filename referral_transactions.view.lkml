view: referral_transactions {
  sql_table_name: `edureka-prod`.referral_transactions ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: edureka_cash_expired {
    type: number
    sql: ${TABLE}.edureka_cash_expired ;;
  }

  dimension: edureka_cash_used {
    type: number
    sql: ${TABLE}.edureka_cash_used ;;
  }

  dimension: edureka_cash_value {
    type: number
    sql: ${TABLE}.edureka_cash_value ;;
  }

  dimension_group: expiry {
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
    sql: ${TABLE}.expiry_date ;;
  }

  dimension: flagshow {
    type: yesno
    sql: ${TABLE}.flagshow ;;
  }

  dimension: for_referals {
    type: yesno
    sql: ${TABLE}.for_referals ;;
  }

  dimension: is_accounted {
    type: yesno
    sql: ${TABLE}.is_accounted ;;
  }

  dimension: level_id {
    type: number
    sql: ${TABLE}.level_id ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
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

  dimension: ref_user_id {
    type: number
    sql: ${TABLE}.ref_user_id ;;
  }

  dimension: refer_medium {
    type: string
    sql: ${TABLE}.refer_medium ;;
  }

  dimension: referal_email {
    type: string
    sql: ${TABLE}.referal_email ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
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
      order.order_id
    ]
  }
}