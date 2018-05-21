view: revenue_gmv_dashboard {
  sql_table_name: youtube_report.revenue_gmv_dashboard ;;

  dimension: bu_1 {
    type: string
    sql: ${TABLE}.BU_1 ;;
  }

  dimension: count_inr {
    type: number
    sql: ${TABLE}.Count_INR ;;
  }

  dimension: count_usd {
    type: number
    sql: ${TABLE}.Count_USD ;;
  }

  dimension: country_group {
    type: string
    sql: ${TABLE}.Country_Group ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.Course ;;
  }

  dimension: course_price {
    type: number
    sql: ${TABLE}.course_price ;;
  }

  dimension_group: date_of_closing {
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
    sql: ${TABLE}.Date_of_Closing_Date ;;
  }

  dimension: date_of_closing_date_2 {
    type: string
    sql: ${TABLE}.Date_of_Closing_Date_2 ;;
  }

  dimension_group: duplicate {
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
    sql: ${TABLE}.duplicate_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: existing_customer {
    type: string
    sql: ${TABLE}.Existing_Customer ;;
  }

  dimension: gmv_inr {
    type: number
    sql: ${TABLE}.GMV_INR ;;
  }

  dimension: gmv_usd {
    type: number
    sql: ${TABLE}.GMV_USD ;;
  }

  dimension: potential_owner {
    type: string
    sql: ${TABLE}.Potential_Owner ;;
  }

  dimension: sold_value {
    type: number
    sql: ${TABLE}.Sold_Value ;;
  }

  dimension: total_amount_inr {
    type: number
    sql: ${TABLE}.Total_Amount_INR ;;
  }

  dimension: total_amount_usd {
    type: number
    sql: ${TABLE}.Total_Amount_USD ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.Total_Count ;;
  }

  dimension: total_inrminus_st {
    type: number
    sql: ${TABLE}.Total_INRminusST ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}.Total_Revenue ;;
  }

  dimension: usd_to_inr {
    type: number
    sql: ${TABLE}.USD_to_INR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
