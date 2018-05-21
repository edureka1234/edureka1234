view: batch_webinar_ticket_counts {
  sql_table_name: `edureka-prod`.batch_webinar_ticket_counts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: p12 {
    type: number
    sql: ${TABLE}.p12 ;;
  }

  dimension: p12_closed {
    type: number
    sql: ${TABLE}.p12_closed ;;
  }

  dimension: p12_other {
    type: number
    sql: ${TABLE}.p12_other ;;
  }

  dimension: p12_pending {
    type: number
    sql: ${TABLE}.p12_pending ;;
  }

  dimension: p12_woc {
    type: number
    sql: ${TABLE}.p12_woc ;;
  }

  dimension: p34 {
    type: number
    sql: ${TABLE}.p34 ;;
  }

  dimension: p34_closed {
    type: number
    sql: ${TABLE}.p34_closed ;;
  }

  dimension: p34_other {
    type: number
    sql: ${TABLE}.p34_other ;;
  }

  dimension: p34_pending {
    type: number
    sql: ${TABLE}.p34_pending ;;
  }

  dimension: p34_woc {
    type: number
    sql: ${TABLE}.p34_woc ;;
  }

  dimension: pother {
    type: number
    sql: ${TABLE}.pother ;;
  }

  dimension: pother_closed {
    type: number
    sql: ${TABLE}.pother_closed ;;
  }

  dimension: pother_other {
    type: number
    sql: ${TABLE}.pother_other ;;
  }

  dimension: pother_pending {
    type: number
    sql: ${TABLE}.pother_pending ;;
  }

  dimension: pother_woc {
    type: number
    sql: ${TABLE}.pother_woc ;;
  }

  dimension: total_tickets {
    type: number
    sql: ${TABLE}.total_tickets ;;
  }

  dimension_group: webinar {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.webinar_date ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}