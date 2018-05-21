view: course_qa_categories {
  sql_table_name: `edureka-prod`.course_qa_categories ;;

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

  dimension: qa_category_id {
    type: number
    sql: ${TABLE}.qa_category_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}