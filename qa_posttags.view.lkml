view: qa_posttags {
  sql_table_name: edureka-prod.qa_posttags ;;

  dimension_group: postcreated {
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
    sql: ${TABLE}.postcreated ;;
  }

  dimension: postid {
    type: number
    value_format_name: id
    sql: ${TABLE}.postid ;;
  }

  dimension: wordid {
    type: number
    value_format_name: id
    sql: ${TABLE}.wordid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
