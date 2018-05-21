view: offer_creatives {
  sql_table_name: `edureka-prod`.offer_creatives ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: creative_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.creative_id ;;
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

  dimension: offer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  dimension: slot_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.slot_id ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      slots.slot_name,
      slots.id,
      offers.id,
      creatives.creative_name,
      creatives.id,
      offer_creative_texts.count
    ]
  }
}