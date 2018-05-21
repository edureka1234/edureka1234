view: support_agents {
  sql_table_name: `edureka-prod`.support_agents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: team_type {
    type: number
    sql: ${TABLE}.team_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}