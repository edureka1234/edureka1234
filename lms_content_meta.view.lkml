view: lms_content_meta {
  sql_table_name: `edureka-prod`.lms_content_meta ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignment_count {
    type: number
    sql: ${TABLE}.assignment_count ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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

  dimension: draft_id {
    type: number
    sql: ${TABLE}.draft_id ;;
  }

  dimension: edited_by {
    type: string
    sql: ${TABLE}.edited_by ;;
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

  dimension: presentation_count {
    type: number
    sql: ${TABLE}.presentation_count ;;
  }

  dimension: project_count {
    type: number
    sql: ${TABLE}.project_count ;;
  }

  dimension: quiz_count {
    type: number
    sql: ${TABLE}.quiz_count ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: video_count {
    type: number
    sql: ${TABLE}.video_count ;;
  }

  dimension: visibility {
    type: yesno
    sql: ${TABLE}.visibility ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}