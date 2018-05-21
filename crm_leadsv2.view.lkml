view: crm_leadsv2 {
  sql_table_name: youtube_report.crm_leadsv2 ;;

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channel_grouping ;;
  }

  dimension: country_group {
    type: string
    sql: ${TABLE}.country_group ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
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
    sql: ${TABLE}.created_time ;;
  }

  dimension_group: duplicate_created {
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
    sql: ${TABLE}.duplicate_created_time ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: exclusion_flag_leads {
    type: string
    sql: ${TABLE}.exclusion_flag_leads ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: secondary_source {
    type: string
    sql: ${TABLE}.secondary_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
