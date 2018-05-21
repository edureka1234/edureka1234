view: offers {
  sql_table_name: edureka-prod.offers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clubbable {
    type: yesno
    sql: ${TABLE}.clubbable ;;
  }

  dimension: corporate_accounts_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.corporate_accounts_id ;;
  }

  dimension: course_price_end {
    type: number
    sql: ${TABLE}.course_price_end ;;
  }

  dimension: course_price_start {
    type: number
    sql: ${TABLE}.course_price_start ;;
  }

  dimension: course_range_currency {
    type: number
    sql: ${TABLE}.course_range_currency ;;
  }

  dimension: course_type {
    type: number
    sql: ${TABLE}.course_type ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discount_group {
    type: number
    sql: ${TABLE}.discount_group ;;
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

  dimension: excluded_country {
    type: string
    sql: ${TABLE}.excluded_country ;;
  }

  dimension: full_usage {
    type: number
    sql: ${TABLE}.full_usage ;;
  }

  dimension: is_banner_visible {
    type: yesno
    sql: ${TABLE}.is_banner_visible ;;
  }

  dimension: is_free_allowed {
    type: yesno
    sql: ${TABLE}.isFreeAllowed ;;
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

  dimension: offer_code {
    type: string
    sql: ${TABLE}.offer_code ;;
  }

  dimension: offer_code_group {
    type: number
    sql: ${TABLE}.offer_code_group ;;
  }

  dimension: offer_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_type_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: show_finalprice {
    type: yesno
    sql: ${TABLE}.show_finalprice ;;
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

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: user_usage {
    type: number
    sql: ${TABLE}.user_usage ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      offer_types.id,
      offer_types.offer_name,
      corporate_accounts.id,
      corporate_accounts.domain_name,
      offer_children.count,
      offer_courses.count,
      offer_creatives.count,
      offer_discounts.count,
      offer_user_groups.count,
      post_orders.count,
      user_leads.count
    ]
  }
}
