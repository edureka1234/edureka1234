view: qa_sharedevents {
  sql_table_name: `edureka-prod`.qa_sharedevents ;;

  dimension: entityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.entityid ;;
  }

  dimension: entitytype {
    type: string
    sql: ${TABLE}.entitytype ;;
  }

  dimension: lastpostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.lastpostid ;;
  }

  dimension: lastuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.lastuserid ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.questionid ;;
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

  dimension: updatetype {
    type: string
    sql: ${TABLE}.updatetype ;;
  }

  measure: count {
    type: count
    drill_fields: [questions.id, questions.name]
  }
}