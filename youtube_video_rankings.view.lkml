view: youtube_video_rankings {
  sql_table_name: `edureka-prod`.youtube_video_rankings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: foreign_id {
    type: number
    sql: ${TABLE}.foreign_id ;;
  }

  dimension: general_ranking {
    type: number
    sql: ${TABLE}.general_ranking ;;
  }

  dimension: general_videoid {
    type: string
    sql: ${TABLE}.general_videoid ;;
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

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: video_ranking {
    type: number
    sql: ${TABLE}.video_ranking ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}