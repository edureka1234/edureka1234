view: webinar_invoices {
  sql_table_name: edureka-prod.webinar_invoices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
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

  dimension: gst {
    type: number
    sql: ${TABLE}.gst ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
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

  dimension_group: payment {
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
    sql: ${TABLE}.payment_date ;;
  }

  dimension: payment_key {
    type: string
    sql: ${TABLE}.payment_key ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: tax_deduction {
    type: number
    sql: ${TABLE}.tax_deduction ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: webinar_id {
    type: number
    sql: ${TABLE}.webinar_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
