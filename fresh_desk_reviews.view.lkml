view: fresh_desk_reviews {
  sql_table_name: `edureka-prod`.fresh_desk_reviews ;;

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

  dimension: customer_feedback {
    type: string
    sql: ${TABLE}.customer_feedback ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_rating {
    type: number
    sql: ${TABLE}.customer_rating ;;
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

  dimension: ticket_desc {
    type: string
    sql: ${TABLE}.ticket_desc ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_name]
  }
}