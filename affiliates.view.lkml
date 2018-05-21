view: affiliates {
  sql_table_name: `edureka-prod`.affiliates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: affiliate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.affiliate_id ;;
  }

  dimension: blog_bonus {
    type: number
    sql: ${TABLE}.blog_bonus ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: mobile {
    type: number
    sql: ${TABLE}.mobile ;;
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

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: role {
    type: yesno
    sql: ${TABLE}.role ;;
  }

  dimension: super_user {
    type: yesno
    sql: ${TABLE}.super_user ;;
  }

  dimension: webinar_bonus {
    type: number
    sql: ${TABLE}.webinar_bonus ;;
  }

  dimension: withdrawal_inr {
    type: number
    sql: ${TABLE}.withdrawal_inr ;;
  }

  dimension: withdrawal_usd {
    type: number
    sql: ${TABLE}.withdrawal_usd ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      affiliates.last_name,
      affiliates.first_name,
      affiliates.id,
      affiliates.count,
      affiliates_commissions.count,
      post_orders.count,
      user_leads.count
    ]
  }
}
