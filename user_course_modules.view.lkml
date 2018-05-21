view: user_course_modules {
  sql_table_name: edureka-prod.user_course_modules ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignment_evaluation {
    type: string
    sql: ${TABLE}.assignment_evaluation ;;
  }

  dimension: assignment_status {
    type: string
    sql: ${TABLE}.assignment_status ;;
  }

  dimension: attempts {
    type: number
    sql: ${TABLE}.attempts ;;
  }

  dimension: completion_percentage {
    type: number
    sql: ${TABLE}.completion_percentage ;;
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

  dimension: heatmap_url {
    type: string
    sql: ${TABLE}.heatmap_url ;;
  }

  dimension: marks {
    type: number
    sql: ${TABLE}.marks ;;
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

  dimension: module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.module_id ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: posted_on_fb {
    type: yesno
    sql: ${TABLE}.posted_on_fb ;;
  }

  dimension: total_marks {
    type: number
    sql: ${TABLE}.total_marks ;;
  }

  dimension: unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.unit_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: video_sec_watch {
    type: number
    sql: ${TABLE}.video_sec_watch ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      units.display_name,
      units.id,
      courses.id,
      courses.short_name,
      modules.id,
      modules.file_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      extended_user_course_modules.count,
      qa_posts.count,
      user_course_module_backups.count,
      user_course_module_details.count
    ]
  }
}
