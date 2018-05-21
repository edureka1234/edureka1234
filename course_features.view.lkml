view: course_features {
  sql_table_name: edureka-prod.course_features ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: course_title {
    type: string
    sql: ${TABLE}.course_title ;;
  }

  dimension: course_version {
    type: string
    sql: ${TABLE}.course_version ;;
  }

  dimension: cta_text {
    type: string
    sql: ${TABLE}.cta_text ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: link_type {
    type: number
    sql: ${TABLE}.link_type ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: section_details {
    type: string
    sql: ${TABLE}.section_details ;;
  }

  dimension: section_details_text {
    type: string
    sql: ${TABLE}.section_details_text ;;
  }

  dimension: section_title {
    type: string
    sql: ${TABLE}.section_title ;;
  }

  dimension: visibility {
    type: number
    sql: ${TABLE}.visibility ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}
