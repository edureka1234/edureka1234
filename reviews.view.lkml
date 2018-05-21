view: reviews {
  sql_table_name: edureka-prod.reviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_id {
    type: number
    sql: ${TABLE}.city_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
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

  dimension: no_count {
    type: number
    sql: ${TABLE}.no_count ;;
  }

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: picture {
    type: string
    sql: ${TABLE}.picture ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: review_desc {
    type: string
    sql: ${TABLE}.review_desc ;;
  }

  dimension: review_order {
    type: string
    sql: ${TABLE}.review_order ;;
  }

  dimension: review_rating {
    type: string
    sql: ${TABLE}.review_rating ;;
  }

  dimension: review_title {
    type: string
    sql: ${TABLE}.review_title ;;
  }

  dimension: review_type {
    type: yesno
    sql: ${TABLE}.review_type ;;
  }

  dimension: reviewer_email {
    type: string
    sql: ${TABLE}.reviewer_email ;;
  }

  dimension: reviewer_linkedin_profile {
    type: string
    sql: ${TABLE}.reviewer_linkedin_profile ;;
  }

  dimension: reviewer_name {
    type: string
    sql: ${TABLE}.reviewer_name ;;
  }

  dimension: reviewer_profession {
    type: string
    sql: ${TABLE}.reviewer_profession ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: user_course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_course_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: video_id {
    type: number
    sql: ${TABLE}.video_id ;;
  }

  dimension: visible {
    type: number
    sql: ${TABLE}.visible ;;
  }

  dimension: yes_count {
    type: number
    sql: ${TABLE}.yes_count ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      reviewer_name,
      user_courses.certificate_course_display_name,
      user_courses.certificate_lname,
      user_courses.certificate_fname,
      user_courses.id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name,
      review_course_maps.count,
      user_review_counts.count
    ]
  }
}
