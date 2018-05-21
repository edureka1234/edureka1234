view: content_repositories_bkp_20180321 {
  sql_table_name: `edureka-prod`.content_repositories_bkp_20180321 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assets {
    type: string
    sql: ${TABLE}.assets ;;
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

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: is_sitemap {
    type: yesno
    sql: ${TABLE}.is_sitemap ;;
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

  dimension: push_blog {
    type: yesno
    sql: ${TABLE}.push_blog ;;
  }

  dimension: source_code {
    type: number
    sql: ${TABLE}.source_code ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: thumb {
    type: yesno
    sql: ${TABLE}.thumb ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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