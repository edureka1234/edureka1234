view: batches {
  sql_table_name: edureka-prod.batches ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active_flag {
    type: yesno
    sql: ${TABLE}.active_flag ;;
  }

  dimension: batch_cost {
    type: number
    sql: ${TABLE}.batch_cost ;;
  }

  dimension: batch_shift_allowed {
    type: yesno
    sql: ${TABLE}.batch_shift_allowed ;;
  }

  dimension: batch_type {
    type: string
    sql: ${TABLE}.batch_type ;;
  }

  dimension: cancelled_classes {
    type: string
    sql: ${TABLE}.Cancelled_Classes ;;
  }

  dimension: corporate_id {
    type: number
    sql: ${TABLE}.corporate_id ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: days_diff {
    type: string
    sql: ${TABLE}.days_diff ;;
  }

  dimension: edited_by {
    type: string
    sql: ${TABLE}.edited_by ;;
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

  dimension: ins_join_url {
    type: string
    sql: ${TABLE}.ins_join_url ;;
  }

  dimension: is_corporate {
    type: yesno
    sql: ${TABLE}.is_corporate ;;
  }

  dimension: is_dummy {
    type: yesno
    sql: ${TABLE}.is_dummy ;;
  }

  dimension: is_instructor_confirmed {
    type: yesno
    sql: ${TABLE}.is_instructor_confirmed ;;
  }

  dimension: is_live {
    type: yesno
    sql: ${TABLE}.is_live ;;
  }

  dimension: is_new_instructor {
    type: yesno
    sql: ${TABLE}.is_new_instructor ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension_group: live {
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
    sql: ${TABLE}.live_date ;;
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

  dimension: multiple_days {
    type: number
    sql: ${TABLE}.multiple_days ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: sales_edited_by {
    type: string
    sql: ${TABLE}.sales_edited_by ;;
  }

  dimension: short_desc {
    type: string
    sql: ${TABLE}.short_desc ;;
  }

  dimension: sold_out {
    type: yesno
    sql: ${TABLE}.sold_out ;;
  }

  dimension_group: starts {
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
    sql: ${TABLE}.starts_on ;;
  }

  dimension: survey_added {
    type: yesno
    sql: ${TABLE}.survey_added ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: zz_is_us {
    type: yesno
    sql: ${TABLE}.zz_is_us ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      courses.id,
      courses.short_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      batch_feedback_summaries.count,
      batch_new_invoices.count
    ]
  }
}
