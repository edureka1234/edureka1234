view: course_section_content_details {
  sql_table_name: `edureka-prod`.course_section_content_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: course_section_content_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_section_content_id ;;
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

  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }

  dimension: display_type_id {
    type: number
    sql: ${TABLE}.display_type_id ;;
  }

  dimension: fixed_parent_id {
    type: number
    sql: ${TABLE}.fixed_parent_id ;;
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

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, course_section_contents.id]
  }
}