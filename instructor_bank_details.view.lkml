view: instructor_bank_details {
  sql_table_name: edureka-prod.instructor_bank_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_access_email {
    type: string
    sql: ${TABLE}.account_access_email ;;
  }

  dimension: account_holder_last_name {
    type: string
    sql: ${TABLE}.account_holder_last_name ;;
  }

  dimension: account_holder_name {
    type: string
    sql: ${TABLE}.account_holder_name ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.bank_name ;;
  }

  dimension: branch_name {
    type: string
    sql: ${TABLE}.branch_name ;;
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

  dimension: ifsc_code {
    type: string
    sql: ${TABLE}.ifsc_code ;;
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

  dimension: pan_number {
    type: string
    sql: ${TABLE}.pan_number ;;
  }

  dimension: service_number {
    type: string
    sql: ${TABLE}.service_number ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      account_holder_last_name,
      bank_name,
      branch_name,
      account_holder_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      batch_new_invoices.count
    ]
  }
}
