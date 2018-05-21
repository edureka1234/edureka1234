view: qa_widgets {
  sql_table_name: edureka-prod.qa_widgets ;;

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: widgetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.widgetid ;;
  }

  measure: count {
    type: count
    drill_fields: [widgets.id]
  }
}
