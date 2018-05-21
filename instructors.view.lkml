view: instructors {
  sql_table_name: `edureka-prod`.instructors ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: about_you {
    type: string
    sql: ${TABLE}.about_you ;;
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

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: phone_no {
    type: string
    sql: ${TABLE}.phone_no ;;
  }

  dimension: to_teach {
    type: string
    sql: ${TABLE}.to_teach ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      batch_feedback_summaries.count,
      instructor_acquisitions.count,
      instructor_acquisition_meta.count,
      instructor_acquisition_onboard_data.count,
      instructor_acquisition_ongoing_reviews.count,
      instructor_bulk_uploads.count,
      instructor_course_revisions.count,
      instructor_summary.count,
      invoices.count,
      modules.count,
      modules_bkp_20180321.count,
      user_course_feedbacks.count
    ]
  }
}