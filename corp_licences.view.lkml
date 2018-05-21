view: corp_licences {
  sql_table_name: `edureka-prod`.corp_licences ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: corp_id {
    type: string
    sql: ${TABLE}.corp_id ;;
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

  dimension: enable {
    type: number
    sql: ${TABLE}.enable ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.invoice_no ;;
  }

  dimension: licence_count {
    type: number
    sql: ${TABLE}.licence_count ;;
  }

  dimension_group: licence_expired {
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
    sql: ${TABLE}.licence_expired ;;
  }

  dimension: licence_type {
    type: string
    sql: ${TABLE}.licence_type ;;
  }

  dimension_group: license_start {
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
    sql: ${TABLE}.license_start_date ;;
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

  dimension: po_no {
    type: string
    sql: ${TABLE}.po_no ;;
  }

  dimension: private_batch_count {
    type: number
    sql: ${TABLE}.private_batch_count ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}