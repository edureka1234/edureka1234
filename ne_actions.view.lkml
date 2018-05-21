view: ne_actions {
  sql_table_name: edureka-prod.ne_actions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_name {
    type: string
    sql: ${TABLE}.action_name ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  measure: count {
    type: count
    drill_fields: [id, action_name]
  }
}
