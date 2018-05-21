view: instructor_extra_earnings {
  sql_table_name: edureka-prod.instructor_extra_earnings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: batch_invoice_id {
    type: number
    sql: ${TABLE}.batch_invoice_id ;;
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

  dimension: earning_type {
    type: yesno
    sql: ${TABLE}.earning_type ;;
  }

  dimension: installment_no {
    type: yesno
    sql: ${TABLE}.installment_no ;;
  }

  dimension: invoice_raised {
    type: yesno
    sql: ${TABLE}.invoice_raised ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
