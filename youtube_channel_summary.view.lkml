view: youtube_channel_summary {
  sql_table_name: youtube_report.youtube_channel_summary ;;

  dimension: avgaverage_view_duration_seconds {
    type: number
    sql: ${TABLE}.`avg(average_view_duration_seconds)` ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: group_title {
    type: string
    sql: ${TABLE}.group_title ;;
  }

  dimension_group: new_channel {
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
    sql: ${TABLE}.new_channel_date ;;
  }

  dimension: subscribers_gained {
    type: number
    sql: ${TABLE}.subscribers_gained ;;
  }

  dimension: sumlikes {
    type: number
    sql: ${TABLE}.`sum(likes)` ;;
  }

  dimension: sumshares {
    type: number
    sql: ${TABLE}.`sum(shares)` ;;
  }

  dimension: sumviews {
    type: number
    sql: ${TABLE}.`sum(views)` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
