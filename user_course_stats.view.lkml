view: user_course_stats {
  sql_table_name: `edureka-prod`.user_course_stats ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignment {
    type: number
    sql: ${TABLE}.assignment ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: grade {
    type: number
    sql: ${TABLE}.grade ;;
  }

  dimension: lot_id {
    type: number
    sql: ${TABLE}.lot_id ;;
  }

  dimension: project {
    type: number
    sql: ${TABLE}.project ;;
  }

  dimension: quiz {
    type: number
    sql: ${TABLE}.quiz ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: video {
    type: number
    sql: ${TABLE}.video ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.image_name,
      users.last_name,
      users.first_name,
      courses.id,
      courses.short_name
    ]
  }
}