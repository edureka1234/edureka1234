view: ds_channel_performance_90day_powerbi {
  sql_table_name: youtube_report.ds_channel_performance_90day_powerbi ;;

  dimension: active_campaigns_count {
    type: number
    sql: ${TABLE}.active_campaigns_count ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: leads_sum_a {
    type: number
    sql: ${TABLE}.leads_sum_A ;;
  }

  dimension: leads_sum_b {
    type: number
    sql: ${TABLE}.leads_sum_B ;;
  }

  dimension: leads_sum_c {
    type: number
    sql: ${TABLE}.leads_sum_C ;;
  }

  dimension: leads_sum_enroll {
    type: number
    sql: ${TABLE}.leads_sum_Enroll ;;
  }

  dimension: leads_sum_inquiry {
    type: number
    sql: ${TABLE}.leads_sum_Inquiry ;;
  }

  dimension: leads_sum_other {
    type: number
    sql: ${TABLE}.leads_sum_Other ;;
  }

  dimension: sales_sum_a {
    type: number
    sql: ${TABLE}.sales_sum_A ;;
  }

  dimension: sales_sum_b {
    type: number
    sql: ${TABLE}.sales_sum_B ;;
  }

  dimension: sales_sum_c {
    type: number
    sql: ${TABLE}.sales_sum_C ;;
  }

  dimension: sales_sum_enroll {
    type: number
    sql: ${TABLE}.sales_sum_Enroll ;;
  }

  dimension: sales_sum_inquiry {
    type: number
    sql: ${TABLE}.sales_sum_Inquiry ;;
  }

  dimension: sales_sum_other {
    type: number
    sql: ${TABLE}.sales_sum_Other ;;
  }

  dimension: total_leads {
    type: number
    sql: ${TABLE}.total_leads ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
