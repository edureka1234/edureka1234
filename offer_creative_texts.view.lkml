view: offer_creative_texts {
  sql_table_name: edureka-prod.offer_creative_texts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: creative_text {
    type: string
    sql: ${TABLE}.creative_text ;;
  }

  dimension: creative_text_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.creative_text_id ;;
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

  dimension: offer_creatives_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_creatives_id ;;
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
    drill_fields: [id, offer_creatives.id, creative_texts.id]
  }
}
