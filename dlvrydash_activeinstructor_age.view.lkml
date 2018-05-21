view: dlvrydash_activeinstructor_age {
  sql_table_name: youtube_report.dlvrydash_activeinstructor_age ;;

  dimension: between_four_six_months {
    type: number
    sql: ${TABLE}.between_four_six_months ;;
  }

  dimension: between_six_months_one_year {
    type: number
    sql: ${TABLE}.between_six_months_one_year ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: greater_one_year {
    type: number
    sql: ${TABLE}.greater_one_year ;;
  }

  dimension: less_than_four_months {
    type: number
    sql: ${TABLE}.less_than_four_months ;;
  }

  dimension: no_instructor {
    type: number
    sql: ${TABLE}.no_instructor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
