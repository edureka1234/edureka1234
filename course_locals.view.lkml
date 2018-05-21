view: course_locals {
  sql_table_name: edureka-prod.course_locals ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: blurb {
    type: string
    sql: ${TABLE}.blurb ;;
  }

  dimension: city_id {
    type: number
    sql: ${TABLE}.city_id ;;
  }

  dimension: content_repository_id {
    type: number
    sql: ${TABLE}.content_repository_id ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: course_meta {
    type: string
    sql: ${TABLE}.course_meta ;;
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

  dimension: why_this_course {
    type: string
    sql: ${TABLE}.why_this_course ;;
  }

  dimension: why_this_course_2 {
    type: string
    sql: ${TABLE}.why_this_course_2 ;;
  }

  dimension: why_this_course_3 {
    type: string
    sql: ${TABLE}.why_this_course_3 ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
