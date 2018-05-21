view: attachments {
  sql_table_name: ``edureka-prod``.attachments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assets {
    type: string
    sql: ${TABLE}.assets ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dir {
    type: string
    sql: ${TABLE}.dir ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: filesize {
    type: number
    sql: ${TABLE}.filesize ;;
  }

  dimension: foreign_id {
    type: number
    sql: ${TABLE}.foreign_id ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: mimetype {
    type: string
    sql: ${TABLE}.mimetype ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: source_code {
    type: number
    sql: ${TABLE}.source_code ;;
  }

  dimension: thumb {
    type: yesno
    sql: ${TABLE}.thumb ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filename]
  }
}