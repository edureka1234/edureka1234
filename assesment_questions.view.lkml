view: assesment_questions {
  sql_table_name: edureka-prod.assesment_questions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.module_id ;;
  }

  dimension: negative_weightage {
    type: number
    sql: ${TABLE}.negative_weightage ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.question_id ;;
  }

  dimension: summary_id {
    type: number
    sql: ${TABLE}.summary_id ;;
  }

  dimension: weightage {
    type: number
    sql: ${TABLE}.weightage ;;
  }

  measure: count {
    type: count
    drill_fields: [id, questions.id, questions.name, modules.id, modules.file_name]
  }
}
