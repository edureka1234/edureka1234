view: lms_content_mappings {
  sql_table_name: edureka-prod.lms_content_mappings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: content_repo_id {
    type: number
    sql: ${TABLE}.content_repo_id ;;
  }

  dimension: foreign_id {
    type: number
    sql: ${TABLE}.foreign_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
