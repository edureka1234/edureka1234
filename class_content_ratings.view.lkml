view: class_content_ratings {
  sql_table_name: `edureka-prod`.class_content_ratings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: bad {
    type: number
    sql: ${TABLE}.bad ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: batch_webinar_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.batch_webinar_id ;;
  }

  dimension_group: class {
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
    sql: ${TABLE}.class_date ;;
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

  dimension: excellent {
    type: number
    sql: ${TABLE}.excellent ;;
  }

  dimension: good {
    type: number
    sql: ${TABLE}.good ;;
  }

  measure: count {
    type: count
    drill_fields: [id, batch_webinars.instructor_name, batch_webinars.id]
  }
}