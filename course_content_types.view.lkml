view: course_content_types {
  sql_table_name: edureka-prod.course_content_types ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clp_version {
    type: string
    sql: ${TABLE}.clp_version ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: course_section_slug {
    type: string
    sql: ${TABLE}.course_section_slug ;;
  }

  dimension: course_slug {
    type: string
    sql: ${TABLE}.course_slug ;;
  }

  dimension: course_version {
    type: string
    sql: ${TABLE}.course_version ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: expandable {
    type: number
    sql: ${TABLE}.expandable ;;
  }

  dimension: icon {
    type: string
    sql: ${TABLE}.icon ;;
  }

  dimension: json_content {
    type: string
    sql: ${TABLE}.json_content ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: section_title {
    type: string
    sql: ${TABLE}.section_title ;;
  }

  dimension: section_type {
    type: string
    sql: ${TABLE}.section_type ;;
  }

  dimension: visibility {
    type: number
    sql: ${TABLE}.visibility ;;
  }

  dimension: visibility_order {
    type: yesno
    sql: ${TABLE}.visibility_order ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}
