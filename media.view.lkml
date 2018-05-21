view: media {
  sql_table_name: edureka-prod.media ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: heading {
    type: string
    sql: ${TABLE}.heading ;;
  }

  dimension: image_name {
    type: string
    sql: ${TABLE}.image_name ;;
  }

  dimension: ispopular {
    type: yesno
    sql: ${TABLE}.ispopular ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.media_url ;;
  }

  dimension_group: published {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.published_date ;;
  }

  dimension: publisher_name {
    type: string
    sql: ${TABLE}.publisher_name ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  measure: count {
    type: count
    drill_fields: [id, publisher_name, image_name, wistia_media.count, wistia_media_new.count]
  }
}
