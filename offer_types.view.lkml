view: offer_types {
  sql_table_name: edureka-prod.offer_types ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: offer_description {
    type: string
    sql: ${TABLE}.offer_description ;;
  }

  dimension: offer_name {
    type: string
    sql: ${TABLE}.offer_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, offer_name, offers.count]
  }
}
