view: invoices {
  sql_table_name: edureka-prod.invoices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_amount {
    type: number
    sql: ${TABLE}.base_amount ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
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

  dimension: final_amount {
    type: number
    sql: ${TABLE}.final_amount ;;
  }

  dimension: installment_no {
    type: number
    sql: ${TABLE}.installment_no ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
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

  dimension: payment_plan_type {
    type: number
    sql: ${TABLE}.payment_plan_type ;;
  }

  dimension: service_tax {
    type: number
    sql: ${TABLE}.service_tax ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tax_deduction {
    type: number
    sql: ${TABLE}.tax_deduction ;;
  }

  dimension: variable_amount {
    type: number
    sql: ${TABLE}.variable_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructors.id, instructors.last_name, instructors.first_name, corp_invoices.count]
  }
}
