view: offer_children {
  sql_table_name: edureka-prod.offer_children ;;

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
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  dimension: sub_offer_id {
    type: number
    sql: ${TABLE}.sub_offer_id ;;
  }

  dimension: sub_offer_title {
    type: string
    sql: ${TABLE}.sub_offer_title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, offers.id]
  }
}
