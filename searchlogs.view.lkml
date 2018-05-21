view: searchlogs {
  sql_table_name: `edureka-prod`.searchlogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: search_params {
    type: string
    sql: ${TABLE}.search_params ;;
  }

  dimension: searchtext {
    type: string
    sql: ${TABLE}.searchtext ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: userip {
    type: string
    sql: ${TABLE}.userip ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.image_name, users.last_name, users.first_name]
  }
}