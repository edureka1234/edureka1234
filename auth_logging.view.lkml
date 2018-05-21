view: auth_logging {
  sql_table_name: ``edureka-prod``.auth_logging ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access_token {
    type: string
    sql: ${TABLE}.access_token ;;
  }

  dimension: refresh_token {
    type: string
    sql: ${TABLE}.refresh_token ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.image_name, users.last_name, users.first_name]
  }
}