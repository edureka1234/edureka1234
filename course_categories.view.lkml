view: course_categories {
  sql_table_name: `edureka-prod`.course_categories ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: category_order {
    type: number
    sql: ${TABLE}.category_order ;;
  }

  dimension: category_status {
    type: yesno
    sql: ${TABLE}.category_status ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: icon_name {
    type: string
    sql: ${TABLE}.icon_name ;;
  }

  dimension: img {
    type: string
    sql: ${TABLE}.img ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: tag_class {
    type: string
    sql: ${TABLE}.tag_class ;;
  }

  dimension: tag_line {
    type: string
    sql: ${TABLE}.tag_line ;;
  }

  measure: count {
    type: count
    drill_fields: [id, category_name, icon_name]
  }
}