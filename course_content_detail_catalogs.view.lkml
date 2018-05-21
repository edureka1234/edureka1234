view: course_content_detail_catalogs {
  sql_table_name: edureka-prod.course_content_detail_catalogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: course_section_id {
    type: number
    sql: ${TABLE}.course_section_id ;;
  }

  dimension: expanded {
    type: number
    sql: ${TABLE}.expanded ;;
  }

  dimension: icon {
    type: string
    sql: ${TABLE}.icon ;;
  }

  dimension: is_subtitle_visible {
    type: number
    sql: ${TABLE}.is_subtitle_visible ;;
  }

  dimension: subsection_content {
    type: string
    sql: ${TABLE}.subsection_content ;;
  }

  dimension: subsection_content_text {
    type: string
    sql: ${TABLE}.subsection_content_text ;;
  }

  dimension: subsection_title {
    type: string
    sql: ${TABLE}.subsection_title ;;
  }

  dimension: visibility_order {
    type: number
    sql: ${TABLE}.visibility_order ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
