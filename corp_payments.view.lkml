view: corp_payments {
  sql_table_name: edureka-prod.corp_payments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: applied_invoices {
    type: string
    sql: ${TABLE}.applied_invoices ;;
  }

  dimension: bcy_amount {
    type: number
    sql: ${TABLE}.bcy_amount ;;
  }

  dimension: bcy_refunded_amount {
    type: number
    sql: ${TABLE}.bcy_refunded_amount ;;
  }

  dimension: bcy_unused_amount {
    type: number
    sql: ${TABLE}.bcy_unused_amount ;;
  }

  dimension: created_time {
    type: string
    sql: ${TABLE}.created_time ;;
  }

  dimension: custom_fields_list {
    type: string
    sql: ${TABLE}.custom_fields_list ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: documents {
    type: string
    sql: ${TABLE}.documents ;;
  }

  dimension: gateway_transaction_id {
    type: string
    sql: ${TABLE}.gateway_transaction_id ;;
  }

  dimension: has_attachment {
    type: string
    sql: ${TABLE}.has_attachment ;;
  }

  dimension: invoice_numbers {
    type: string
    sql: ${TABLE}.invoice_numbers ;;
  }

  dimension: last_four_digits {
    type: number
    sql: ${TABLE}.last_four_digits ;;
  }

  dimension: last_modified_time {
    type: string
    sql: ${TABLE}.last_modified_time ;;
  }

  dimension: payment_id {
    type: string
    sql: ${TABLE}.payment_id ;;
  }

  dimension: payment_mode {
    type: string
    sql: ${TABLE}.payment_mode ;;
  }

  dimension: payment_number {
    type: number
    sql: ${TABLE}.payment_number ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}.reference_number ;;
  }

  dimension: tax_amount_withheld {
    type: number
    sql: ${TABLE}.tax_amount_withheld ;;
  }

  dimension: unused_amount {
    type: number
    sql: ${TABLE}.unused_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_name, created_time]
  }
}
