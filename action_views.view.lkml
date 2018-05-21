view: action_views {
  sql_table_name: edureka-prod.action_views ;;

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

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: course_slug {
    type: string
    sql: ${TABLE}.course_slug ;;
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

  dimension: data_version {
    type: number
    sql: ${TABLE}.data_version ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }

  dimension: layout {
    type: string
    sql: ${TABLE}.layout ;;
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

  dimension: script {
    type: string
    sql: ${TABLE}.script ;;
  }

  dimension: slug_alias {
    type: string
    sql: ${TABLE}.slug_alias ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.Status ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.view ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}
