view: lead_event_info_exts {
  sql_table_name: edureka-prod.lead_event_info_exts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cd_event {
    type: string
    sql: ${TABLE}.cd_event ;;
  }

  dimension: cd_metainfo {
    type: string
    sql: ${TABLE}.cd_metainfo ;;
  }

  dimension: ch_event {
    type: string
    sql: ${TABLE}.ch_event ;;
  }

  dimension: ch_metainfo {
    type: string
    sql: ${TABLE}.ch_metainfo ;;
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

  dimension: hs_event {
    type: string
    sql: ${TABLE}.hs_event ;;
  }

  dimension: hs_metainfo {
    type: string
    sql: ${TABLE}.hs_metainfo ;;
  }

  dimension: lead_event_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.lead_event_info_id ;;
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

  dimension: utm_metainfo {
    type: string
    sql: ${TABLE}.utm_metainfo ;;
  }

  dimension: vs_event {
    type: string
    sql: ${TABLE}.vs_event ;;
  }

  dimension: vs_metainfo {
    type: string
    sql: ${TABLE}.vs_metainfo ;;
  }

  measure: count {
    type: count
    drill_fields: [id, lead_event_infos.id]
  }
}
