view: leads_sales_dashboard {
  sql_table_name: youtube_report.leads_sales_dashboard ;;

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.Course ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.Created_Date ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: existing_customer {
    type: string
    sql: ${TABLE}.Existing_Customer ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}.Leads ;;
  }

  dimension: live_self_paced {
    type: string
    sql: ${TABLE}.live_self_paced ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: same_month_sale {
    type: string
    sql: ${TABLE}.Same_month_sale ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
