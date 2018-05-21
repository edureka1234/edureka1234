view: countries_list {
  sql_table_name: `edureka-prod`.countries_list ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phonecode {
    type: number
    sql: ${TABLE}.phonecode ;;
  }

  dimension: sortname {
    type: string
    sql: ${TABLE}.sortname ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, sortname]
  }
}