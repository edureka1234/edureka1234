view: creative_texts {
  sql_table_name: edureka-prod.creative_texts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: creative_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.creative_id ;;
  }

  dimension: creative_text {
    type: string
    sql: ${TABLE}.creative_text ;;
  }

  dimension: text_tag {
    type: string
    sql: ${TABLE}.text_tag ;;
  }

  measure: count {
    type: count
    drill_fields: [id, creatives.creative_name, creatives.id, offer_creative_texts.count]
  }
}
