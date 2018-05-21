view: countries {
  sql_table_name: `edureka-prod`.countries ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_code_two {
    type: string
    sql: ${TABLE}.country_code_two ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: country_name_dst {
    type: string
    sql: ${TABLE}.country_name_dst ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
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

  dimension: order {
    type: yesno
    sql: ${TABLE}.`order` ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: timezone_dst {
    type: string
    sql: ${TABLE}.timezone_dst ;;
  }

  dimension: timezone_name {
    type: string
    sql: ${TABLE}.timezone_name ;;
  }

  dimension: timezone_offset {
    type: number
    sql: ${TABLE}.timezone_offset ;;
  }

  dimension: timezone_offset_daylight {
    type: number
    sql: ${TABLE}.timezone_offset_daylight ;;
  }

  measure: count {
    type: count
    drill_fields: [id, timezone_name, country_name]
  }
}