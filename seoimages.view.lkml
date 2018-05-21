view: seoimages {
  sql_table_name: `edureka-prod`.seoimages ;;

  dimension: caption {
    type: string
    sql: ${TABLE}.caption ;;
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

  dimension: is_sitemap {
    type: yesno
    sql: ${TABLE}.is_sitemap ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.loc ;;
  }

  dimension: seopage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.seopage_id ;;
  }

  dimension: sitename {
    type: string
    sql: ${TABLE}.sitename ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [sitename, seopages.id]
  }
}