view: aros_acos {
  sql_table_name: edureka-prod.aros_acos ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _create {
    type: string
    sql: ${TABLE}._create ;;
  }

  dimension: _delete {
    type: string
    sql: ${TABLE}._delete ;;
  }

  dimension: _read {
    type: string
    sql: ${TABLE}._read ;;
  }

  dimension: _update {
    type: string
    sql: ${TABLE}._update ;;
  }

  dimension: aco_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.aco_id ;;
  }

  dimension: aro_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.aro_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, acos.id, aros.id]
  }
}
