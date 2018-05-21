view: affiliates_commissions {
  sql_table_name: `edureka-prod`.affiliates_commissions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: affiliate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.affiliate_id ;;
  }

  dimension: blog_bonus {
    type: number
    sql: ${TABLE}.blog_bonus ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
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

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: webinar_bonus {
    type: number
    sql: ${TABLE}.webinar_bonus ;;
  }

  measure: count {
    type: count
    drill_fields: [id, affiliates.last_name, affiliates.first_name, affiliates.id]
  }
}
