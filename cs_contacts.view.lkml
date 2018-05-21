view: cs_contacts {
  sql_table_name: youtube_report.cs_contacts ;;

  dimension: batch_concluded_on {
    type: string
    sql: ${TABLE}.batch_concluded_on ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: class_attended_duration {
    type: number
    sql: ${TABLE}.class_attended_duration ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
  }

  dimension: course_assigned_on {
    type: string
    sql: ${TABLE}.course_assigned_on ;;
  }

  dimension: course_bought_on {
    type: string
    sql: ${TABLE}.course_bought_on ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: is_certified {
    type: string
    sql: ${TABLE}.is_certified ;;
  }

  dimension: last_active_date {
    type: string
    sql: ${TABLE}.last_active_date ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.modified ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: project_submitted {
    type: string
    sql: ${TABLE}.project_submitted ;;
  }

  dimension: support_tickets {
    type: number
    sql: ${TABLE}.support_tickets ;;
  }

  dimension: total_recording_duration {
    type: number
    sql: ${TABLE}.total_recording_duration ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
