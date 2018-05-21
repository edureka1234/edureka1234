view: qa_pages {
  sql_table_name: `edureka-prod`.qa_pages ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: flags {
    type: yesno
    sql: ${TABLE}.flags ;;
  }

  dimension: heading {
    type: string
    sql: ${TABLE}.heading ;;
  }

  dimension: nav {
    type: string
    sql: ${TABLE}.nav ;;
  }

  dimension: pageid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pageid ;;
  }

  dimension: permit {
    type: yesno
    sql: ${TABLE}.permit ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}