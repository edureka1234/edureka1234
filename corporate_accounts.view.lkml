view: corporate_accounts {
  sql_table_name: `edureka-prod`.corporate_accounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: analytics {
    type: yesno
    sql: ${TABLE}.analytics ;;
  }

  dimension: cc_emails {
    type: string
    sql: ${TABLE}.cc_emails ;;
  }

  dimension: corp_bg_img {
    type: string
    sql: ${TABLE}.corp_bg_img ;;
  }

  dimension: corp_logo {
    type: string
    sql: ${TABLE}.corp_logo ;;
  }

  dimension: corporate_properties {
    type: string
    sql: ${TABLE}.corporate_properties ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: email_domains {
    type: string
    sql: ${TABLE}.email_domains ;;
  }

  dimension: enroll_template {
    type: string
    sql: ${TABLE}.enroll_template ;;
  }

  dimension: gen_cert_after_last_class {
    type: yesno
    sql: ${TABLE}.gen_cert_after_last_class ;;
  }

  dimension: gen_cert_automatically {
    type: yesno
    sql: ${TABLE}.gen_cert_automatically ;;
  }

  dimension: is_assignment_mandatory {
    type: yesno
    sql: ${TABLE}.is_assignment_mandatory ;;
  }

  dimension: is_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_paid ;;
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

  dimension: payment_widget_text {
    type: string
    sql: ${TABLE}.payment_widget_text ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, domain_name, offers.count]
  }
}