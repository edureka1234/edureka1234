view: ne_trigger_channels {
  sql_table_name: `edureka-prod`.ne_trigger_channels ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
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

  dimension: mobile_target {
    type: string
    sql: ${TABLE}.mobile_target ;;
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

  dimension: outputtype {
    type: string
    sql: ${TABLE}.outputtype ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: template {
    type: string
    sql: ${TABLE}.template ;;
  }

  dimension: trigger_id {
    type: number
    sql: ${TABLE}.trigger_id ;;
  }

  dimension: url_target {
    type: string
    sql: ${TABLE}.url_target ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}