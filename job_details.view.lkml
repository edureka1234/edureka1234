view: job_details {
  sql_table_name: `edureka-prod`.job_details ;;

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

  dimension: job_openings_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.job_openings_id ;;
  }

  dimension: job_subtitle {
    type: string
    sql: ${TABLE}.job_subtitle ;;
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

  dimension: subtitle_details {
    type: string
    sql: ${TABLE}.subtitle_details ;;
  }

  measure: count {
    type: count
    drill_fields: [id, job_openings.team_name, job_openings.id]
  }
}