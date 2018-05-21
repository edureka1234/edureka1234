view: newsletters {
  sql_table_name: `edureka-prod`.newsletters ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_subscribed {
    type: yesno
    sql: ${TABLE}.is_subscribed ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}