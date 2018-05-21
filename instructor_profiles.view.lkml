view: instructor_profiles {
  sql_table_name: edureka-prod.instructor_profiles ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_status {
    type: number
    sql: ${TABLE}.activity_status ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: contract_agreement {
    type: string
    sql: ${TABLE}.contract_agreement ;;
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

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: instructor_cv {
    type: string
    sql: ${TABLE}.instructor_cv ;;
  }

  dimension: invoices_raised {
    type: number
    sql: ${TABLE}.invoices_raised ;;
  }

  dimension: is_full_payment {
    type: yesno
    sql: ${TABLE}.is_full_payment ;;
  }

  dimension: leaving_comments {
    type: string
    sql: ${TABLE}.leaving_comments ;;
  }

  dimension: linkedin_profile_link {
    type: string
    sql: ${TABLE}.linkedin_profile_link ;;
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

  dimension: money_earned {
    type: number
    sql: ${TABLE}.money_earned ;;
  }

  dimension: multiple_courses {
    type: string
    sql: ${TABLE}.multiple_courses ;;
  }

  dimension: pay_for_extra_class {
    type: yesno
    sql: ${TABLE}.pay_for_extra_class ;;
  }

  dimension: servicenumber {
    type: string
    sql: ${TABLE}.servicenumber ;;
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
      display_name,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name
    ]
  }
}
