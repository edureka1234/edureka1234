view: applications {
  sql_table_name: ``edureka-prod``.applications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: applicant_email {
    type: string
    sql: ${TABLE}.applicant_email ;;
  }

  dimension: applicant_name {
    type: string
    sql: ${TABLE}.applicant_name ;;
  }

  dimension: applicant_phone {
    type: string
    sql: ${TABLE}.applicant_phone ;;
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

  measure: count {
    type: count
    drill_fields: [id, applicant_name, job_openings.team_name, job_openings.id]
  }
}