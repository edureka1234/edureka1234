view: review_course_maps {
  sql_table_name: edureka-prod.review_course_maps ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: course_slug {
    type: string
    sql: ${TABLE}.course_slug ;;
  }

  dimension: courseid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.courseid ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, reviews.id, reviews.reviewer_name, courses.id, courses.short_name]
  }
}
