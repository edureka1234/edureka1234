view: seo_processed_table2 {
  sql_table_name: youtube_report.seo_processed_table2 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: ctr_max_change_rise {
    type: number
    sql: ${TABLE}.ctr_max_change_rise ;;
  }

  dimension_group: date {
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

  dimension: imp_max_change_drop {
    type: number
    sql: ${TABLE}.imp_max_change_drop ;;
  }

  dimension: imp_max_change_rise {
    type: number
    sql: ${TABLE}.imp_max_change_rise ;;
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

  dimension: pos_max_change_rise {
    type: number
    sql: ${TABLE}.pos_max_change_rise ;;
  }

  dimension: pos_min_change_rise {
    type: number
    sql: ${TABLE}.pos_min_change_rise ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
