view: demo_classes {
  sql_table_name: edureka-prod.demo_classes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: business_unit {
    type: number
    sql: ${TABLE}.business_unit ;;
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

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: facebook_organic {
    type: string
    sql: ${TABLE}.facebook_organic ;;
  }

  dimension: facebook_paid {
    type: string
    sql: ${TABLE}.facebook_paid ;;
  }

  dimension: hubspot_url {
    type: string
    sql: ${TABLE}.hubspot_url ;;
  }

  dimension: instructor_email {
    type: string
    sql: ${TABLE}.instructor_email ;;
  }

  dimension: instructor_name {
    type: string
    sql: ${TABLE}.instructor_name ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
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

  dimension: sme {
    type: number
    sql: ${TABLE}.sme ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: webinar_account {
    type: number
    sql: ${TABLE}.webinar_account ;;
  }

  dimension_group: webinar {
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
    sql: ${TABLE}.webinar_date ;;
  }

  dimension: webinar_info {
    type: string
    sql: ${TABLE}.webinar_info ;;
  }

  dimension: webinar_key {
    type: number
    sql: ${TABLE}.webinar_key ;;
  }

  dimension: webinar_no {
    type: string
    sql: ${TABLE}.webinar_no ;;
  }

  dimension: webinar_type {
    type: string
    sql: ${TABLE}.webinar_type ;;
  }

  dimension: webinar_url {
    type: string
    sql: ${TABLE}.webinar_url ;;
  }

  dimension: webinar_yes {
    type: string
    sql: ${TABLE}.webinar_yes ;;
  }

  dimension: youtube_url {
    type: string
    sql: ${TABLE}.youtube_url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instructor_name, courses.id, courses.short_name]
  }
}
