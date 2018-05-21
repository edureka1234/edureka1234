view: ambassadors {
  sql_table_name: `edureka-prod`.ambassadors ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amb_unique_code {
    type: string
    sql: ${TABLE}.amb_unique_code ;;
  }

  dimension_group: ambassador {
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
    sql: ${TABLE}.ambassador_date ;;
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

  dimension: customer_count {
    type: number
    sql: ${TABLE}.customer_count ;;
  }

  dimension: edureka_cash {
    type: number
    sql: ${TABLE}.edureka_cash ;;
  }

  dimension: edureka_cash_in_use {
    type: number
    sql: ${TABLE}.edureka_cash_in_use ;;
  }

  dimension: email_url {
    type: string
    sql: ${TABLE}.email_url ;;
  }

  dimension: free_course_count {
    type: number
    sql: ${TABLE}.free_course_count ;;
  }

  dimension: freecourse_in_use {
    type: number
    sql: ${TABLE}.freecourse_in_use ;;
  }

  dimension_group: last_credit_update {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_credit_update ;;
  }

  dimension_group: last_reminder_mail {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_reminder_mail ;;
  }

  dimension: level_id {
    type: number
    sql: ${TABLE}.level_id ;;
  }

  dimension: mobile_url {
    type: string
    sql: ${TABLE}.mobile_url ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: new_user_count {
    type: number
    sql: ${TABLE}.new_user_count ;;
  }

  dimension: referrer_id {
    type: number
    sql: ${TABLE}.referrer_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: welcomemail {
    type: yesno
    sql: ${TABLE}.welcomemail ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.image_name, users.last_name, users.first_name]
  }
}
