view: crm_potentialsv1 {
  sql_table_name: youtube_report.crm_potentialsv1 ;;

  dimension: cc_count {
    type: number
    sql: ${TABLE}.cc_count ;;
  }

  dimension_group: closing {
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
    sql: ${TABLE}.closing_date ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_time ;;
  }

  dimension_group: duplicate_closing {
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
    sql: ${TABLE}.duplicate_closing_date ;;
  }

  dimension_group: duplicate_created {
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
    sql: ${TABLE}.duplicate_created_time ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: en_count {
    type: number
    sql: ${TABLE}.en_count ;;
  }

  dimension: exclusion_flag {
    type: string
    sql: ${TABLE}.exclusion_flag ;;
  }

  dimension: existing_customer {
    type: string
    sql: ${TABLE}.existing_customer ;;
  }

  dimension: in_count {
    type: number
    sql: ${TABLE}.in_count ;;
  }

  dimension: in_info {
    type: string
    sql: ${TABLE}.in_info ;;
  }

  dimension: is_phone_lead {
    type: string
    sql: ${TABLE}.is_phone_lead ;;
  }

  dimension: is_webinar_lead {
    type: string
    sql: ${TABLE}.is_webinar_lead ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: payment_gateway {
    type: string
    sql: ${TABLE}.payment_gateway ;;
  }

  dimension: potential_owner {
    type: string
    sql: ${TABLE}.potential_owner ;;
  }

  dimension: pp_count {
    type: number
    sql: ${TABLE}.pp_count ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: tr_count {
    type: number
    sql: ${TABLE}.tr_count ;;
  }

  dimension_group: webinar {
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
    sql: ${TABLE}.webinar_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
