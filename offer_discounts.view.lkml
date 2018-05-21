view: offer_discounts {
  sql_table_name: `edureka-prod`.offer_discounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: currency {
    type: number
    sql: ${TABLE}.currency ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: discount_type {
    type: number
    sql: ${TABLE}.discount_type ;;
  }

  dimension: extra_discount {
    type: number
    sql: ${TABLE}.extra_discount ;;
  }

  dimension: extra_discount_type {
    type: number
    sql: ${TABLE}.extra_discount_type ;;
  }

  dimension: offer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, offers.id]
  }
}