view: user_courses {
  sql_table_name: edureka-prod.user_courses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: certificate_course_display_name {
    type: string
    sql: ${TABLE}.certificate_course_display_name ;;
  }

  dimension_group: certificate {
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
    sql: ${TABLE}.certificate_date ;;
  }

  dimension: certificate_fname {
    type: string
    sql: ${TABLE}.certificate_fname ;;
  }

  dimension: certificate_hash {
    type: string
    sql: ${TABLE}.certificate_hash ;;
  }

  dimension: certificate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.certificate_id ;;
  }

  dimension: certificate_lname {
    type: string
    sql: ${TABLE}.certificate_lname ;;
  }

  dimension: corp_id {
    type: number
    sql: ${TABLE}.corp_id ;;
  }

  dimension: corp_license_consume {
    type: yesno
    sql: ${TABLE}.corp_license_consume ;;
  }

  dimension: corp_license_id {
    type: number
    sql: ${TABLE}.corp_license_id ;;
  }

  dimension: corp_usercourse_library {
    type: number
    sql: ${TABLE}.corp_usercourse_library ;;
  }

  dimension: course_group {
    type: number
    sql: ${TABLE}.course_group ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: course_improvement {
    type: string
    sql: ${TABLE}.course_improvement ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: deletion_reason {
    type: string
    sql: ${TABLE}.deletion_reason ;;
  }

  dimension_group: ends {
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
    sql: ${TABLE}.ends_on ;;
  }

  dimension: feedback_submitted_date {
    type: string
    sql: ${TABLE}.feedback_submitted_date ;;
  }

  dimension: feedback_submitted_from {
    type: string
    sql: ${TABLE}.feedback_submitted_from ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_paid ;;
  }

  dimension: is_valueble {
    type: string
    sql: ${TABLE}.is_valueble ;;
  }

  dimension: is_version_changed {
    type: number
    sql: ${TABLE}.is_version_changed ;;
  }

  dimension: join_url {
    type: string
    sql: ${TABLE}.join_url ;;
  }

  dimension: last_module_watched {
    type: number
    sql: ${TABLE}.last_module_watched ;;
  }

  dimension: last_unit_watched {
    type: number
    sql: ${TABLE}.last_unit_watched ;;
  }

  dimension: leastliked {
    type: string
    sql: ${TABLE}.leastliked ;;
  }

  dimension: li_cert_verified {
    type: yesno
    sql: ${TABLE}.li_cert_verified ;;
  }

  dimension_group: licert_publish {
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
    sql: ${TABLE}.licert_publish_date ;;
  }

  dimension: linkdnurl {
    type: string
    sql: ${TABLE}.linkdnurl ;;
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

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension: mostliked {
    type: string
    sql: ${TABLE}.mostliked ;;
  }

  dimension: othercourse {
    type: string
    sql: ${TABLE}.othercourse ;;
  }

  dimension: rating {
    type: yesno
    sql: ${TABLE}.rating ;;
  }

  dimension: review_mail {
    type: number
    sql: ${TABLE}.review_mail ;;
  }

  dimension: self_paid {
    type: yesno
    sql: ${TABLE}.self_paid ;;
  }

  dimension_group: started_from {
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
    sql: ${TABLE}.started_from ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: valid_for_corp {
    type: number
    sql: ${TABLE}.valid_for_corp ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      certificate_course_display_name,
      certificate_lname,
      certificate_fname,
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      certificates.id,
      extended_user_courses.count,
      reviews.count,
      user_batch_logs.count
    ]
  }
}
