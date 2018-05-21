view: qa_contentwords {
  sql_table_name: `edureka-prod`.qa_contentwords ;;

  dimension: count_q {
    type: yesno
    sql: ${TABLE}.count ;;
  }

  dimension: postid {
    type: number
    value_format_name: id
    sql: ${TABLE}.postid ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.questionid ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: wordid {
    type: number
    value_format_name: id
    sql: ${TABLE}.wordid ;;
  }

  measure: qacount {
    type: count
    drill_fields: [questions.id, questions.name]
  }
}