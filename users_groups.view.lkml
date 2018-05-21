view: users_groups {
  sql_table_name: edureka-prod.users_groups ;;

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      groups.name,
      groups.id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
