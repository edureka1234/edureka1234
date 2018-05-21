view: units {
  sql_table_name: `edureka-prod`.units ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: autogen_id {
    type: string
    sql: ${TABLE}.autogen_id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: description_new {
    type: string
    sql: ${TABLE}.description_new ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: highlight_group {
    type: string
    sql: ${TABLE}.highlight_group ;;
  }

  dimension: is_highlight {
    type: yesno
    sql: ${TABLE}.is_highlight ;;
  }

  dimension: is_installation_guide {
    type: yesno
    sql: ${TABLE}.is_installationGuide ;;
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

  dimension: paid_only {
    type: yesno
    sql: ${TABLE}.paid_only ;;
  }

  dimension: parent_unit_id {
    type: number
    sql: ${TABLE}.parent_unit_id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: trial_only {
    type: yesno
    sql: ${TABLE}.trial_only ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      display_name,
      course_units.count,
      instructor_bulk_uploads.count,
      modules.count,
      modules_bkp_20180321.count,
      notes.count,
      user_course_modules.count
    ]
  }
}