view: wistia_media {
  sql_table_name: `edureka-prod`.wistia_media ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assets {
    type: string
    sql: ${TABLE}.assets ;;
  }

  dimension: assets_big_url {
    type: string
    sql: ${TABLE}.assets_big_url ;;
  }

  dimension: assets_mid_url {
    type: string
    sql: ${TABLE}.assets_mid_url ;;
  }

  dimension: assets_small_url {
    type: string
    sql: ${TABLE}.assets_small_url ;;
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

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: embed_code {
    type: string
    sql: ${TABLE}.embedCode ;;
  }

  dimension: hashed_id {
    type: string
    sql: ${TABLE}.hashed_id ;;
  }

  dimension: media_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.media_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: progress {
    type: string
    sql: ${TABLE}.progress ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension: thumbnail_url {
    type: string
    sql: ${TABLE}.thumbnail_url ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      project_name,
      name,
      media.publisher_name,
      media.image_name,
      media.id,
      modules.count,
      modules_bkp_20180321.count
    ]
  }
}