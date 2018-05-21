view: modules {
  sql_table_name: edureka-prod.modules ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: certificate_linked {
    type: yesno
    sql: ${TABLE}.certificate_linked ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
  }

  dimension: is_assignment {
    type: number
    sql: ${TABLE}.is_assignment ;;
  }

  dimension: is_mandatory {
    type: yesno
    sql: ${TABLE}.is_mandatory ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
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

  dimension: module_category_id {
    type: number
    sql: ${TABLE}.module_category_id ;;
  }

  dimension: module_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.module_type_id ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: reattempt {
    type: number
    sql: ${TABLE}.`re-attempt` ;;
  }

  dimension: self_id {
    type: number
    sql: ${TABLE}.self_id ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: text_content {
    type: string
    sql: ${TABLE}.text_content ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.unit_id ;;
  }

  dimension: wistia_download {
    type: string
    sql: ${TABLE}.wistia_download ;;
  }

  dimension: wistia_media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.wistia_media_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      file_name,
      wistia_media.project_name,
      wistia_media.id,
      wistia_media.name,
      module_types.name,
      module_types.id,
      instructors.id,
      instructors.last_name,
      instructors.first_name,
      units.display_name,
      units.id,
      activities_new.count,
      assesment_questions.count,
      notes.count,
      quiz_answers.count,
      quiz_timings.count,
      teaching_hours.count,
      user_course_modules.count
    ]
  }
}
