view: edureka_crm_potentials {
  sql_table_name: edureka-prod.edureka_crm_potentials ;;

  dimension: is_phone_lead {
    type: string
    sql: ${TABLE}.is_phone_lead ;;
  }

  dimension: is_webinar_lead {
    type: string
    sql: ${TABLE}.is_webinar_lead ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: potential_owner {
    type: string
    sql: ${TABLE}.potential_owner ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension_group: webinar {
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
    sql: ${TABLE}.webinar_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
