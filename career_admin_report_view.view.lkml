view: career_admin_report_view {
  sql_table_name: edureka-prod.career_admin_report_view ;;

  dimension: analytics_title {
    type: string
    sql: ${TABLE}.analytics_title ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: certificate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.certificate_id ;;
  }

  dimension: cid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: conend {
    type: yesno
    sql: ${TABLE}.conend ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.last_activity_time ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
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

  dimension: technology {
    type: string
    sql: ${TABLE}.technology ;;
  }

  dimension: ucid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ucid ;;
  }

  dimension: uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.uid ;;
  }

  measure: count {
    type: count
    drill_fields: [course_name, first_name, last_name, certificates.id]
  }
}
