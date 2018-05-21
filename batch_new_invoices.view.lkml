view: batch_new_invoices {
  sql_table_name: `edureka-prod`.batch_new_invoices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_amount {
    type: number
    sql: ${TABLE}.base_amount ;;
  }

  dimension: batches_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.batches_id ;;
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

  dimension: extra_amount {
    type: number
    sql: ${TABLE}.extra_amount ;;
  }

  dimension: gst {
    type: number
    sql: ${TABLE}.gst ;;
  }

  dimension: incentive {
    type: number
    sql: ${TABLE}.incentive ;;
  }

  dimension: installment_no {
    type: yesno
    sql: ${TABLE}.installment_no ;;
  }

  dimension: instructor_bank_details_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_bank_details_id ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: invoice_type {
    type: number
    sql: ${TABLE}.invoice_type ;;
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

  dimension: msg_instructor {
    type: string
    sql: ${TABLE}.msg_instructor ;;
  }

  dimension: msg_ops {
    type: string
    sql: ${TABLE}.msg_ops ;;
  }

  dimension: payment_key {
    type: string
    sql: ${TABLE}.payment_key ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      instructor_bank_details.account_holder_last_name,
      instructor_bank_details.id,
      instructor_bank_details.bank_name,
      instructor_bank_details.branch_name,
      instructor_bank_details.account_holder_name,
      batches.id,
      courses.id,
      courses.short_name
    ]
  }
}