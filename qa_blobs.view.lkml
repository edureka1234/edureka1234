view: qa_blobs {
  sql_table_name: `edureka-prod`.qa_blobs ;;

  dimension: blobid {
    type: number
    value_format_name: id
    sql: ${TABLE}.blobid ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: cookieid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cookieid ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: createip {
    type: number
    sql: ${TABLE}.createip ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [filename, users.id, users.image_name, users.last_name, users.first_name]
  }
}