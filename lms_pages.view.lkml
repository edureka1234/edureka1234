view: lms_pages {
  sql_table_name: `edureka-prod`.lms_pages ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: controller {
    type: string
    sql: ${TABLE}.controller ;;
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

  dimension: css_files {
    type: string
    sql: ${TABLE}.css_files ;;
  }

  dimension: js_files {
    type: string
    sql: ${TABLE}.js_files ;;
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

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: plugin {
    type: string
    sql: ${TABLE}.plugin ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, widgets_lms_pages.count]
  }
}