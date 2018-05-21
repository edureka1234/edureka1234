view: instructor_acquisition_params {
  sql_table_name: `edureka-prod`.instructor_acquisition_params ;;

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

  dimension: parent {
    type: number
    sql: ${TABLE}.parent ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: use_in_after_mock_class {
    type: yesno
    sql: ${TABLE}.use_in_after_mock_class ;;
  }

  dimension: use_in_live_class {
    type: yesno
    sql: ${TABLE}.use_in_live_class ;;
  }

  dimension: use_in_mock_class {
    type: yesno
    sql: ${TABLE}.use_in_mock_class ;;
  }

  dimension: use_in_pre_class {
    type: yesno
    sql: ${TABLE}.use_in_pre_class ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}