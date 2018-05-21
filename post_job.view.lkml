view: post_job {
  sql_table_name: edureka-prod.post_job ;;

  dimension: c_p_email {
    type: string
    sql: ${TABLE}.c_p_email ;;
  }

  dimension: c_p_first_name {
    type: string
    sql: ${TABLE}.c_p_first_name ;;
  }

  dimension: c_p_last_name {
    type: string
    sql: ${TABLE}.c_p_last_name ;;
  }

  dimension: c_p_mobile {
    type: string
    sql: ${TABLE}.c_p_mobile ;;
  }

  dimension: candidate_profile {
    type: string
    sql: ${TABLE}.candidate_profile ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_url {
    type: string
    sql: ${TABLE}.company_url ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension_group: date_of_posting {
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
    sql: ${TABLE}.date_of_posting ;;
  }

  dimension: functional_area {
    type: string
    sql: ${TABLE}.functional_area ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: job_description {
    type: string
    sql: ${TABLE}.job_description ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: max_salary {
    type: string
    sql: ${TABLE}.max_salary ;;
  }

  dimension: min_salary {
    type: string
    sql: ${TABLE}.min_salary ;;
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

  dimension: no_vacancy {
    type: string
    sql: ${TABLE}.no_vacancy ;;
  }

  dimension: work_exp_range {
    type: string
    sql: ${TABLE}.work_exp_range ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, c_p_first_name, c_p_last_name]
  }
}
