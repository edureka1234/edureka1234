view: slots {
  sql_table_name: `edureka-prod`.slots ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: slot_name {
    type: string
    sql: ${TABLE}.slot_name ;;
  }

  dimension: slot_size {
    type: number
    sql: ${TABLE}.slot_size ;;
  }

  measure: count {
    type: count
    drill_fields: [id, slot_name, offer_creatives.count]
  }
}