view: module_types {
  sql_table_name: edureka-prod.module_types ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order {
    type: yesno
    sql: ${TABLE}.`order` ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, instructor_bulk_uploads.count, modules.count, modules_bkp_20180321.count]
  }
}
