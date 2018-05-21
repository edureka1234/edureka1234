view: cs_responses {
  sql_table_name: youtube_report.cs_responses ;;

  dimension: can_relocate {
    type: string
    sql: ${TABLE}.can_relocate ;;
  }

  dimension: certification_details {
    type: string
    sql: ${TABLE}.certification_details ;;
  }

  dimension: consent {
    type: string
    sql: ${TABLE}.consent ;;
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

  dimension: current_city {
    type: string
    sql: ${TABLE}.current_city ;;
  }

  dimension: current_country {
    type: string
    sql: ${TABLE}.current_country ;;
  }

  dimension: current_ctc {
    type: string
    sql: ${TABLE}.current_ctc ;;
  }

  dimension: current_employer {
    type: string
    sql: ${TABLE}.current_employer ;;
  }

  dimension: current_industry {
    type: string
    sql: ${TABLE}.current_industry ;;
  }

  dimension: current_joblevel {
    type: string
    sql: ${TABLE}.current_joblevel ;;
  }

  dimension: current_role {
    type: string
    sql: ${TABLE}.current_role ;;
  }

  dimension: education_details {
    type: string
    sql: ${TABLE}.education_details ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employment_type {
    type: string
    sql: ${TABLE}.employment_type ;;
  }

  dimension: expected_ctc {
    type: string
    sql: ${TABLE}.expected_ctc ;;
  }

  dimension: experience_range {
    type: string
    sql: ${TABLE}.experience_range ;;
  }

  dimension: interested_jobtype {
    type: string
    sql: ${TABLE}.interested_jobtype ;;
  }

  dimension: is_interested {
    type: string
    sql: ${TABLE}.is_interested ;;
  }

  dimension: linkedin_link {
    type: string
    sql: ${TABLE}.linkedin_link ;;
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

  dimension: preferred_city {
    type: string
    sql: ${TABLE}.preferred_city ;;
  }

  dimension: preferred_country {
    type: string
    sql: ${TABLE}.preferred_country ;;
  }

  dimension: resume_link {
    type: string
    sql: ${TABLE}.resume_link ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
