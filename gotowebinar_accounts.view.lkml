view: gotowebinar_accounts {
  sql_table_name: edureka-prod.gotowebinar_accounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }

  dimension: developer_key {
    type: string
    sql: ${TABLE}.developer_key ;;
  }

  dimension_group: expiry {
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
    sql: ${TABLE}.expiry_date ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: oauth_token {
    type: string
    sql: ${TABLE}.oauth_token ;;
  }

  dimension: organizer_email {
    type: string
    sql: ${TABLE}.organizer_email ;;
  }

  dimension: organizer_key {
    type: string
    sql: ${TABLE}.organizer_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
