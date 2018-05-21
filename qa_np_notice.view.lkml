view: qa_np_notice {
  sql_table_name: `edureka-prod`.qa_np_notice ;;

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

  dimension: eventid {
    type: number
    value_format_name: id
    sql: ${TABLE}.eventid ;;
  }

  dimension: flags {
    type: yesno
    sql: ${TABLE}.flags ;;
  }

  dimension: noticeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.noticeid ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [users.id, users.image_name, users.last_name, users.first_name]
  }
}