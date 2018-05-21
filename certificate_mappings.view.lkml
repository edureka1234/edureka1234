view: certificate_mappings {
  sql_table_name: edureka-prod.certificate_mappings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: corp_id {
    type: number
    sql: ${TABLE}.corp_id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
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

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: template {
    type: string
    sql: ${TABLE}.template ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name]
  }
}
