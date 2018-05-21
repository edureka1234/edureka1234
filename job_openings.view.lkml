view: job_openings {
  sql_table_name: edureka-prod.job_openings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
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

  dimension: experience {
    type: string
    sql: ${TABLE}.experience ;;
  }

  dimension: job_team_name_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.job_team_name_id ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
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

  dimension: position_type {
    type: string
    sql: ${TABLE}.position_type ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  dimension: visibility {
    type: number
    sql: ${TABLE}.visibility ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      team_name,
      job_team_names.team_name,
      job_team_names.id,
      applications.count,
      job_details.count
    ]
  }
}
