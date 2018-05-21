view: content_performance {
  sql_table_name: youtube_report.content_performance ;;

  dimension: average_view_duration {
    type: number
    sql: ${TABLE}.average_view_duration ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: dislikes {
    type: number
    sql: ${TABLE}.dislikes ;;
  }

  dimension: entrances_blog {
    type: number
    sql: ${TABLE}.entrances_blog ;;
  }

  dimension: entrances_blog_clp {
    type: number
    sql: ${TABLE}.entrances_blog_clp ;;
  }

  dimension: entrances_clp {
    type: number
    sql: ${TABLE}.entrances_clp ;;
  }

  dimension: entrances_clp_clp {
    type: number
    sql: ${TABLE}.entrances_clp_clp ;;
  }

  dimension: entrances_gcp {
    type: number
    sql: ${TABLE}.entrances_GCP ;;
  }

  dimension: entrances_homepage {
    type: number
    sql: ${TABLE}.entrances_homepage ;;
  }

  dimension: entrances_homepage_clp {
    type: number
    sql: ${TABLE}.entrances_homepage_clp ;;
  }

  dimension: entrances_organic {
    type: number
    sql: ${TABLE}.entrances_organic ;;
  }

  dimension: entrances_youtube_clp {
    type: number
    sql: ${TABLE}.entrances_youtube_clp ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: pageviews_blog {
    type: number
    sql: ${TABLE}.pageviews_blog ;;
  }

  dimension: pageviews_blog_clp {
    type: number
    sql: ${TABLE}.pageviews_blog_clp ;;
  }

  dimension: pageviews_clp {
    type: number
    sql: ${TABLE}.pageviews_clp ;;
  }

  dimension: pageviews_clp_clp {
    type: number
    sql: ${TABLE}.pageviews_clp_clp ;;
  }

  dimension: pageviews_gcp {
    type: number
    sql: ${TABLE}.pageviews_GCP ;;
  }

  dimension: pageviews_homepage {
    type: number
    sql: ${TABLE}.pageviews_homepage ;;
  }

  dimension: pageviews_homepage_clp {
    type: number
    sql: ${TABLE}.pageviews_homepage_clp ;;
  }

  dimension: pageviews_organic {
    type: number
    sql: ${TABLE}.pageviews_organic ;;
  }

  dimension: pageviews_youtube_clp {
    type: number
    sql: ${TABLE}.pageviews_youtube_clp ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: subscribers_gained {
    type: number
    sql: ${TABLE}.subscribers_gained ;;
  }

  dimension: subscribers_lost {
    type: number
    sql: ${TABLE}.subscribers_lost ;;
  }

  dimension: u_pageviews_blog {
    type: number
    sql: ${TABLE}.u_pageviews_blog ;;
  }

  dimension: u_pageviews_blog_clp {
    type: number
    sql: ${TABLE}.u_pageviews_blog_clp ;;
  }

  dimension: u_pageviews_clp {
    type: number
    sql: ${TABLE}.u_pageviews_clp ;;
  }

  dimension: u_pageviews_clp_clp {
    type: number
    sql: ${TABLE}.u_pageviews_clp_clp ;;
  }

  dimension: u_pageviews_gcp {
    type: number
    sql: ${TABLE}.u_pageviews_GCP ;;
  }

  dimension: u_pageviews_homepage {
    type: number
    sql: ${TABLE}.u_pageviews_homepage ;;
  }

  dimension: u_pageviews_homepage_clp {
    type: number
    sql: ${TABLE}.u_pageviews_homepage_clp ;;
  }

  dimension: u_pageviews_organic {
    type: number
    sql: ${TABLE}.u_pageviews_organic ;;
  }

  dimension: u_pageviews_youtube_clp {
    type: number
    sql: ${TABLE}.u_pageviews_youtube_clp ;;
  }

  dimension: users_blog {
    type: number
    sql: ${TABLE}.users_blog ;;
  }

  dimension: users_blog_clp {
    type: number
    sql: ${TABLE}.users_blog_clp ;;
  }

  dimension: users_clp {
    type: number
    sql: ${TABLE}.users_clp ;;
  }

  dimension: users_clp_clp {
    type: number
    sql: ${TABLE}.users_clp_clp ;;
  }

  dimension: users_gcp {
    type: number
    sql: ${TABLE}.users_GCP ;;
  }

  dimension: users_homepage {
    type: number
    sql: ${TABLE}.users_homepage ;;
  }

  dimension: users_homepage_clp {
    type: number
    sql: ${TABLE}.users_homepage_clp ;;
  }

  dimension: users_organic {
    type: number
    sql: ${TABLE}.users_organic ;;
  }

  dimension: users_youtube_clp {
    type: number
    sql: ${TABLE}.users_youtube_clp ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time {
    type: number
    sql: ${TABLE}.watch_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
