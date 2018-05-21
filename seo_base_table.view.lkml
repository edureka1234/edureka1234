view: seo_base_table {
  sql_table_name: youtube_report.seo_base_table ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_internal {
    type: string
    sql: ${TABLE}.country_internal ;;
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

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: query_bucket {
    type: string
    sql: ${TABLE}.query_bucket ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
