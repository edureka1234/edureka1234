view: utm_params {
  sql_table_name: edureka-prod.utm_params ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaign_adgroup_id {
    type: string
    sql: ${TABLE}.campaign_adgroup_id ;;
  }

  dimension: campaign_banner {
    type: string
    sql: ${TABLE}.campaign_banner ;;
  }

  dimension: campaign_content {
    type: string
    sql: ${TABLE}.campaign_content ;;
  }

  dimension: campaign_date {
    type: string
    sql: ${TABLE}.campaign_date ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_medium {
    type: string
    sql: ${TABLE}.campaign_medium ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_network {
    type: string
    sql: ${TABLE}.campaign_network ;;
  }

  dimension: campaign_sitetarget {
    type: string
    sql: ${TABLE}.campaign_sitetarget ;;
  }

  dimension: campaign_source {
    type: string
    sql: ${TABLE}.campaign_source ;;
  }

  dimension: campaign_term {
    type: string
    sql: ${TABLE}.campaign_term ;;
  }

  dimension: campaign_time {
    type: string
    sql: ${TABLE}.campaign_time ;;
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

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: web_url {
    type: string
    sql: ${TABLE}.web_url ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      campaign_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
