view: widgets_lms_pages {
  sql_table_name: `edureka-prod`.widgets_lms_pages ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: lms_page_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.lms_page_id ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: widget_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.widget_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, lms_pages.id, widgets.id]
  }
}