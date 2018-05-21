view: course_prices {
  sql_table_name: `edureka-prod`.course_prices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: currency_id {
    type: yesno
    sql: ${TABLE}.currency_id ;;
  }

  dimension: device_type {
    type: yesno
    sql: ${TABLE}.device_type ;;
  }

  dimension: is_calculative {
    type: yesno
    sql: ${TABLE}.is_calculative ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}