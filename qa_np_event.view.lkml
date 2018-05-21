view: qa_np_event {
  sql_table_name: edureka-prod.qa_np_event ;;

  dimension: cookieid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cookieid ;;
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

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
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

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.ipaddress ;;
  }

  dimension: params {
    type: string
    sql: ${TABLE}.params ;;
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
