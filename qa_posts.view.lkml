view: qa_posts {
  sql_table_name: edureka-prod.qa_posts ;;

  dimension: acount {
    type: number
    sql: ${TABLE}.acount ;;
  }

  dimension: amaxvote {
    type: number
    sql: ${TABLE}.amaxvote ;;
  }

  dimension: categoryid {
    type: number
    value_format_name: id
    sql: ${TABLE}.categoryid ;;
  }

  dimension: catidpath1 {
    type: number
    sql: ${TABLE}.catidpath1 ;;
  }

  dimension: catidpath2 {
    type: number
    sql: ${TABLE}.catidpath2 ;;
  }

  dimension: catidpath3 {
    type: number
    sql: ${TABLE}.catidpath3 ;;
  }

  dimension: closedbyid {
    type: number
    value_format_name: id
    sql: ${TABLE}.closedbyid ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

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

  dimension: createip {
    type: number
    sql: ${TABLE}.createip ;;
  }

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: downvotes {
    type: number
    sql: ${TABLE}.downvotes ;;
  }

  dimension: flagcount {
    type: yesno
    sql: ${TABLE}.flagcount ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: freshdesk_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.freshdesk_id ;;
  }

  dimension: hotness {
    type: number
    sql: ${TABLE}.hotness ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension: lastip {
    type: number
    sql: ${TABLE}.lastip ;;
  }

  dimension: lastuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.lastuserid ;;
  }

  dimension: lastviewip {
    type: number
    sql: ${TABLE}.lastviewip ;;
  }

  dimension: moved {
    type: yesno
    sql: ${TABLE}.moved ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: netvotes {
    type: number
    sql: ${TABLE}.netvotes ;;
  }

  dimension: notify {
    type: string
    sql: ${TABLE}.notify ;;
  }

  dimension: parentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parentid ;;
  }

  dimension: postid {
    type: number
    value_format_name: id
    sql: ${TABLE}.postid ;;
  }

  dimension: selchildid {
    type: number
    value_format_name: id
    sql: ${TABLE}.selchildid ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: ticket_feedback {
    type: yesno
    sql: ${TABLE}.ticket_feedback ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: under_process {
    type: string
    sql: ${TABLE}.under_process ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  dimension: updatetype {
    type: string
    sql: ${TABLE}.updatetype ;;
  }

  dimension: upvotes {
    type: number
    sql: ${TABLE}.upvotes ;;
  }

  dimension: user_course_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_course_module_id ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      user_course_modules.id,
      freshdesk.id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
