view: instructor_acquisitions {
  sql_table_name: edureka-prod.instructor_acquisitions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agreement_signed {
    type: yesno
    sql: ${TABLE}.agreement_signed ;;
  }

  dimension: alt_contact_no {
    type: string
    sql: ${TABLE}.alt_contact_no ;;
  }

  dimension: batch_title {
    type: string
    sql: ${TABLE}.batch_title ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: contact_no {
    type: string
    sql: ${TABLE}.contact_no ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: demo_conducted_by {
    type: string
    sql: ${TABLE}.demo_conducted_by ;;
  }

  dimension_group: demo_conducted {
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
    sql: ${TABLE}.demo_conducted_on ;;
  }

  dimension: demo_recording_url {
    type: string
    sql: ${TABLE}.demo_recording_url ;;
  }

  dimension: download_speed {
    type: number
    sql: ${TABLE}.download_speed ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: headphone_model_make {
    type: string
    sql: ${TABLE}.headphone_model_make ;;
  }

  dimension: instructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instructor_id ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.lead_source ;;
  }

  dimension: linkedin_profile_url {
    type: string
    sql: ${TABLE}.linkedin_profile_url ;;
  }

  dimension: mock_class_observation_comment {
    type: string
    sql: ${TABLE}.mock_class_observation_comment ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: other_course {
    type: string
    sql: ${TABLE}.other_course ;;
  }

  dimension: other_profile_url {
    type: string
    sql: ${TABLE}.other_profile_url ;;
  }

  dimension: personalized_actions {
    type: string
    sql: ${TABLE}.personalized_actions ;;
  }

  dimension: ping {
    type: number
    sql: ${TABLE}.ping ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: resume {
    type: string
    sql: ${TABLE}.resume ;;
  }

  dimension: skipped_peer_review {
    type: yesno
    sql: ${TABLE}.skipped_peer_review ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: upload_speed {
    type: number
    sql: ${TABLE}.upload_speed ;;
  }

  dimension: ups_model_rating {
    type: string
    sql: ${TABLE}.ups_model_rating ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      courses.id,
      courses.short_name,
      instructors.id,
      instructors.last_name,
      instructors.first_name,
      instructor_acquisition_meta.count,
      instructor_acquisition_params_value.count
    ]
  }
}
