view: qa_userpoints {
  sql_table_name: `edureka-prod`.qa_userpoints ;;

  dimension: adownvotes {
    type: number
    sql: ${TABLE}.adownvotes ;;
  }

  dimension: aposts {
    type: number
    sql: ${TABLE}.aposts ;;
  }

  dimension: aselecteds {
    type: number
    sql: ${TABLE}.aselecteds ;;
  }

  dimension: aselects {
    type: number
    sql: ${TABLE}.aselects ;;
  }

  dimension: aupvotes {
    type: number
    sql: ${TABLE}.aupvotes ;;
  }

  dimension: avoteds {
    type: number
    sql: ${TABLE}.avoteds ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}.bonus ;;
  }

  dimension: cposts {
    type: number
    sql: ${TABLE}.cposts ;;
  }

  dimension: downvoteds {
    type: number
    sql: ${TABLE}.downvoteds ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: qdownvotes {
    type: number
    sql: ${TABLE}.qdownvotes ;;
  }

  dimension: qposts {
    type: number
    sql: ${TABLE}.qposts ;;
  }

  dimension: qupvotes {
    type: number
    sql: ${TABLE}.qupvotes ;;
  }

  dimension: qvoteds {
    type: number
    sql: ${TABLE}.qvoteds ;;
  }

  dimension: upvoteds {
    type: number
    sql: ${TABLE}.upvoteds ;;
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