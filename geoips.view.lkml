view: geoips {
  sql_table_name: edureka-prod.geoips ;;

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: continent_code {
    type: string
    sql: ${TABLE}.continent_code ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
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

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: is_anon_proxy {
    type: yesno
    sql: ${TABLE}.is_anon_proxy ;;
  }

  dimension: is_satellite {
    type: yesno
    sql: ${TABLE}.is_satellite ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: metro_code {
    type: string
    sql: ${TABLE}.metro_code ;;
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

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.region_name ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, region_name, city_name]
  }
}
