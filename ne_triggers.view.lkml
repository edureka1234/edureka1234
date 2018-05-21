view: ne_triggers {
  sql_table_name: edureka-prod.ne_triggers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: default_template {
    type: string
    sql: ${TABLE}.default_template ;;
  }

  dimension: expire_after {
    type: string
    sql: ${TABLE}.expire_after ;;
  }

  dimension: function_name {
    type: string
    sql: ${TABLE}.function_name ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: unique_name {
    type: string
    sql: ${TABLE}.unique_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, unique_name, function_name, name]
  }
}
