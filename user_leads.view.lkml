view: user_leads {
  sql_table_name: edureka-prod.user_leads ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_comments {
    type: string
    sql: ${TABLE}.additional_comments ;;
  }

  dimension: affiliate_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.affiliate_id ;;
  }

  dimension: chat_visitid {
    type: number
    value_format_name: id
    sql: ${TABLE}.chat_visitid ;;
  }

  dimension: clp_version {
    type: string
    sql: ${TABLE}.clp_version ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: lead_assisted_by {
    type: string
    sql: ${TABLE}.lead_assisted_by ;;
  }

  dimension: lead_reported {
    type: yesno
    sql: ${TABLE}.lead_reported ;;
  }

  dimension: liked {
    type: string
    sql: ${TABLE}.liked ;;
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

  dimension: offer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: trialcount {
    type: number
    sql: ${TABLE}.trialcount ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ip {
    type: string
    sql: ${TABLE}.user_ip ;;
  }

  dimension: website_action {
    type: string
    sql: ${TABLE}.website_action ;;
  }

  dimension: zoho_potential_id {
    type: string
    sql: ${TABLE}.zoho_potential_id ;;
  }

  dimension: zoholead_id {
    type: string
    sql: ${TABLE}.zoholead_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name,
      affiliates.last_name,
      affiliates.first_name,
      affiliates.id,
      offers.id,
      user_lead_mappings.count
    ]
  }
}
