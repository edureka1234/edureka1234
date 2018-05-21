view: acos {
  sql_table_name: edureka-prod.acos ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: foreign_key {
    type: number
    sql: ${TABLE}.foreign_key ;;
  }

  dimension: lft {
    type: number
    sql: ${TABLE}.lft ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: rght {
    type: number
    sql: ${TABLE}.rght ;;
  }

  measure: count {
    type: count
    drill_fields: [id, aros_acos.count]
  }
}
