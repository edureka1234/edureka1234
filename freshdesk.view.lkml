view: freshdesk {
  sql_table_name: edureka-prod.freshdesk ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_url {
    type: string
    sql: ${TABLE}.base_url ;;
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

  dimension: old_course_id {
    type: number
    sql: ${TABLE}.old_course_id ;;
  }

  dimension: secret_key {
    type: string
    sql: ${TABLE}.secret_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courses.id, courses.short_name, qa_posts.count]
  }
}
