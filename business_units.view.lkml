view: business_units {
  sql_table_name: `edureka-prod`.business_units ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.contact_email ;;
  }

  dimension: contact_india {
    type: string
    sql: ${TABLE}.contact_india ;;
  }

  dimension: contact_us {
    type: string
    sql: ${TABLE}.contact_us ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}