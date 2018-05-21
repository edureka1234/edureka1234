view: batch_support_tickets {
  sql_table_name: edureka-prod.batch_support_tickets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: closed_ticket {
    type: number
    sql: ${TABLE}.closed_ticket ;;
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

  dimension: open_ticket {
    type: number
    sql: ${TABLE}.open_ticket ;;
  }

  dimension: pending_ticket {
    type: number
    sql: ${TABLE}.pending_ticket ;;
  }

  dimension: resolved_ticket {
    type: number
    sql: ${TABLE}.resolved_ticket ;;
  }

  dimension: total_ticket {
    type: number
    sql: ${TABLE}.total_ticket ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
