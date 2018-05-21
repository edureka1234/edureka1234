view: seo_processed_table1 {
  sql_table_name: youtube_report.seo_processed_table1 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: actual_clicks {
    type: number
    sql: ${TABLE}.actual_clicks ;;
  }

  dimension: actual_ctr {
    type: number
    sql: ${TABLE}.actual_ctr ;;
  }

  dimension: actual_impressions {
    type: number
    sql: ${TABLE}.actual_impressions ;;
  }

  dimension: actual_ranking {
    type: number
    sql: ${TABLE}.actual_ranking ;;
  }

  dimension: breakdown_clicks {
    type: number
    sql: ${TABLE}.breakdown_clicks ;;
  }

  dimension: breakdown_ctr {
    type: number
    sql: ${TABLE}.breakdown_ctr ;;
  }

  dimension_group: breakdown {
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
    sql: ${TABLE}.breakdown_date ;;
  }

  dimension: breakdown_impressions {
    type: number
    sql: ${TABLE}.breakdown_impressions ;;
  }

  dimension: breakdown_ranking {
    type: number
    sql: ${TABLE}.breakdown_ranking ;;
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

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
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

  dimension: query_bucket {
    type: string
    sql: ${TABLE}.query_bucket ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
