view: batch_discounts {
  sql_table_name: `edureka-prod`.batch_discounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: amb {
    type: string
    sql: ${TABLE}.amb ;;
  }

  dimension: batch_id {
    type: string
    sql: ${TABLE}.batch_id ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: discount_inr {
    type: number
    sql: ${TABLE}.discount_inr ;;
  }

  dimension: discount_type {
    type: string
    sql: ${TABLE}.discount_type ;;
  }

  dimension: discount_usd {
    type: number
    sql: ${TABLE}.discount_usd ;;
  }

  dimension_group: discount_validity {
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
    sql: ${TABLE}.discount_validity ;;
  }

  dimension: discount_value {
    type: number
    sql: ${TABLE}.discount_value ;;
  }

  dimension: expiry_alert {
    type: number
    sql: ${TABLE}.expiry_alert ;;
  }

  dimension: expiry_mail_sent {
    type: number
    sql: ${TABLE}.expiry_mail_sent ;;
  }

  dimension: extend_validity {
    type: number
    sql: ${TABLE}.extend_validity ;;
  }

  dimension: extra_cash_percentage {
    type: number
    sql: ${TABLE}.extra_cash_percentage ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: generate_salesalert {
    type: number
    sql: ${TABLE}.generate_salesalert ;;
  }

  dimension: if_post_payment_discount {
    type: yesno
    sql: ${TABLE}.if_post_payment_discount ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: mobile_no {
    type: string
    sql: ${TABLE}.mobile_no ;;
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

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: template_mail_sent {
    type: yesno
    sql: ${TABLE}.template_mail_sent ;;
  }

  dimension: url_parameter {
    type: string
    sql: ${TABLE}.url_parameter ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, courses.id, courses.short_name]
  }
}
