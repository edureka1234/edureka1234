view: payment_details {
  sql_table_name: edureka-prod.payment_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amount_paid ;;
  }

  dimension: batch_invoices_id {
    type: number
    sql: ${TABLE}.batch_invoices_id ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
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

  dimension: part_payment {
    type: yesno
    sql: ${TABLE}.part_payment ;;
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

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tds_deducted {
    type: number
    sql: ${TABLE}.tds_deducted ;;
  }

  dimension: txn_id {
    type: string
    sql: ${TABLE}.txn_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
