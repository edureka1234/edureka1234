view: templates {
  sql_table_name: edureka-prod.templates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: lms_banner_content {
    type: string
    sql: ${TABLE}.lms_banner_content ;;
  }

  dimension: lms_banner_title {
    type: string
    sql: ${TABLE}.lms_banner_title ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
