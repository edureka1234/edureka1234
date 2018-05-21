view: seo_processed_table_drop {
  sql_table_name: youtube_report.seo_processed_table_drop ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_clicks_14days {
    type: number
    sql: ${TABLE}.base_clicks_14days ;;
  }

  dimension: base_clicks_28days {
    type: number
    sql: ${TABLE}.base_clicks_28days ;;
  }

  dimension: base_clicks_7days {
    type: number
    sql: ${TABLE}.base_clicks_7days ;;
  }

  dimension: base_ctr_14days {
    type: number
    sql: ${TABLE}.base_ctr_14days ;;
  }

  dimension: base_ctr_28days {
    type: number
    sql: ${TABLE}.base_ctr_28days ;;
  }

  dimension: base_ctr_7days {
    type: number
    sql: ${TABLE}.base_ctr_7days ;;
  }

  dimension: base_impressions_14days {
    type: number
    sql: ${TABLE}.base_impressions_14days ;;
  }

  dimension: base_impressions_28days {
    type: number
    sql: ${TABLE}.base_impressions_28days ;;
  }

  dimension: base_impressions_7days {
    type: number
    sql: ${TABLE}.base_impressions_7days ;;
  }

  dimension: base_ranking_14days {
    type: number
    sql: ${TABLE}.base_ranking_14days ;;
  }

  dimension: base_ranking_28days {
    type: number
    sql: ${TABLE}.base_ranking_28days ;;
  }

  dimension: base_ranking_7days {
    type: number
    sql: ${TABLE}.base_ranking_7days ;;
  }

  dimension: changein {
    type: string
    sql: ${TABLE}.changein ;;
  }

  dimension: combination {
    type: string
    sql: ${TABLE}.combination ;;
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

  dimension: ctr_14days_abs {
    type: number
    sql: ${TABLE}.ctr_14days_abs ;;
  }

  dimension: ctr_14days_perc {
    type: number
    sql: ${TABLE}.ctr_14days_perc ;;
  }

  dimension: ctr_28days_abs {
    type: number
    sql: ${TABLE}.ctr_28days_abs ;;
  }

  dimension: ctr_28days_perc {
    type: number
    sql: ${TABLE}.ctr_28days_perc ;;
  }

  dimension: ctr_7days_abs {
    type: number
    sql: ${TABLE}.ctr_7days_abs ;;
  }

  dimension: ctr_7days_perc {
    type: number
    sql: ${TABLE}.ctr_7days_perc ;;
  }

  dimension: ctr_max_change_drop {
    type: number
    sql: ${TABLE}.ctr_max_change_drop ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.date ;;
  }

  dimension: imp_14days_abs {
    type: number
    sql: ${TABLE}.imp_14days_abs ;;
  }

  dimension: imp_14days_perc {
    type: number
    sql: ${TABLE}.imp_14days_perc ;;
  }

  dimension: imp_28days_abs {
    type: number
    sql: ${TABLE}.imp_28days_abs ;;
  }

  dimension: imp_28days_perc {
    type: number
    sql: ${TABLE}.imp_28days_perc ;;
  }

  dimension: imp_7days_abs {
    type: number
    sql: ${TABLE}.imp_7days_abs ;;
  }

  dimension: imp_7days_perc {
    type: number
    sql: ${TABLE}.imp_7days_perc ;;
  }

  dimension: imp_avg_change_drop {
    type: number
    sql: ${TABLE}.imp_avg_change_drop ;;
  }

  dimension: imp_max_change_drop {
    type: number
    sql: ${TABLE}.imp_max_change_drop ;;
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

  dimension: pos_14days_abs {
    type: number
    sql: ${TABLE}.pos_14days_abs ;;
  }

  dimension: pos_14days_perc {
    type: number
    sql: ${TABLE}.pos_14days_perc ;;
  }

  dimension: pos_28days_abs {
    type: number
    sql: ${TABLE}.pos_28days_abs ;;
  }

  dimension: pos_28days_perc {
    type: number
    sql: ${TABLE}.pos_28days_perc ;;
  }

  dimension: pos_7days_abs {
    type: number
    sql: ${TABLE}.pos_7days_abs ;;
  }

  dimension: pos_7days_perc {
    type: number
    sql: ${TABLE}.pos_7days_perc ;;
  }

  dimension: pos_avg_change_drop {
    type: number
    sql: ${TABLE}.pos_avg_change_drop ;;
  }

  dimension: pos_max_change_drop {
    type: number
    sql: ${TABLE}.pos_max_change_drop ;;
  }

  dimension: significance_impressions {
    type: number
    sql: ${TABLE}.significance_impressions ;;
  }

  dimension: significance_pos {
    type: number
    sql: ${TABLE}.significance_pos ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
