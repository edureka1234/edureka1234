view: customer_records {
  sql_table_name: edureka-prod.customer_records ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: batch_end {
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
    sql: ${TABLE}.batch_end_on ;;
  }

  dimension_group: batch_starts {
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
    sql: ${TABLE}.batch_starts_on ;;
  }

  dimension: batch_title {
    type: string
    sql: ${TABLE}.batch_title ;;
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

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: days_to_closure {
    type: string
    sql: ${TABLE}.days_to_closure ;;
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

  dimension_group: lead {
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
    sql: ${TABLE}.lead_date ;;
  }

  dimension: lead_utm_campaign {
    type: string
    sql: ${TABLE}.lead_utm_campaign ;;
  }

  dimension: lead_utm_src {
    type: string
    sql: ${TABLE}.lead_utm_src ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
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

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: payment_amount {
    type: string
    sql: ${TABLE}.payment_amount ;;
  }

  dimension: payment_gateway {
    type: string
    sql: ${TABLE}.payment_gateway ;;
  }

  dimension_group: sales {
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
    sql: ${TABLE}.sales_date ;;
  }

  dimension: sales_utm_campaign {
    type: string
    sql: ${TABLE}.sales_utm_campaign ;;
  }

  dimension: sales_utm_src {
    type: string
    sql: ${TABLE}.sales_utm_src ;;
  }

  dimension: students_count {
    type: number
    sql: ${TABLE}.students_count ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      course_name,
      order.order_id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name
    ]
  }
}
