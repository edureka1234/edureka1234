view: questions {
  sql_table_name: `edureka-prod`.questions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: negative_weightage {
    type: number
    sql: ${TABLE}.negative_weightage ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: questions_type {
    type: string
    sql: ${TABLE}.questions_type ;;
  }

  dimension: solution {
    type: string
    sql: ${TABLE}.solution ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: summary_id {
    type: number
    sql: ${TABLE}.summary_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: weightage {
    type: number
    sql: ${TABLE}.weightage ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      groups.name,
      groups.id,
      courses.id,
      courses.short_name,
      answers.count,
      assesment_questions.count,
      qa_contentwords.count,
      qa_sharedevents.count,
      qa_userevents.count,
      quiz_answers.count
    ]
  }
}