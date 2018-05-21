view: crm_leads {
  sql_table_name: edureka-prod.crm_leads ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: batch_type {
    type: string
    sql: ${TABLE}.batch_type ;;
  }

  dimension: batchname {
    type: string
    sql: ${TABLE}.batchname ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.contact_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
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

  dimension: existingcustomer {
    type: number
    sql: ${TABLE}.existingcustomer ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: leadid {
    type: string
    sql: ${TABLE}.leadid ;;
  }

  dimension: mobile {
    type: string
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

  dimension: usercourseid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usercourseid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, batchname, instructor_name, firstname, lastname]
  }
}
