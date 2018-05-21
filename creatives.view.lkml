view: creatives {
  sql_table_name: `edureka-prod`.creatives ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: creative_size {
    type: number
    sql: ${TABLE}.creative_size ;;
  }

  dimension: folder_path {
    type: string
    sql: ${TABLE}.folder_path ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, creative_name, creative_texts.count, offer_creatives.count]
  }
}