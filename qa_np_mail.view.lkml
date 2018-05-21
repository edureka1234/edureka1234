view: qa_np_mail {
  sql_table_name: edureka-prod.qa_np_mail ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
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

  dimension: errorinfo {
    type: string
    sql: ${TABLE}.errorinfo ;;
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

  dimension: fromemail {
    type: string
    sql: ${TABLE}.fromemail ;;
  }

  dimension: fromname {
    type: string
    sql: ${TABLE}.fromname ;;
  }

  dimension: html {
    type: yesno
    sql: ${TABLE}.html ;;
  }

  dimension: htmlbody {
    type: string
    sql: ${TABLE}.htmlbody ;;
  }

  dimension: mailid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mailid ;;
  }

  dimension: retrycount {
    type: yesno
    sql: ${TABLE}.retrycount ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: toemail {
    type: string
    sql: ${TABLE}.toemail ;;
  }

  dimension: toname {
    type: string
    sql: ${TABLE}.toname ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      toname,
      fromname,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
