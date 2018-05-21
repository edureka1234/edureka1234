view: user_review_counts {
  sql_table_name: edureka-prod.user_review_counts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: helpful {
    type: yesno
    sql: ${TABLE}.helpful ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
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
      id,
      reviews.id,
      reviews.reviewer_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
