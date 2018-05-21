view: activity_summaries_updates {
  sql_table_name: ``edureka-prod``.activity_summaries_updates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cc_count {
    type: number
    sql: ${TABLE}.cc_count ;;
  }

  dimension: cc_pp_custom_link {
    type: number
    sql: ${TABLE}.cc_pp_custom_link ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: custom_link {
    type: number
    sql: ${TABLE}.custom_link ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: en_custom_link {
    type: number
    sql: ${TABLE}.en_custom_link ;;
  }

  dimension: en_leads {
    type: number
    sql: ${TABLE}.en_leads ;;
  }

  dimension: en_sales {
    type: number
    sql: ${TABLE}.en_sales ;;
  }

  dimension: expired_link {
    type: number
    sql: ${TABLE}.expired_link ;;
  }

  dimension: in_en {
    type: number
    sql: ${TABLE}.IN_en ;;
  }

  dimension: in_en_sales {
    type: number
    sql: ${TABLE}.IN_en_sales ;;
  }

  dimension: in_inquiry {
    type: number
    sql: ${TABLE}.IN_inquiry ;;
  }

  dimension: in_inquiry_sales {
    type: number
    sql: ${TABLE}.IN_inquiry_sales ;;
  }

  dimension: in_phone {
    type: number
    sql: ${TABLE}.IN_phone ;;
  }

  dimension: in_phone_sales {
    type: number
    sql: ${TABLE}.IN_phone_sales ;;
  }

  dimension: in_total_inquiry {
    type: number
    sql: ${TABLE}.IN_total_inquiry ;;
  }

  dimension: india_lead_count {
    type: number
    sql: ${TABLE}.india_lead_count ;;
  }

  dimension: india_lead_sales_count {
    type: number
    sql: ${TABLE}.india_lead_sales_count ;;
  }

  dimension: inquiry {
    type: number
    sql: ${TABLE}.inquiry ;;
  }

  dimension: inquiry_leads {
    type: number
    sql: ${TABLE}.inquiry_leads ;;
  }

  dimension: inquiry_sales {
    type: number
    sql: ${TABLE}.inquiry_sales ;;
  }

  dimension: lead_sales_count {
    type: number
    sql: ${TABLE}.lead_sales_count ;;
  }

  dimension: not_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.not_paid ;;
  }

  dimension: not_paid_en_count {
    type: string
    sql: ${TABLE}.not_paid_en_count ;;
  }

  dimension: not_responded {
    type: number
    sql: ${TABLE}.not_responded ;;
  }

  dimension: paid_customers_inq {
    type: number
    sql: ${TABLE}.paid_customers_inq ;;
  }

  dimension: paid_link {
    type: number
    sql: ${TABLE}.paid_link ;;
  }

  dimension: phone_leads {
    type: number
    sql: ${TABLE}.phone_leads ;;
  }

  dimension: phone_sales {
    type: number
    sql: ${TABLE}.phone_sales ;;
  }

  dimension: pp_count {
    type: number
    sql: ${TABLE}.pp_count ;;
  }

  dimension: rp_count {
    type: number
    sql: ${TABLE}.rp_count ;;
  }

  dimension: total_cc_pp {
    type: number
    sql: ${TABLE}.total_cc_pp ;;
  }

  dimension: total_en_count {
    type: string
    sql: ${TABLE}.total_en_count ;;
  }

  dimension: total_lead_count {
    type: number
    sql: ${TABLE}.total_Lead_count ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  dimension: us_en {
    type: number
    sql: ${TABLE}.US_en ;;
  }

  dimension: us_en_sales {
    type: number
    sql: ${TABLE}.US_en_sales ;;
  }

  dimension: us_inquiry {
    type: number
    sql: ${TABLE}.US_inquiry ;;
  }

  dimension: us_inquiry_sales {
    type: number
    sql: ${TABLE}.US_inquiry_sales ;;
  }

  dimension: us_phone {
    type: number
    sql: ${TABLE}.US_phone ;;
  }

  dimension: us_phone_sales {
    type: number
    sql: ${TABLE}.US_phone_sales ;;
  }

  dimension: us_total_inquiry {
    type: number
    sql: ${TABLE}.US_total_inquiry ;;
  }

  dimension: usa_lead_count {
    type: number
    sql: ${TABLE}.usa_Lead_Count ;;
  }

  dimension: usa_lead_sales_count {
    type: number
    sql: ${TABLE}.usa_lead_sales_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}