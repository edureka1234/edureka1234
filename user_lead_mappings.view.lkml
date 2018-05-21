view: user_lead_mappings {
  sql_table_name: `edureka-prod`.user_lead_mappings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: gclid {
    type: string
    sql: ${TABLE}.gclid ;;
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

  dimension: user_lead_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_lead_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_leads.first_name, user_leads.id, user_leads.last_name]
  }
}