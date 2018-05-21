view: lead_event_infos {
  sql_table_name: edureka-prod.lead_event_infos ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cc_event {
    type: string
    sql: ${TABLE}.cc_event ;;
  }

  dimension: cc_metainfo {
    type: string
    sql: ${TABLE}.cc_metainfo ;;
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

  dimension: en_event {
    type: string
    sql: ${TABLE}.en_event ;;
  }

  dimension: en_metainfo {
    type: string
    sql: ${TABLE}.en_metainfo ;;
  }

  dimension: existing_customer {
    type: string
    sql: ${TABLE}.Existing_Customer ;;
  }

  dimension: existing_customer_for_courses {
    type: string
    sql: ${TABLE}.Existing_Customer_For_Courses ;;
  }

  dimension: in_event {
    type: string
    sql: ${TABLE}.in_event ;;
  }

  dimension: in_metainfo {
    type: string
    sql: ${TABLE}.in_metainfo ;;
  }

  dimension: inquiry_status {
    type: string
    sql: ${TABLE}.inquiry_status ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
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

  dimension: offer_info {
    type: string
    sql: ${TABLE}.offer_info ;;
  }

  dimension: potential_desc {
    type: string
    sql: ${TABLE}.potential_desc ;;
  }

  dimension: potential_owner {
    type: string
    sql: ${TABLE}.potential_owner ;;
  }

  dimension: pp_event {
    type: string
    sql: ${TABLE}.pp_event ;;
  }

  dimension: pp_metainfo {
    type: string
    sql: ${TABLE}.pp_metainfo ;;
  }

  dimension: system_converted_lead {
    type: string
    sql: ${TABLE}.system_converted_lead ;;
  }

  dimension: system_converted_potential {
    type: string
    sql: ${TABLE}.system_converted_potential ;;
  }

  dimension: system_generated_activity {
    type: string
    sql: ${TABLE}.system_generated_activity ;;
  }

  dimension: tr_event {
    type: string
    sql: ${TABLE}.tr_event ;;
  }

  dimension: tr_metainfo {
    type: string
    sql: ${TABLE}.tr_metainfo ;;
  }

  dimension: zoho_lead_id {
    type: string
    sql: ${TABLE}.zoho_lead_id ;;
  }

  dimension: zoho_potential_id {
    type: string
    sql: ${TABLE}.zoho_potential_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, lead_event_info_exts.count]
  }
}
