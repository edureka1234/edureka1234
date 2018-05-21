view: content_performance_leads {
  sql_table_name: youtube_report.content_performance_leads ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: leads_a {
    type: number
    sql: ${TABLE}.leads_A ;;
  }

  dimension: leads_b {
    type: number
    sql: ${TABLE}.leads_B ;;
  }

  dimension: leads_blog {
    type: number
    sql: ${TABLE}.leads_Blog ;;
  }

  dimension: leads_c {
    type: number
    sql: ${TABLE}.leads_C ;;
  }

  dimension: leads_clp {
    type: number
    sql: ${TABLE}.leads_CLP ;;
  }

  dimension: leads_en {
    type: number
    sql: ${TABLE}.leads_EN ;;
  }

  dimension: leads_header {
    type: number
    sql: ${TABLE}.leads_Header ;;
  }

  dimension: leads_home {
    type: number
    sql: ${TABLE}.leads_Home ;;
  }

  dimension: leads_hs {
    type: number
    sql: ${TABLE}.leads_HS ;;
  }

  dimension: leads_in {
    type: number
    sql: ${TABLE}.leads_IN ;;
  }

  dimension: leads_phone {
    type: number
    sql: ${TABLE}.leads_Phone ;;
  }

  dimension: leads_total {
    type: number
    sql: ${TABLE}.leads_total ;;
  }

  dimension: leads_tr {
    type: number
    sql: ${TABLE}.leads_TR ;;
  }

  dimension: leads_up {
    type: number
    sql: ${TABLE}.leads_UP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
