view: sales_users {
  sql_table_name: edureka-prod.sales_users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: business_units {
    type: string
    sql: ${TABLE}.business_units ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: is_team_lead {
    type: number
    sql: ${TABLE}.is_team_lead ;;
  }

  dimension: max_leads {
    type: yesno
    sql: ${TABLE}.max_leads ;;
  }

  dimension: min_leads {
    type: yesno
    sql: ${TABLE}.min_leads ;;
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

  dimension: modified_by {
    type: number
    sql: ${TABLE}.modified_by ;;
  }

  dimension: monthly_lead_target {
    type: number
    sql: ${TABLE}.monthly_lead_target ;;
  }

  dimension: monthly_sales_target {
    type: number
    sql: ${TABLE}.monthly_sales_target ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: team_lead {
    type: number
    sql: ${TABLE}.team_lead ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      sales_users_timings.count
    ]
  }
}
