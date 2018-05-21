view: currency_rates {
  sql_table_name: `edureka-prod`.currency_rates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: auto_update {
    type: number
    sql: ${TABLE}.auto_update ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.currency_id ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.currency_name ;;
  }

  dimension: currency_rate {
    type: number
    sql: ${TABLE}.currency_rate ;;
  }

  measure: count {
    type: count
    drill_fields: [id, currency_name]
  }
}