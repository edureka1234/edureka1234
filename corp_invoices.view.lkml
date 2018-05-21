view: corp_invoices {
  sql_table_name: `edureka-prod`.corp_invoices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ach_payment_initiated {
    type: string
    sql: ${TABLE}.ach_payment_initiated ;;
  }

  dimension: adjustment {
    type: number
    sql: ${TABLE}.adjustment ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }

  dimension: base_amount {
    type: number
    sql: ${TABLE}.base_amount ;;
  }

  dimension: client_viewed_time {
    type: string
    sql: ${TABLE}.client_viewed_time ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: created_time {
    type: string
    sql: ${TABLE}.created_time ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}.currency_id ;;
  }

  dimension: custom_field_hash {
    type: string
    sql: ${TABLE}.custom_field_hash ;;
  }

  dimension: custom_fields {
    type: string
    sql: ${TABLE}.custom_fields ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
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

  dimension: documents {
    type: string
    sql: ${TABLE}.documents ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_date ;;
  }

  dimension: due_days {
    type: string
    sql: ${TABLE}.due_days ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: has_attachment {
    type: string
    sql: ${TABLE}.has_attachment ;;
  }

  dimension: invoice_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: is_emailed {
    type: string
    sql: ${TABLE}.is_emailed ;;
  }

  dimension: is_viewed_by_client {
    type: string
    sql: ${TABLE}.is_viewed_by_client ;;
  }

  dimension: last_modified_time {
    type: string
    sql: ${TABLE}.last_modified_time ;;
  }

  dimension: last_payment_date {
    type: string
    sql: ${TABLE}.last_payment_date ;;
  }

  dimension: last_reminder_sent_date {
    type: string
    sql: ${TABLE}.last_reminder_sent_date ;;
  }

  dimension: payment_expected_date {
    type: string
    sql: ${TABLE}.payment_expected_date ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}.reference_number ;;
  }

  dimension: reminders_sent {
    type: string
    sql: ${TABLE}.reminders_sent ;;
  }

  dimension: salesperson_id {
    type: string
    sql: ${TABLE}.salesperson_id ;;
  }

  dimension: salesperson_name {
    type: string
    sql: ${TABLE}.salesperson_name ;;
  }

  dimension: schedule_time {
    type: string
    sql: ${TABLE}.schedule_time ;;
  }

  dimension: shipping_charge {
    type: number
    sql: ${TABLE}.shipping_charge ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: write_off_amount {
    type: number
    sql: ${TABLE}.write_off_amount ;;
  }

  dimension: zcrm_potential_id {
    type: string
    sql: ${TABLE}.zcrm_potential_id ;;
  }

  dimension: zcrm_potential_name {
    type: string
    sql: ${TABLE}.zcrm_potential_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      created_time,
      salesperson_name,
      zcrm_potential_name,
      customer_name,
      company_name,
      invoices.id
    ]
  }
}